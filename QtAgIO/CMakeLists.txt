# Create the AgIO executable
qt_add_plugin(p_agioplugin
    STATIC
    CLASS_NAME AgIOPlugin

        agio.qrc
    agioproperties.cpp
    agioproperty.h agioproperty.cpp
    agiosettings.h agiosettings.cpp
        formloop.h formloop.cpp
        formloop_udpcomm.cpp
    formloop_nmea.cpp
    formloop_ntripcomm.cpp
    formloop_ui.cpp
        formloop_settings.cpp
    properties.h
    qmlsettings.h qmlsettings.cpp
    qmlsettings_addkeys.cpp
    qmlutil.h

    formloop_formudp.cpp
    #inc/IORouter.h src/IORouter.cpp
    inc/Connection.h src/Connection.cpp
    inc/SerialConnection.h src/SerialConnection.cpp
    inc/UdpConnection.h src/UdpConnection.cpp
        inc/CTraffic.h src/CTraffic.cpp
        inc/CScanReply.h src/CScanReply.cpp
    interfaceproperty.h
)


target_include_directories(p_agioplugin
    PRIVATE src
    PUBLIC inc
    PRIVATE .
    ../
)

# Libraries to link
target_link_libraries(p_agioplugin PRIVATE
    Qt6::Core
    Qt6::Network
    Qt6::Gui
    Qt6::Widgets
    Qt6::Quick
    Qt6::QuickWidgets
        Qt6::Multimedia
)
