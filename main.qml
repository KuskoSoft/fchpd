import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: Screen.width
    height: Screen.height

    property var component
    property int sirkaKarty: Screen.width/15
    property int vyskaKarty: Screen.width/15
    property int sirkaObrazovky: Screen.width
    property int vyskaObrazovky: Screen.height
    property bool shift: false

    DropArea {
        anchors.fill: parent
    }
    ListaKariet{

    }
    Rectangle {
        id:kos
        x: sirkaObrazovky*0.95; y: sirkaObrazovky*0.05
        width: sirkaObrazovky/30; height: sirkaObrazovky/5
        color: "#0f0303"
    }
    Item {
        id: container
    }

}

