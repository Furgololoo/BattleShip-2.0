import QtQuick 2.15
import QtQuick.Controls 2.5

import "qrc:/script/Color.js" as Colors
import "qrc:/script/Font.js" as Fonts

Item {
    anchors.fill: parent

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
        anchors.top: loginText.top
        anchors.topMargin: parent.height * 0.15
        height: 50
        width: 200

        TextField {
            id: nameField
            anchors.fill: parent
            placeholderText: qsTr("Name")

            font: Fonts.arial14()
//            Text.horizontalAlignment: Text.AlignHCenter
//            Text.verticalAlignment: Text.AlignVCenter

            background: Rectangle {
                color: "#FFFFFF"
                border.width: 3
                border.color: Colors.blue()
            }
        }

//        Rectangle {
//            anchors.fill: parent
//            color: Colors.blue()
//        }
    }

    Item {
        id: ipAddress
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: name.top
        anchors.topMargin: parent.height * 0.15
        height: 50
        width: 225

        Rectangle {
            anchors.fill: parent
            color: Colors.red()
        }
    }

    Item {
        id: port
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: ipAddress.top
        anchors.topMargin: parent.height * 0.15
        height: 50
        width: 250

        Rectangle {
            anchors.fill: parent
            color: Colors.yellow()
        }
    }

}
