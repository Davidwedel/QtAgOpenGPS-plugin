import QtQuick
import QtQuick.Controls.Fusion
import QtQuick.Dialogs

import ".."

Rectangle {
    width: 1024
    height: 768

    id: fakeScreen

    color: aog.backgroundColor

    Dialog {
        id: testDialog
        visible: true

        width: 600
        height: 400

        x: 5
        y: 5

        title: "Title"
        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")

    }


}
