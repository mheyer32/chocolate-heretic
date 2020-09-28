# Project: Heretic
# Compiler: m68k-Amiga-OS3
# Compiler Type: MingW 3
# Makefile created by wxDev-C++ 6.10.2 on 08/07/17 20:39
THIS_DIR := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))
BINDIR ?= bin
DEBUG ?= 0

CPP       = m68k-amigaos-g++
CC        = m68k-amigaos-gcc
WINDRES   = windres.exe
OBJ       = amiga_m68k/d_event.o amiga_m68k/d_iwad.o amiga_m68k/i_endoom.o amiga_m68k/i_joystick.o amiga_m68k/i_main.o amiga_m68k/i_scale.o amiga_m68k/i_system.o amiga_m68k/i_timer.o amiga_m68k/i_video.o amiga_m68k/icon.o amiga_m68k/m_argv.o amiga_m68k/m_bbox.o amiga_m68k/m_cheat.o amiga_m68k/m_config.o amiga_m68k/m_controls.o amiga_m68k/m_fixed.o amiga_m68k/m_misc.o amiga_m68k/md5.o amiga_m68k/memio.o amiga_m68k/mus2mid.o amiga_m68k/net_common.o amiga_m68k/net_io.o amiga_m68k/net_loop.o amiga_m68k/net_packet.o amiga_m68k/net_query.o amiga_m68k/net_structrw.o amiga_m68k/tables.o amiga_m68k/v_video.o amiga_m68k/w_checksum.o amiga_m68k/w_file.o amiga_m68k/w_file_stdc.o amiga_m68k/w_main.o amiga_m68k/w_merge.o amiga_m68k/w_wad.o amiga_m68k/z_zone.o amiga_m68k/net_sdl.o amiga_m68k/d_mode.o amiga_m68k/i_amigasound.o amiga_m68k/am_map.o amiga_m68k/ct_chat.o amiga_m68k/d_main.o amiga_m68k/d_net.o amiga_m68k/f_finale.o amiga_m68k/g_game.o amiga_m68k/in_lude.o amiga_m68k/info.o amiga_m68k/m_random.o amiga_m68k/mn_menu.o amiga_m68k/p_ceilng.o amiga_m68k/p_doors.o amiga_m68k/p_enemy.o amiga_m68k/p_floor.o amiga_m68k/p_inter.o amiga_m68k/p_lights.o amiga_m68k/p_map.o amiga_m68k/p_maputl.o amiga_m68k/p_mobj.o amiga_m68k/p_plats.o amiga_m68k/p_pspr.o amiga_m68k/p_setup.o amiga_m68k/p_sight.o amiga_m68k/p_spec.o amiga_m68k/p_switch.o amiga_m68k/p_telept.o amiga_m68k/p_tick.o amiga_m68k/p_user.o amiga_m68k/r_bsp.o amiga_m68k/r_data.o amiga_m68k/r_draw.o amiga_m68k/r_main.o amiga_m68k/r_plane.o amiga_m68k/r_segs.o amiga_m68k/r_things.o amiga_m68k/s_sound.o amiga_m68k/sb_bar.o amiga_m68k/sounds.o amiga_m68k/i_sound.o amiga_m68k/i_prismamusic.o amiga_m68k/i_camdmusic.o \
			c2p/m_fixedamiga.o
