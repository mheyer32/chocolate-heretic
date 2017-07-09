#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>

#include <exec/exec.h>
#include <dos/dos.h>
#include <graphics/gfxbase.h>
#include <devices/audio.h>

#include <proto/exec.h>
#include <proto/dos.h>
#include <proto/graphics.h>
#include <proto/mhi.h>
#include <libraries/mhi.h>


#include "z_zone.h"

#include "i_system.h"
#include "i_sound.h"
#include "m_argv.h"
#include "m_misc.h"
#include "w_wad.h"
 

#include "doomsound.h"

struct Library *MHIBase;
 
// Initialize music subsystem

#define NUMBUFS	1
#define BUFSIZE	1024*1024*4

boolean	MemOk = FALSE;
BPTR	InFile;
APTR 	MHIHandle;
ULONG	CurrentLen;
APTR	CurrentBuffer;
APTR	Buffer[NUMBUFS];
BYTE	MHISignal;
boolean isLooping;

static void I_Prisma_ShutdownMusic(void)
{
    int i = 0;
    
    if (MHIBase)
    {
        
        /********************/
        /* Free all buffers */
        /********************/
        for(i=0; i<NUMBUFS; i++) {
        	if(Buffer[i]) FreeVec(Buffer[i]);
        }
        MHIFreeDecoder(MHIHandle);
        
        FreeSignal(MHISignal);
        CloseLibrary(MHIBase);
        
        MHISignal = NULL;
        MHIHandle = NULL;
        MHIBase = NULL;
        MemOk = FALSE;
    }

}

static boolean I_Prisma_InitMusic(void)
{
    
	char	PC[5] = "-\\|/";
	ULONG Progress;

	BYTE	MHISignal;
	ULONG	MHIMask, Signals;

	ULONG ReturnCode;
	long i;

	ReturnCode=0;
	CurrentLen = 0;
	CurrentBuffer = NULL;

	if(MHIBase = OpenLibrary("LIBS:MHI/mhiprisma.library", 0)) {
		MHISignal = AllocSignal(-1);
		if(MHISignal != -1) {
			MHIMask = 1L << MHISignal;
			if(MHIHandle = MHIAllocDecoder(FindTask(NULL), MHIMask)) {
				fprintf (stderr, "Prisma Megamix Card Initialized\n");                
				fprintf (stderr, "Driver details:\n");
				fprintf (stderr, "Name:    %s\n", MHIQuery(MHIQ_DECODER_NAME));
				fprintf (stderr, "Version: %s\n", MHIQuery(MHIQ_DECODER_VERSION));
				fprintf (stderr, "Author:  %s\n", MHIQuery(MHIQ_AUTHOR));

				/************************/
				/* Allocate all buffers */
				/************************/
				MemOk=TRUE;
				for(i=0; i<NUMBUFS; i++) {
					Buffer[i] = AllocVec(BUFSIZE, MEMF_CLEAR);
					if(!Buffer[i]) MemOk=FALSE;
				}
            }
       }
    }
    else
    {
        fprintf (stderr, "Cannot open mhiprisma.library, music not available.\n" );
        MemOk = FALSE;
    }

                    
    return MemOk;
}

// Set music volume (0 - 127)

static void I_Prisma_SetMusicVolume(int volume)
{
    if (MemOk)
    {
        MHISetParam(MHIHandle,MHIP_VOLUME,volume>>3);
    }
}

// Start playing a mid

static void I_Prisma_PlaySong(void *handle, boolean looping)
{
    
    if (MemOk)
    {
        isLooping = looping;
        MHIPlay(MHIHandle);      
        
    }
    
}

static void I_Prisma_PauseSong(void)
{
    if (MemOk)
    {
        if (MHIGetStatus(MHIHandle) != MHIF_PAUSED)
        {
            MHIPause(MHIHandle);
        }
    }
}

static void I_Prisma_ResumeSong(void)
{
    if (MemOk)
    {
        if (MHIGetStatus(MHIHandle) == MHIF_PAUSED)
        {
            MHIPlay(MHIHandle);
        }
    }   
}

static void I_Prisma_StopSong(void)
{
    if (MemOk)
    {
        MHIStop(MHIHandle);
    	Close(InFile);
    }
}

static void I_Prisma_UnRegisterSong(void *handle)
{
    
    
    int i = 0;
 		
    if (MemOk)
    {         				
        MHIStop(MHIHandle);          
                
    }
    
}
extern char *oggSongName;

static void *I_Prisma_RegisterSong(void *data, int len)
{
    char oggName[256];
    int i = 0;
    BOOL	Done;
    isLooping = false;
    
    sprintf(oggName,"music/%s.ogg",oggSongName);

    
    if (MemOk)
    {
        if(InFile=Open((const char*)oggName, MODE_OLDFILE)) {

        Done=FALSE;
             
     
            for(i=0; i<NUMBUFS; i++) {
            	if(CurrentLen = Read(InFile, Buffer[i], BUFSIZE)) {
            		MHIQueueBuffer(MHIHandle, Buffer[i], CurrentLen);
            		if(CurrentLen != BUFSIZE) Done=TRUE;
            	}
            }
            
            if (Done)
            {
                Close(InFile);
                InFile = NULL;
            }

        
        }
    }
  
    return (void *)Buffer;
}


static void I_Prisma_PollMusic(void)
{
    if (isLooping)
    {                        
        /* Reload and queue all empty buffers */
	 
		if(CurrentBuffer = MHIGetEmpty(MHIHandle)) {		 
            MHIQueueBuffer(MHIHandle, Buffer[0], CurrentLen);			 			 
		}
	 
		/* Restart if needed */
		if(MHIGetStatus(MHIHandle) == MHIF_OUT_OF_DATA) MHIPlay(MHIHandle);
    }
    
}

// Is the song playing?
static boolean I_Prisma_MusicIsPlaying(void)
{
    return (MHIGetStatus(MHIHandle) == MHIF_PLAYING);
}

static snddevice_t music_amiga_devices[] =
{
    SNDDEVICE_PRISMA,
};

music_module_t music_prisma_module =
{
    music_amiga_devices,
    arrlen(music_amiga_devices),
    I_Prisma_InitMusic,
    I_Prisma_ShutdownMusic,
    I_Prisma_SetMusicVolume,
    I_Prisma_PauseSong,
    I_Prisma_ResumeSong,
    I_Prisma_RegisterSong,
    I_Prisma_UnRegisterSong,
    I_Prisma_PlaySong,
    I_Prisma_StopSong,
    I_Prisma_MusicIsPlaying,
    I_Prisma_PollMusic,
};

