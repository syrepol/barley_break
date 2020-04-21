import QtQuick 2.0

Rectangle {
    id: root

    property string displayText: ""

    color: "lightgreen"

    radius: 10

    border.color: "black"
    border.width: 1

    Text {
        anchors.centerIn: root

        text: root.displayText
        font {
            pointSize: Math.min(root.width, root.height) / 2.5
            bold: true
        }
    }
}
