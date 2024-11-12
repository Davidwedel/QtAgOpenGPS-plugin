import QtQuick
/*
Image {
    id: image
    state: "off"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    states: [
        State {
            name: "on"
            PropertyChanges {
                target: image
                source: prefix + "images/SectionOn.png"
            }
        },
        State {
            name: "auto"

            PropertyChanges {
                target: image
                source: prefix + "images/SectionAuto.png"
            }
        },
        State {
            name: "off"
            PropertyChanges {
                target: image
                source: prefix + "images/SectionOff.png"
            }
        }
    ]
}
*/
Rectangle {
    id: rect
    width: 75
    height: 40 * theme.scaleHeight

    border.width: 1
    border.color: "black" //textColor?

    //property color buttonColor: "white"
    //property string buttonText: "Ok"
    property string buttonText: ""
    property color textColor: "white"
    signal clicked

    color: "red"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
           parent.clicked(mouse)
        }
    }

    Text {
        id: label
        anchors.fill: parent
        color: textColor
        text: rect.buttonText
        font.bold: true
        fontSizeMode: Text.Fit
        minimumPixelSize: 10
        font.pointSize: 72
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    /*
    states: [
        State {
            name: "on"
            PropertyChanges {
                target: rect
                color:  "yellow"
            }
            PropertyChanges {
                target: label
                //text:  "On"
            }
        },
        State {
            name: "auto"

            PropertyChanges {
                target: rect
                color: "lime"
            }
            PropertyChanges {
                target: label
                //text:  "Auto"
            }
        },
        State {
            name: "off"
            PropertyChanges {
                target: rect
                color: "red"
            }
            PropertyChanges {
                target: label
                //text:  "Off"
            }
       }
    ]*/
}
