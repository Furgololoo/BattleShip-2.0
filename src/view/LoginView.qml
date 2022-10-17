import QtQuick 2.15
import QtQuick.Controls 2.5

import "qrc:/script/Color.js" as Colors
import "qrc:/script/Font.js" as Fonts
import "qrc:/script/LoginValidation.js" as LoginValidation

Item {
    anchors.fill: parent

   Component.onCompleted: {
       LoginValidation.setupLoginView(nameField, ipAddressField, portField, goBtn)
   }

    Item {
        id: loginText
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.1
        height: 50
        width: 200

        Text {
            anchors.fill: parent
            text: "Login"
            font: Fonts.arial30()
            color: Colors.dark()
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Item {
        id: name
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: loginText.bottom
        anchors.topMargin: parent.height * 0.05
        height: 50
        width: 200

        TextField {
            id: nameField

            property color nameBG: "#FFFFFF"
            property real nameOpacity: 1.0

            onTextChanged: LoginValidation.checkValidationInNameField(nameField.text)

            anchors.fill: parent
            placeholderText: qsTr("Name")

            font: Fonts.arial14()
<<<<<<< HEAD
//            Text.horizontalAlignment: Text.AlignHCenter
//            Text.verticalAlignment: Text.AlignVCenter
=======
            horizontalAlignment: TextInput.AlignHCenter
>>>>>>> 08af45d2c99360dcdf8b78daa3293c0f379f459c

            background: Rectangle {
                color: nameField.nameBG
                opacity: nameField.nameOpacity
                border.width: 3
                border.color: Colors.blue()
            }
        }
    }

    Item {
        id: ipAddress
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: name.bottom
        anchors.topMargin: parent.height * 0.05
        height: 50
        width: 225

        TextField {
            id: ipAddressField

            property color ipBG: "#FFFFFF"
            property real ipOpacity: 1.0

            onTextChanged: LoginValidation.checkValidationInIPField(ipAddress.text)

            anchors.fill: parent
            placeholderText: qsTr("Server IP Address")

            font: Fonts.arial14()
            horizontalAlignment: TextInput.AlignHCenter

            background: Rectangle {
                color: ipAddressField.ipBG
                opacity: ipAddressField.ipOpacity
                border.width: 3
                border.color: Colors.red()
            }
        }
    }

    Item {
        id: port
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: ipAddress.bottom
        anchors.topMargin: parent.height * 0.05
        height: 50
        width: 250

        TextField {
            id: portField

            property color portBG: "#FFFFFF"
            property real portOpacity: 1.0

            onTextChanged: LoginValidation.checkValidationInPortField(portField.text)

            anchors.fill: parent
            placeholderText: qsTr("Server port")

            font: Fonts.arial14()
            horizontalAlignment: TextInput.AlignHCenter

            background: Rectangle {
                color: portField.portBG
                opacity: portField.portOpacity
                border.width: 3
                border.color: Colors.yellow()
            }
        }
    }

    Item {
        id: button
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: port.bottom
        anchors.topMargin: parent.height * 0.05
        height: 50
        width: 275

        Button {
            id: goBtn

            property color buttonBG: "#FFFFFF"
            property real buttonOpacity: 1.0

            anchors.fill: parent
            text: qsTr("Go!")

            font: Fonts.arial14()

            background: Rectangle {
                color: goBtn.buttonBG
                opacity: goBtn.buttonOpacity
                border.width: 3
                border.color: Colors.green()
            }
        }
    }

}
