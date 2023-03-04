import QtQuick
import QtQuick.Controls

Window {
    id: root
    visible: true
    width:300
    height:400
    Text {
        text: "Hello, world!"
        color:'white'
        anchors.centerIn: parent
    }
    color: "#161616"
    title: "Window Example - Demo"


    Label{
        id:label
        text:qsTr("Label")

        Connections{
            target:back
            onValueChanged:label.text=s
        }
    }
    Button{
        id:button
        text: "Click one"
        onClicked:back.changeValue(1)
    }
    Itemg{
        id:wellwell
    }
}