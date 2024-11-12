# Copyright (C) 2022 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

qt_add_plugin(p_echoplugin
    STATIC
    CLASS_NAME EchoPlugin
    agioplugin.cpp agioplugin.h
)

target_include_directories(p_echoplugin PRIVATE
    ../
)

target_link_libraries(p_echoplugin PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
)