LINKOBJ   = amiga_m68k/d_event.o amiga_m68k/d_iwad.o amiga_m68k/i_endoom.o amiga_m68k/i_joystick.o amiga_m68k/i_main.o amiga_m68k/i_scale.o amiga_m68k/i_system.o amiga_m68k/i_timer.o amiga_m68k/i_video.o amiga_m68k/icon.o amiga_m68k/m_argv.o amiga_m68k/m_bbox.o amiga_m68k/m_cheat.o amiga_m68k/m_config.o amiga_m68k/m_controls.o amiga_m68k/m_fixed.o amiga_m68k/m_misc.o amiga_m68k/md5.o amiga_m68k/memio.o amiga_m68k/mus2mid.o amiga_m68k/net_common.o amiga_m68k/net_io.o amiga_m68k/net_loop.o amiga_m68k/net_packet.o amiga_m68k/net_query.o amiga_m68k/net_structrw.o amiga_m68k/tables.o amiga_m68k/v_video.o amiga_m68k/w_checksum.o amiga_m68k/w_file.o amiga_m68k/w_file_stdc.o amiga_m68k/w_main.o amiga_m68k/w_merge.o amiga_m68k/w_wad.o amiga_m68k/z_zone.o amiga_m68k/net_sdl.o amiga_m68k/d_mode.o amiga_m68k/i_amigasound.o amiga_m68k/am_map.o amiga_m68k/ct_chat.o amiga_m68k/d_main.o amiga_m68k/d_net.o amiga_m68k/f_finale.o amiga_m68k/g_game.o amiga_m68k/in_lude.o amiga_m68k/info.o amiga_m68k/m_random.o amiga_m68k/mn_menu.o amiga_m68k/p_ceilng.o amiga_m68k/p_doors.o amiga_m68k/p_enemy.o amiga_m68k/p_floor.o amiga_m68k/p_inter.o amiga_m68k/p_lights.o amiga_m68k/p_map.o amiga_m68k/p_maputl.o amiga_m68k/p_mobj.o amiga_m68k/p_plats.o amiga_m68k/p_pspr.o amiga_m68k/p_setup.o amiga_m68k/p_sight.o amiga_m68k/p_spec.o amiga_m68k/p_switch.o amiga_m68k/p_telept.o amiga_m68k/p_tick.o amiga_m68k/p_user.o amiga_m68k/r_bsp.o amiga_m68k/r_data.o amiga_m68k/r_draw.o amiga_m68k/r_main.o amiga_m68k/r_plane.o amiga_m68k/r_segs.o amiga_m68k/r_things.o amiga_m68k/s_sound.o amiga_m68k/sb_bar.o amiga_m68k/sounds.o amiga_m68k/i_sound.o amiga_m68k/i_prismamusic.o amiga_m68k/i_camdmusic.o \
			c2p/c2p1x1_8_c5_bm_040.o c2p/m_mmu.o c2p/m_fixedamiga.o
LIBS      = -noixemul -lm
INCS      = -I./ -I"heretic"
CXXINCS   = -I./ -I"heretic"

BIN       = ./heretic/Heretic.exe
DEFINES   =  -DAMIGA
CXXFLAGS  = $(CXXINCS) $(DEFINES) -m68030 -fomit-frame-pointer -noixemul -fexpensive-optimizations -O3
CFLAGS    = $(INCS) $(DEFINES) -m68030 -fomit-frame-pointer -noixemul -fexpensive-optimizations -O3
GPROF     = gprof.exe
RM        = rm -f
LINK      = m68k-amigaos-gcc
ASM       = vasmm68k_mot
ASMFLAGS  = -Fhunk -phxass -nosym -ldots -m68030 -linedebug
STRIP     = m68k-amigaos-strip

.PHONY: all all-before all-after clean clean-custom
all: all-before $(BIN) all-after

clean: clean-custom
	$(RM) $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(LINK) $(LINKOBJ) -o $@ $(LIBS)
	$(STRIP) --strip-all $@ -o $(BINDIR)/$@

c2p/m_fixedamiga.o : c2p/m_fixedamiga.asm $(GLOBALDEPS)
	$(ASM) $(ASMFLAGS) -o $@ $^

amiga_m68k/d_event.o: $(GLOBALDEPS) d_event.c d_event.h doomtype.h
	$(CC) -c d_event.c -o amiga_m68k/d_event.o $(CFLAGS)

