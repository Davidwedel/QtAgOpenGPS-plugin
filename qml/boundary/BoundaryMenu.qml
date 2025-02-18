// Copyright (C) 2024 Michael Torrie and the QtAgOpenGPS Dev Team
// SPDX-License-Identifier: GNU General Public License v3.0 or later
//
// Shows all boundaries + add + delete
import QtQuick
import QtQuick.Layouts
import Qt.labs.folderlistmodel
import QtQuick.Controls.Fusion

import ".."
import "../components"

Item {
    id: boundaryMenu

    function show() {
        boundaryInterface.update_list()
        boundaryMenuPopup.visible = true
    }

    MoveablePopup {
        id: boundaryMenuPopup
        width: 500
        height: 400
        modal: true
        visible: boundaryMenu.visible
        x: 40
        y: 40
        TopLine{
            id: topLine
            titleText: "Start or Delete A Boundary"
        }
        Rectangle{
            id: boundaryMain
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: topLine.bottom
            border.width: 2
            border.color: "aqua"
            color: "lightgray"
            BoundaryTable {
                id: boundaryList
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: buttonsRow.bottom
                anchors.bottom: parent.bottom
                anchors.margins: 20
                anchors.topMargin: 50
                ScrollBar.vertical: ScrollBar {
                    id: scrollbar
					anchors.right: parent.right
                    width: 10
                    policy: ScrollBar.AlwaysOn
                    active: true
                    contentItem.opacity: 1
                }

                onChangeDriveThrough: {
                    boundaryInterface.set_drive_through(index, drive_through)
                }

            }

            RowLayout{
                id: buttonsRow
                width: parent.width - 20
                anchors.top: parent.top
                height: children.height
                anchors.horizontalCenter: parent.horizontalCenter
                IconButtonTransparent{
                    objectName: "btnBoundaryDeleteCurrent"
                    icon.source: prefix + "/images/BoundaryDelete.png"
                    enabled: (boundaryList.currentIndex === 0 &&
                              boundaryInterface.boundary_list.length === 1) ||
                             (boundaryList.currentIndex > 0)
                    onClicked: boundaryInterface.delete_boundary(boundaryList.currentIndex)
                }
                IconButtonTransparent{
                    objectName: "btnBoundaryDeleteAll"
                    icon.source: prefix + "/images/BoundaryDeleteAll.png"
                    onClicked: {
                        deleteAllSure.visible = true
                    }

                    //TODO: popup are you sure dialog
                }
                IconButtonTransparent{
                    objectName: "btnBoundaryOpenGE"
                    icon.source: prefix + "/images/GoogleEarth.png"
                }
                IconButtonTransparent{
                    objectName: "btnBoundaryFancyDrawer"
                    icon.source: prefix + "/images/bing.png"
                }
                IconButtonTransparent{
                    icon.source: prefix + "/images/AddNew.png"
                    onClicked: {
                        boundaryMenuPopup.visible = false
                        boundaryType.show()
                    }

                }
                IconButtonTransparent{
                    icon.source: prefix + "/images/OK64.png"
                    onClicked: boundaryMenuPopup.visible = false
                }
            }
        }
    }
    Dialog {
        id: deleteAllSure
        visible: false
        //anchors.centerIn: mainWindow
        title: qsTr("Delete All Boundaries?")
        standardButtons: Dialog.No | Dialog.Yes
        width: 500
        height: 300
        modal: true

        onAccepted: {
            boundaryInterface.delete_all()
        }

        Text {
            anchors.fill: parent
            text: qsTr("Are you sure you wish to delete all boundaries for this field? This action cannot be undone.")
            wrapMode: Text.WordWrap
        }

    }
    BoundaryType {
        id: boundaryType
        visible: false
    }
}
