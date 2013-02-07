#############################################################################
# Makefile for building: ImageShading
# Generated by qmake (2.01a) (Qt 4.8.1) on: Thu Feb 7 12:05:37 2013
# Project:  ImageShading.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile ImageShading.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtOpenGL -I/usr/include/qt4 -I/usr/X11R6/include -I../imageshading-build/moc -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -L/usr/X11R6/lib -lopencv_core -lopencv_imgproc -lopencv_highgui -lGLU -lQtOpenGL -lQtGui -lQtCore -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ../imageshading-build/obj/

####### Files

SOURCES       = main.cpp \
		mainwindow.cpp \
		Utilities/ImageUtils.cpp \
		Views/GraphicsView.cpp \
		Views/GLScene.cpp \
		Curve/BSpline.cpp \
		Curve/BSplineGroup.cpp \
		Curve/ControlPoint.cpp ../imageshading-build/moc/moc_mainwindow.cpp \
		../imageshading-build/moc/moc_GraphicsView.cpp \
		../imageshading-build/moc/moc_GLScene.cpp
OBJECTS       = ../imageshading-build/obj/main.o \
		../imageshading-build/obj/mainwindow.o \
		../imageshading-build/obj/ImageUtils.o \
		../imageshading-build/obj/GraphicsView.o \
		../imageshading-build/obj/GLScene.o \
		../imageshading-build/obj/BSpline.o \
		../imageshading-build/obj/BSplineGroup.o \
		../imageshading-build/obj/ControlPoint.o \
		../imageshading-build/obj/moc_mainwindow.o \
		../imageshading-build/obj/moc_GraphicsView.o \
		../imageshading-build/obj/moc_GLScene.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/opengl.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		ImageShading.pro
QMAKE_TARGET  = ImageShading
DESTDIR       = 
TARGET        = ImageShading

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: ImageShading.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/opengl.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtOpenGL.prl \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile ImageShading.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/declarative_debug.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/opengl.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtOpenGL.prl:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile ImageShading.pro

dist: 
	@$(CHK_DIR_EXISTS) ../imageshading-build/obj/ImageShading1.0.0 || $(MKDIR) ../imageshading-build/obj/ImageShading1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) ../imageshading-build/obj/ImageShading1.0.0/ && $(COPY_FILE) --parents mainwindow.h Utilities/ImageUtils.h Views/GraphicsView.h Views/GLScene.h Curve/BSpline.h Curve/BSplineGroup.h Curve/ControlPoint.h ../imageshading-build/obj/ImageShading1.0.0/ && $(COPY_FILE) --parents main.cpp mainwindow.cpp Utilities/ImageUtils.cpp Views/GraphicsView.cpp Views/GLScene.cpp Curve/BSpline.cpp Curve/BSplineGroup.cpp Curve/ControlPoint.cpp ../imageshading-build/obj/ImageShading1.0.0/ && $(COPY_FILE) --parents mainwindow.ui ../imageshading-build/obj/ImageShading1.0.0/ && (cd `dirname ../imageshading-build/obj/ImageShading1.0.0` && $(TAR) ImageShading1.0.0.tar ImageShading1.0.0 && $(COMPRESS) ImageShading1.0.0.tar) && $(MOVE) `dirname ../imageshading-build/obj/ImageShading1.0.0`/ImageShading1.0.0.tar.gz . && $(DEL_FILE) -r ../imageshading-build/obj/ImageShading1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: ../imageshading-build/moc/moc_mainwindow.cpp ../imageshading-build/moc/moc_GraphicsView.cpp ../imageshading-build/moc/moc_GLScene.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) ../imageshading-build/moc/moc_mainwindow.cpp ../imageshading-build/moc/moc_GraphicsView.cpp ../imageshading-build/moc/moc_GLScene.cpp
../imageshading-build/moc/moc_mainwindow.cpp: Views/GLScene.h \
		Utilities/ImageUtils.h \
		Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h \
		mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) mainwindow.h -o ../imageshading-build/moc/moc_mainwindow.cpp

../imageshading-build/moc/moc_GraphicsView.cpp: Views/GraphicsView.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) Views/GraphicsView.h -o ../imageshading-build/moc/moc_GraphicsView.cpp

../imageshading-build/moc/moc_GLScene.cpp: Utilities/ImageUtils.h \
		Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h \
		Views/GLScene.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) Views/GLScene.h -o ../imageshading-build/moc/moc_GLScene.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui \
		Views/GraphicsView.h
	/usr/bin/uic-qt4 mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

../imageshading-build/obj/main.o: main.cpp Utilities/ImageUtils.h \
		mainwindow.h \
		Views/GLScene.h \
		Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/main.o main.cpp

../imageshading-build/obj/mainwindow.o: mainwindow.cpp mainwindow.h \
		Views/GLScene.h \
		Utilities/ImageUtils.h \
		Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h \
		ui_mainwindow.h \
		Views/GraphicsView.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/mainwindow.o mainwindow.cpp

../imageshading-build/obj/ImageUtils.o: Utilities/ImageUtils.cpp Utilities/ImageUtils.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/ImageUtils.o Utilities/ImageUtils.cpp

../imageshading-build/obj/GraphicsView.o: Views/GraphicsView.cpp Views/GraphicsView.h \
		Views/GLScene.h \
		Utilities/ImageUtils.h \
		Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/GraphicsView.o Views/GraphicsView.cpp

../imageshading-build/obj/GLScene.o: Views/GLScene.cpp Views/GLScene.h \
		Utilities/ImageUtils.h \
		Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/GLScene.o Views/GLScene.cpp

../imageshading-build/obj/BSpline.o: Curve/BSpline.cpp Curve/BSpline.h \
		Curve/ControlPoint.h \
		Curve/BSplineGroup.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/BSpline.o Curve/BSpline.cpp

../imageshading-build/obj/BSplineGroup.o: Curve/BSplineGroup.cpp Curve/BSplineGroup.h \
		Curve/ControlPoint.h \
		Curve/BSpline.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/BSplineGroup.o Curve/BSplineGroup.cpp

../imageshading-build/obj/ControlPoint.o: Curve/ControlPoint.cpp Curve/ControlPoint.h \
		Curve/BSpline.h \
		Curve/BSplineGroup.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/ControlPoint.o Curve/ControlPoint.cpp

../imageshading-build/obj/moc_mainwindow.o: ../imageshading-build/moc/moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/moc_mainwindow.o ../imageshading-build/moc/moc_mainwindow.cpp

../imageshading-build/obj/moc_GraphicsView.o: ../imageshading-build/moc/moc_GraphicsView.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/moc_GraphicsView.o ../imageshading-build/moc/moc_GraphicsView.cpp

../imageshading-build/obj/moc_GLScene.o: ../imageshading-build/moc/moc_GLScene.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ../imageshading-build/obj/moc_GLScene.o ../imageshading-build/moc/moc_GLScene.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

