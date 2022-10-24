import QtQuick 2.15
import Custom 1.0

import "qrc:/script/Font.js" as Fonts

Item {

    property color borderColor: "#020202"
    property string buttonName: "A0"

    Rectangle {
        id: mainRect
        anchors.fill: parent
        border.width: 3
        border.color: borderColor

        Text {
            anchors.fill: parent
            text: buttonName
            font: Fonts.arial20()
        }
    }

}
