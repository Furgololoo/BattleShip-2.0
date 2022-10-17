import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1200
    height: 580
    visible: true
    title: qsTr("BattleShip 2")

    Component.onCompleted: {
        loader.source = "qrc:/view/GameView.qml"
    }

    Loader {
        id: loader
        anchors.fill: parent
    }
}
