import QtQuick 2.15

import "components/"

Item {
    anchors.fill: parent


    Item {
        id: self
        anchors.bottom: parent.bottom
        anchors.left:   parent.left
        width: parent.width * 0.5 * 0.9
        height: width
        anchors.margins: {
            bottom: parent.height * 0.05
            left:   parent.height * 0.05
        }

        PlayerFleet {
            id: playerFleet
            anchors.fill: parent
            layoutSpacing: 3
            state: "self"
        }
    }

    Item {
        id: enemy

        anchors.bottom: parent.bottom
        anchors.left: parent.horizontalCenter
        width: parent.width * 0.5 * 0.9
        height: width
        anchors.margins: {
            bottom: parent.height * 0.05
            left:   parent.height * 0.05
        }

        PlayerFleet {
            id: enemyFleet
            anchors.fill: parent
            layoutSpacing: 3
            state: "enemy"
        }
    }
}