amiga_m68k/d_iwad.o: $(GLOBALDEPS) d_iwad.c deh_str.h doomfeatures.h doomkeys.h d_iwad.h d_mode.h doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h m_argv.h doomtype.h m_config.h m_misc.h doomtype.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c d_iwad.c -o amiga_m68k/d_iwad.o $(CFLAGS)

amiga_m68k/i_endoom.o: $(GLOBALDEPS) i_endoom.c doomtype.h i_video.h doomtype.h
	$(CC) -c i_endoom.c -o amiga_m68k/i_endoom.o $(CFLAGS)

amiga_m68k/i_joystick.o: $(GLOBALDEPS) i_joystick.c doomtype.h d_event.h doomtype.h i_joystick.h m_config.h
	$(CC) -c i_joystick.c -o amiga_m68k/i_joystick.o $(CFLAGS)

amiga_m68k/i_main.o: $(GLOBALDEPS) i_main.c config.h doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h m_argv.h doomtype.h m_fixed.h
	$(CC) -c i_main.c -o amiga_m68k/i_main.o $(CFLAGS)

amiga_m68k/i_scale.o: $(GLOBALDEPS) i_scale.c doomtype.h i_video.h doomtype.h m_argv.h doomtype.h z_zone.h
	$(CC) -c i_scale.c -o amiga_m68k/i_scale.o $(CFLAGS)

amiga_m68k/i_system.o: $(GLOBALDEPS) i_system.c config.h deh_str.h doomfeatures.h doomtype.h m_argv.h doomtype.h m_config.h m_misc.h doomtype.h i_joystick.h i_sound.h doomtype.h i_timer.h i_video.h doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c i_system.c -o amiga_m68k/i_system.o $(CFLAGS)

amiga_m68k/i_timer.o: $(GLOBALDEPS) i_timer.c i_timer.h
	$(CC) -c i_timer.c -o amiga_m68k/i_timer.o $(CFLAGS)

amiga_m68k/i_video.o: $(GLOBALDEPS) i_video.c icon.c config.h deh_str.h doomfeatures.h doomtype.h doomkeys.h i_joystick.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_swap.h i_timer.h i_video.h doomtype.h i_scale.h doomtype.h m_argv.h doomtype.h m_config.h tables.h doomtype.h m_fixed.h v_video.h doomtype.h v_patch.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h amiga_mmu.h
	$(CC) -c i_video.c -o amiga_m68k/i_video.o $(CFLAGS)

amiga_m68k/icon.o: $(GLOBALDEPS) icon.c
	$(CC) -c icon.c -o amiga_m68k/icon.o $(CFLAGS)

amiga_m68k/m_argv.o: $(GLOBALDEPS) m_argv.c doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h m_misc.h doomtype.h
	$(CC) -c m_argv.c -o amiga_m68k/m_argv.o $(CFLAGS)

amiga_m68k/m_bbox.o: $(GLOBALDEPS) m_bbox.c m_bbox.h m_fixed.h
	$(CC) -c m_bbox.c -o amiga_m68k/m_bbox.o $(CFLAGS)

amiga_m68k/m_cheat.o: $(GLOBALDEPS) m_cheat.c doomtype.h m_cheat.h
	$(CC) -c m_cheat.c -o amiga_m68k/m_cheat.o $(CFLAGS)

amiga_m68k/m_config.o: $(GLOBALDEPS) m_config.c config.h doomtype.h doomkeys.h doomfeatures.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h m_argv.h doomtype.h m_misc.h doomtype.h z_zone.h
	$(CC) -c m_config.c -o amiga_m68k/m_config.o $(CFLAGS)

amiga_m68k/m_controls.o: $(GLOBALDEPS) m_controls.c doomtype.h doomkeys.h m_config.h
	$(CC) -c m_controls.c -o amiga_m68k/m_controls.o $(CFLAGS)

amiga_m68k/m_fixed.o: $(GLOBALDEPS) m_fixed.c doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h m_fixed.h
	$(CC) -c m_fixed.c -o amiga_m68k/m_fixed.o $(CFLAGS)

