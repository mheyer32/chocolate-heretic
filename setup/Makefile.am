
gamesdir = $(prefix)/games

AM_CFLAGS = @SDL_CFLAGS@                                           \
            @SDLMIXER_CFLAGS@                                      \
            -I$(top_builddir)/textscreen -I..

noinst_LIBRARIES = libsetup.a

SOURCE_FILES =                                  \
    compatibility.c   compatibility.h           \
    display.c         display.h                 \
    joystick.c        joystick.h                \
    keyboard.c        keyboard.h                \
    mainmenu.c                                  \
    mode.c            mode.h                    \
    mouse.c           mouse.h                   \
    multiplayer.c     multiplayer.h             \
    sound.c           sound.h                   \
    execute.c         execute.h                 \
    txt_joybinput.c   txt_joybinput.h           \
    txt_keyinput.c    txt_keyinput.h            \
    txt_mouseinput.c  txt_mouseinput.h

libsetup_a_SOURCES = $(SOURCE_FILES)

EXTRA_DIST=                                     \
    setup_icon.c

appdir = $(prefix)/share/applications
app_DATA = @PROGRAM_PREFIX@setup.desktop

@PROGRAM_PREFIX@setup.desktop : setup.desktop
	cp $^ $@

if HAVE_PYTHON

setup_icon.c : $(top_builddir)/data/setup8.ico
	$(top_builddir)/data/convert-icon $^ $@

endif

