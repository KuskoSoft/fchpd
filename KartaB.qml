import QtQuick 2.5

Rectangle{
    property bool zmena:false
    y: sirkaObrazovky/3
    x: sirkaObrazovky*0.3
    width: sirkaKarty
    height: vyskaKarty
    color: "#514949"
    Drag.active: dragArea.drag.active
    visible: (((y+(height/2) > kos.y) && (x+(width/2)) > kos.x) && (y+(height/2) < (kos.y + kos.height))) ? false : true

    MouseArea {
        id: dragArea
        anchors.fill: parent
        drag.target: parent
        onPositionChanged: {
            if(!zmena){
                component = Qt.createComponent("KartaB.qml")
                component.createObject(container)
            zmena = true
            }
        }
    }
    Text{
        anchors.fill: parent
        text: "B"
    }

}