amiga_m68k/m_misc.o: $(GLOBALDEPS) m_misc.c doomtype.h deh_str.h doomfeatures.h i_swap.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_video.h doomtype.h m_misc.h doomtype.h v_video.h doomtype.h v_patch.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c m_misc.c -o amiga_m68k/m_misc.o $(CFLAGS)

amiga_m68k/md5.o: $(GLOBALDEPS) md5.c doomtype.h i_swap.h md5.h doomtype.h
	$(CC) -c md5.c -o amiga_m68k/md5.o $(CFLAGS)

amiga_m68k/memio.o: $(GLOBALDEPS) memio.c memio.h z_zone.h
	$(CC) -c memio.c -o amiga_m68k/memio.o $(CFLAGS)

amiga_m68k/mus2mid.o: $(GLOBALDEPS) mus2mid.c doomtype.h i_swap.h memio.h mus2mid.h doomtype.h memio.h
	$(CC) -c mus2mid.c -o amiga_m68k/mus2mid.o $(CFLAGS)

amiga_m68k/net_common.o: $(GLOBALDEPS) net_common.c doomtype.h d_mode.h doomtype.h i_timer.h net_common.h d_mode.h net_defs.h doomtype.h d_ticcmd.h doomtype.h net_packet.h net_defs.h net_io.h net_defs.h net_packet.h
	$(CC) -c net_common.c -o amiga_m68k/net_common.o $(CFLAGS)

amiga_m68k/net_io.o: $(GLOBALDEPS) net_io.c i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h net_defs.h doomtype.h d_ticcmd.h net_io.h net_defs.h z_zone.h
	$(CC) -c net_io.c -o amiga_m68k/net_io.o $(CFLAGS)

amiga_m68k/net_loop.o: $(GLOBALDEPS) net_loop.c doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h net_defs.h doomtype.h d_ticcmd.h net_loop.h net_defs.h net_packet.h net_defs.h
	$(CC) -c net_loop.c -o amiga_m68k/net_loop.o $(CFLAGS)

amiga_m68k/net_packet.o: $(GLOBALDEPS) net_packet.c net_packet.h net_defs.h doomtype.h d_ticcmd.h doomtype.h z_zone.h
	$(CC) -c net_packet.c -o amiga_m68k/net_packet.o $(CFLAGS)

amiga_m68k/net_query.o: $(GLOBALDEPS) net_query.c i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_timer.h net_common.h d_mode.h doomtype.h net_defs.h doomtype.h d_ticcmd.h net_packet.h net_defs.h net_defs.h net_io.h net_defs.h net_packet.h net_query.h net_defs.h net_structrw.h md5.h doomtype.h net_defs.h net_packet.h net_sdl.h net_defs.h
	$(CC) -c net_query.c -o amiga_m68k/net_query.o $(CFLAGS)

amiga_m68k/net_structrw.o: $(GLOBALDEPS) net_structrw.c doomtype.h net_packet.h net_defs.h doomtype.h d_ticcmd.h doomtype.h net_structrw.h md5.h doomtype.h net_defs.h net_packet.h
	$(CC) -c net_structrw.c -o amiga_m68k/net_structrw.o $(CFLAGS)

amiga_m68k/tables.o: $(GLOBALDEPS) tables.c tables.h doomtype.h m_fixed.h
	$(CC) -c tables.c -o amiga_m68k/tables.o $(CFLAGS)

amiga_m68k/v_video.o: $(GLOBALDEPS) v_video.c i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h doomtype.h deh_str.h doomfeatures.h i_swap.h i_video.h doomtype.h m_bbox.h m_fixed.h m_misc.h doomtype.h v_video.h doomtype.h v_patch.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c v_video.c -o amiga_m68k/v_video.o $(CFLAGS)

amiga_m68k/w_checksum.o: $(GLOBALDEPS) w_checksum.c md5.h doomtype.h w_checksum.h doomtype.h w_wad.h doomtype.h w_file.h doomtype.h
	$(CC) -c w_checksum.c -o amiga_m68k/w_checksum.o $(CFLAGS)

