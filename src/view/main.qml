import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1200
    height: 680
//    width: 420
//    height: 420

    visible: true
    title: qsTr("BattleShip 2")

    Loader {
        id: loader
        anchors.fill: parent
        source: "qrc:/view/GameView.qml"
    }
}
