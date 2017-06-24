#-------------------------------------------------
#
#    Project created by QtCreator 2016-12-19T11:03:34
#
#-------------------------------------------------
#    Copyright (C) 2017 Olaf Japp
#    https://facebook.com/artanidos
#
#    This file is part of FlatSiteBuilder.
#
#    AnimationMaker is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    Foobar is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with AnimationMaker.  If not, see <http://www.gnu.org/licenses/>.

QT += core gui
QT += testlib 

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

unix:PYTHON_VERSION=2.7
TARGET = FlatSiteBuilder
TEMPLATE = app
target.path += /bin
INSTALLS += target

SOURCES += main.cpp\
    mainwindow.cpp \
    generator.cpp

HEADERS  += mainwindow.h \
    generator.h

DISTFILES += \
    README.md

linux-g++ {
    LIBS += -L$$PWD/lib/
    LIBS += -lm
    LIBS += -ldl

    LIBS += -L$$PWD/dependencies/PythonQt3.1/lib/
    LIBS += -lPythonQt
    LIBS += -lPythonQt_QtAll

    LIBS += $$system(python$${PYTHON_VERSION}-config --libs)
    QMAKE_CXXFLAGS += $$system(python$${PYTHON_VERSION}-config --includes)


    INCLUDEPATH += $$PWD/dependencies/PythonQt3.1/include
    DEPENDPATH += $$PWD/dependencies/PythonQt3.1/include
}

RESOURCES += \
    flatsitebuilder.qrc