amiga_m68k/w_file.o: $(GLOBALDEPS) w_file.c config.h doomtype.h m_argv.h doomtype.h w_file.h doomtype.h
	$(CC) -c w_file.c -o amiga_m68k/w_file.o $(CFLAGS)

amiga_m68k/w_file_stdc.o: $(GLOBALDEPS) w_file_stdc.c m_misc.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c w_file_stdc.c -o amiga_m68k/w_file_stdc.o $(CFLAGS)

amiga_m68k/w_main.o: $(GLOBALDEPS) w_main.c doomfeatures.h d_iwad.h d_mode.h doomtype.h m_argv.h doomtype.h w_main.h w_merge.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c w_main.c -o amiga_m68k/w_main.o $(CFLAGS)

amiga_m68k/w_merge.o: $(GLOBALDEPS) w_merge.c doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h w_merge.h w_wad.h doomtype.h w_file.h doomtype.h z_zone.h
	$(CC) -c w_merge.c -o amiga_m68k/w_merge.o $(CFLAGS)

amiga_m68k/w_wad.o: $(GLOBALDEPS) w_wad.c doomtype.h i_swap.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_video.h doomtype.h m_misc.h doomtype.h z_zone.h w_wad.h doomtype.h w_file.h doomtype.h
	$(CC) -c w_wad.c -o amiga_m68k/w_wad.o $(CFLAGS)

amiga_m68k/z_zone.o: $(GLOBALDEPS) z_zone.c z_zone.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h doomtype.h
	$(CC) -c z_zone.c -o amiga_m68k/z_zone.o $(CFLAGS)

amiga_m68k/net_sdl.o: $(GLOBALDEPS) net_sdl.c doomtype.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h m_argv.h doomtype.h net_defs.h doomtype.h d_ticcmd.h net_io.h net_defs.h net_packet.h net_defs.h net_sdl.h net_defs.h z_zone.h
	$(CC) -c net_sdl.c -o amiga_m68k/net_sdl.o $(CFLAGS)

amiga_m68k/d_mode.o: $(GLOBALDEPS) d_mode.c doomtype.h d_mode.h doomtype.h
	$(CC) -c d_mode.c -o amiga_m68k/d_mode.o $(CFLAGS)

amiga_m68k/i_amigasound.o: $(GLOBALDEPS) i_amigasound.c z_zone.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_sound.h doomtype.h m_argv.h doomtype.h m_misc.h doomtype.h w_wad.h doomtype.h w_file.h doomtype.h doomsound.h
	$(CC) -c i_amigasound.c -o amiga_m68k/i_amigasound.o $(CFLAGS)

amiga_m68k/am_map.o: $(GLOBALDEPS) heretic/am_map.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/am_map.h heretic/am_data.h
	$(CC) -c heretic/am_map.c -o amiga_m68k/am_map.o $(CFLAGS)

amiga_m68k/ct_chat.o: $(GLOBALDEPS) heretic/ct_chat.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/ct_chat.c -o amiga_m68k/ct_chat.o $(CFLAGS)

amiga_m68k/d_main.o: $(GLOBALDEPS) heretic/d_main.c heretic/ct_chat.h heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/d_main.c -o amiga_m68k/d_main.o $(CFLAGS)

amiga_m68k/d_net.o: $(GLOBALDEPS) heretic/d_net.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h
	$(CC) -c heretic/d_net.c -o amiga_m68k/d_net.o $(CFLAGS)

amiga_m68k/f_finale.o: $(GLOBALDEPS) heretic/f_finale.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/s_sound.h
	$(CC) -c heretic/f_finale.c -o amiga_m68k/f_finale.o $(CFLAGS)

amiga_m68k/g_game.o: $(GLOBALDEPS) heretic/g_game.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/g_game.c -o amiga_m68k/g_game.o $(CFLAGS)

