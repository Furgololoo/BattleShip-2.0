import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("BattleShip 2")

    Component.onCompleted: {
        loader.source = "qrc:/view/LoginView.qml"
    }

    Loader {
        id: loader
        anchors.fill: parent
    }
}
