import QtQuick
import QtQuick.Window 2.2
import QtQuick.Controls 1.6

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
    title: "Qt Quick Extras Demo"


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
        text:qsTr("Click one")
        onClicked:back.changeValue(1)
    }
    Itemg{
        id:wellwell
    }
}