amiga_m68k/in_lude.o: $(GLOBALDEPS) heretic/in_lude.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/in_lude.c -o amiga_m68k/in_lude.o $(CFLAGS)

amiga_m68k/info.o: $(GLOBALDEPS) heretic/info.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_action.h
	$(CC) -c heretic/info.c -o amiga_m68k/info.o $(CFLAGS)

amiga_m68k/m_random.o: $(GLOBALDEPS) heretic/m_random.c heretic/m_random.h
	$(CC) -c heretic/m_random.c -o amiga_m68k/m_random.o $(CFLAGS)

amiga_m68k/mn_menu.o: $(GLOBALDEPS) heretic/mn_menu.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/r_local.h heretic/s_sound.h
	$(CC) -c heretic/mn_menu.c -o amiga_m68k/mn_menu.o $(CFLAGS)

amiga_m68k/p_ceilng.o: $(GLOBALDEPS) heretic/p_ceilng.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_ceilng.c -o amiga_m68k/p_ceilng.o $(CFLAGS)

amiga_m68k/p_doors.o: $(GLOBALDEPS) heretic/p_doors.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_doors.c -o amiga_m68k/p_doors.o $(CFLAGS)

amiga_m68k/p_enemy.o: $(GLOBALDEPS) heretic/p_enemy.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_enemy.c -o amiga_m68k/p_enemy.o $(CFLAGS)

amiga_m68k/p_floor.o: $(GLOBALDEPS) heretic/p_floor.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_floor.c -o amiga_m68k/p_floor.o $(CFLAGS)

amiga_m68k/p_inter.o: $(GLOBALDEPS) heretic/p_inter.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_inter.c -o amiga_m68k/p_inter.o $(CFLAGS)

amiga_m68k/p_lights.o: $(GLOBALDEPS) heretic/p_lights.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h
	$(CC) -c heretic/p_lights.c -o amiga_m68k/p_lights.o $(CFLAGS)

amiga_m68k/p_map.o: $(GLOBALDEPS) heretic/p_map.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_map.c -o amiga_m68k/p_map.o $(CFLAGS)

amiga_m68k/p_maputl.o: $(GLOBALDEPS) heretic/p_maputl.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h
	$(CC) -c heretic/p_maputl.c -o amiga_m68k/p_maputl.o $(CFLAGS)

amiga_m68k/p_mobj.o: $(GLOBALDEPS) heretic/p_mobj.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/sounds.h heretic/s_sound.h
	$(CC) -c heretic/p_mobj.c -o amiga_m68k/p_mobj.o $(CFLAGS)

amiga_m68k/p_plats.o: $(GLOBALDEPS) heretic/p_plats.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_plats.c -o amiga_m68k/p_plats.o $(CFLAGS)

amiga_m68k/p_pspr.o: $(GLOBALDEPS) heretic/p_pspr.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_pspr.c -o amiga_m68k/p_pspr.o $(CFLAGS)

amiga_m68k/p_setup.o: $(GLOBALDEPS) heretic/p_setup.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_setup.c -o amiga_m68k/p_setup.o $(CFLAGS)

amiga_m68k/p_sight.o: $(GLOBALDEPS) heretic/p_sight.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h
	$(CC) -c heretic/p_sight.c -o amiga_m68k/p_sight.o $(CFLAGS)

amiga_m68k/p_spec.o: $(GLOBALDEPS) heretic/p_spec.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_spec.c -o amiga_m68k/p_spec.o $(CFLAGS)

amiga_m68k/p_switch.o: $(GLOBALDEPS) heretic/p_switch.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_switch.c -o amiga_m68k/p_switch.o $(CFLAGS)

amiga_m68k/p_telept.o: $(GLOBALDEPS) heretic/p_telept.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_telept.c -o amiga_m68k/p_telept.o $(CFLAGS)

