import QtQuick 2.15
import QtQuick.Window 2.15

Window {
<<<<<<< HEAD
    width: 1200
    height: 580
=======
    width: 420
    height: 420
>>>>>>> 08af45d2c99360dcdf8b78daa3293c0f379f459c
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
