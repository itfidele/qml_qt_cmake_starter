import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root
    visible: true
    width:300
    height:400
    title: "Window Example - Demo"
    color: "#272727"

    ColumnLayout{
        spacing: 30
        anchors.centerIn: parent


        RowLayout{
            anchors.centerIn: parent
            Label{
                id:label
                text:qsTr("0")
                font.pixelSize: 52
                Connections{
                    target:back
                    onValueChanged:label.text=s
                }
            }
        }

        RowLayout{
            spacing: 6
            Button{
                id:button
                text: qsTr("Increament")
                onClicked:back.changeValue(1)
                background: Rectangle {
                    color: parent.down ? "#3E18B9" : "#8A3A98"
                    radius:5
                }
                font.bold:true
                font.pixelSize: 16
            }

            Button{
                id:button2
                text: qsTr("Decrement")
                onClicked:back.changeValue(-1)
                background: Rectangle {
                    color: parent.down ? "#3E18B9" : "#8A3A98"
                    radius:5
                }
                font.bold:true
                font.pixelSize: 16
            }
        }
        
    }
}