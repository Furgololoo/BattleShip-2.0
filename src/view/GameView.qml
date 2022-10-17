import QtQuick 2.15

import "components/"

Item {
    anchors.fill: parent

    Item {
        id: self
        anchors.top:    parent.top
        anchors.bottom: parent.bottom
        anchors.right:  parent.horizontalCenter
        anchors.left:   parent.left
        anchors.margins: {
            top:    parent.height * 0.15
            bottom: parent.height * 0.05
            right:  parent.height * 0.05
            left:   parent.height * 0.05
        }

        Rectangle {
            anchors.fill: parent

            Board {
                anchors.fill: parent
            }

            border.color: "blue"
            border.width: 2
        }
    }

    Item {
        id: enemy

        anchors.top:    parent.top
        anchors.bottom: parent.bottom
        anchors.right:  parent.right
        anchors.left:   parent.horizontalCenter
        anchors.margins: {
            top:    parent.height * 0.15
            bottom: parent.height * 0.05
            right:  parent.height * 0.05
            left:   parent.height * 0.05
        }

        Rectangle {
            anchors.fill: parent

            Board {
                anchors.fill: parent
            }

            border.color: "red"
            border.width: 2
        }
    }

}
