import QtQuick 2.5

Rectangle{
    property bool zmena:false
    id: root
    y: vyskaObrazovky*0.69
    x: 4*medzeraMkartami + 3*sirkaKarty
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
                component = Qt.createComponent("KartaO.qml")
                component.createObject(container)
            zmena = true
                root.z = 1
            }
        }
    }
    Text{
        anchors.fill: parent
        text: "O"
    }

}
