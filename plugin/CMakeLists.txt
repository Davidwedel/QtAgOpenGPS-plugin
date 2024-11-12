# Copyright (C) 2022 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

qt_add_plugin(p_AgIOPlugin
    STATIC
    CLASS_NAME AgIOPlugin
    agioplugin.cpp agioplugin.h
)

target_include_directories(p_AgIOPlugin PRIVATE
    ../
)

target_link_libraries(p_AgIOPlugin PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
)