amiga_m68k/p_tick.o: $(GLOBALDEPS) heretic/p_tick.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h
	$(CC) -c heretic/p_tick.c -o amiga_m68k/p_tick.o $(CFLAGS)

amiga_m68k/p_user.o: $(GLOBALDEPS) heretic/p_user.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/p_user.c -o amiga_m68k/p_user.o $(CFLAGS)

amiga_m68k/r_bsp.o: $(GLOBALDEPS) heretic/r_bsp.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h
	$(CC) -c heretic/r_bsp.c -o amiga_m68k/r_bsp.o $(CFLAGS)

amiga_m68k/r_data.o: $(GLOBALDEPS) heretic/r_data.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h
	$(CC) -c heretic/r_data.c -o amiga_m68k/r_data.o $(CFLAGS)

amiga_m68k/r_draw.o: $(GLOBALDEPS) heretic/r_draw.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h
	$(CC) -c heretic/r_draw.c -o amiga_m68k/r_draw.o $(CFLAGS)

amiga_m68k/r_main.o: $(GLOBALDEPS) heretic/r_main.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h
	$(CC) -c heretic/r_main.c -o amiga_m68k/r_main.o $(CFLAGS)

amiga_m68k/r_plane.o: $(GLOBALDEPS) heretic/r_plane.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h
	$(CC) -c heretic/r_plane.c -o amiga_m68k/r_plane.o $(CFLAGS)

amiga_m68k/r_segs.o: $(GLOBALDEPS) heretic/r_segs.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h
	$(CC) -c heretic/r_segs.c -o amiga_m68k/r_segs.o $(CFLAGS)

amiga_m68k/r_things.o: $(GLOBALDEPS) heretic/r_things.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/r_local.h
	$(CC) -c heretic/r_things.c -o amiga_m68k/r_things.o $(CFLAGS)

amiga_m68k/s_sound.o: $(GLOBALDEPS) heretic/s_sound.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/sounds.h heretic/s_sound.h heretic/r_local.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/sounds.h
	$(CC) -c heretic/s_sound.c -o amiga_m68k/s_sound.o $(CFLAGS)

amiga_m68k/sb_bar.o: $(GLOBALDEPS) heretic/sb_bar.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/m_random.h heretic/p_local.h heretic/r_local.h heretic/p_spec.h heretic/s_sound.h
	$(CC) -c heretic/sb_bar.c -o amiga_m68k/sb_bar.o $(CFLAGS)

amiga_m68k/sounds.o: $(GLOBALDEPS) heretic/sounds.c heretic/doomdef.h heretic/doomdata.h heretic/dstrings.h heretic/info.h heretic/sounds.h heretic/sounds.h
	$(CC) -c heretic/sounds.c -o amiga_m68k/sounds.o $(CFLAGS)

amiga_m68k/i_sound.o: $(GLOBALDEPS) i_sound.c config.h doomfeatures.h doomtype.h i_sound.h doomtype.h i_video.h doomtype.h m_argv.h doomtype.h m_config.h
	$(CC) -c i_sound.c -o amiga_m68k/i_sound.o $(CFLAGS)

amiga_m68k/i_prismamusic.o: $(GLOBALDEPS) i_prismamusic.c z_zone.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_sound.h doomtype.h m_argv.h doomtype.h m_misc.h doomtype.h w_wad.h doomtype.h w_file.h doomtype.h doomsound.h
	$(CPP) -c i_prismamusic.c -o amiga_m68k/i_prismamusic.o $(CXXFLAGS)

amiga_m68k/i_camdmusic.o: $(GLOBALDEPS) i_camdmusic.c z_zone.h i_system.h d_ticcmd.h doomtype.h d_event.h doomtype.h i_sound.h doomtype.h m_argv.h doomtype.h m_misc.h doomtype.h w_wad.h doomtype.h w_file.h doomtype.h memio.h mus2mid.h doomtype.h memio.h doomsound.h
	$(CC) -c i_camdmusic.c -o amiga_m68k/i_camdmusic.o $(CFLAGS)
