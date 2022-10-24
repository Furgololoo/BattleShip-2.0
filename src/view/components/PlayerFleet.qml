import QtQuick 2.15
import QtQuick.Layouts 1.15

import "qrc:/script/Color.js" as Colors

Item {
    id: root

    required property real layoutSpacing
    required property string state

    GridLayout {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        columns: 10
        rows: 10
        rowSpacing: layoutSpacing
        columnSpacing: layoutSpacing

        Repeater {
            id: repeater
            model: ButtonManager.getShips()

            delegate: Ship {
                buttonName: modelData
                borderColor: (root.state == "self") ? Colors.blue() : Colors.red()
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
