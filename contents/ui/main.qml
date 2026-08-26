import QtQuick 2.15
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    id: root

    Plasmoid.icon: "network-wireless"

    compactRepresentation: MouseArea {
        anchors.fill: parent
        onClicked: root.expanded = !root.expanded

        Text {
            anchors.centerIn: parent
            text: "K"
            color: "white"
            font.pixelSize: 16
            font.bold: true
        }
    }

    fullRepresentation: Rectangle {
        implicitWidth: 360
        implicitHeight: 260
        color: "#101813"
        border.color: "#5f806d"
        border.width: 1

        Column {
            anchors.centerIn: parent
            spacing: 12

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "KubeNet"
                color: "#d8e8d0"
                font.pixelSize: 28
                font.bold: true
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Widget works!"
                color: "#b8d4b0"
                font.pixelSize: 18
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Plasma 5.27"
                color: "#849486"
                font.pixelSize: 14
            }
        }
    }
}
