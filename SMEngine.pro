TEMPLATE = app
TARGET = SpaceMaster_Engine
QMAKE_MSC_VER +=
 
DEFINES -= UNICODE
 
CONFIG -= qt
WINSDK_LIBPATH += "C:\\Program Files (x86)\\Microsoft SDKs\\Windows\\v7.1A\\Lib"
 
unix {
    # You may need to change this include directory
    INCLUDEPATH += /usr/include/OGRE
    CONFIG += link_pkgconfig
    PKGCONFIG += OGRE
}
win32 {
    LIBS *= "$(WINSDK_LIBPATH)\\user32.lib"
    LIBS += -L$(OGRE_HOME)\\boost\\lib
    INCLUDEPATH += $(OGRE_HOME)\\include
    INCLUDEPATH += $(OGRE_HOME)\\include\\OIS
    INCLUDEPATH += $(OGRE_HOME)\\include\\OGRE
    INCLUDEPATH += $(OGRE_HOME)\\boost
    # If you are using Ogre 1.9 also include the following line:
    INCLUDEPATH += $(OGRE_HOME)\\include\\OGRE\\Overlay
}
debug {
    TARGET = $$join(TARGET,,,d)
    LIBS += -L"$(OGRE_HOME)\\lib\\debug"
    LIBS *= -lOgreMain_d -lOIS_d
    # If you are using Ogre 1.9 also include -lOgreOverlay_d, like this:
    LIBS *= -lOgreMain_d -lOIS_d -lOgreOverlay_d

    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lcg
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lFreeImage_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lfreetype_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgreMain_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgreOverlay_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgrePaging_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgreProperty_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgreRTShaderSystem_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgreTerrain_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOgreVolume_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lOIS_d
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lzlib
    LIBS += -L"$(OGRE_HOME)\\lib\\Debug" -lzziplib
    LIBS += -L"$(OGRE_HOME)\\boost\\lib" -llibboost_thread-vc100-mt-gd-1_55
    LIBS += -L"$(OGRE_HOME)\\boost\\lib" -llibboost_system-vc100-mt-gd-1_55
    LIBS += -L"$(OGRE_HOME)\\boost\\lib" -llibboost_date_time-vc100-mt-gd-1_55
    LIBS += -L"$(OGRE_HOME)\\boost\\lib" -llibboost_chrono-vc100-mt-gd-1_55
}
release {
    LIBS += -L$(OGRE_HOME)\\lib\\release
    LIBS *= -lOgreMain -lOIS
    # If you are using Ogre 1.9 also include -lOgreOverlay, like this:
    LIBS *= -lOgreMain -lOIS -lOgreOverlay
}
HEADERS += \
    TutorialApplication.h \
    BaseApplication.h \
    commondefs.h \
    Profession.h \
    Race.h \
    BaseApplication.h \
    TutorialApplication.h
    
SOURCES += \
    TutorialApplication.cpp \
    BaseApplication.cpp \
    main.cpp \
    Profession.cpp \
    Race.cpp \
    BaseApplication.cpp \
    TutorialApplication.cpp
