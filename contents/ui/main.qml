import QtQuick 2.15
import QtQuick.Layouts 1.15
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

PlasmoidItem {
    id: root

    Plasmoid.icon: "network-wireless"

    compactRepresentation: MouseArea {
        anchors.fill: parent

        onClicked: root.expanded = !root.expanded

        PlasmaCore.IconItem {
            anchors.fill: parent
            source: "network-wireless"
        }
    }

    fullRepresentation: Rectangle {
        implicitWidth: 420
        implicitHeight: 500
        color: "#101813"
        radius: 4

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 24
            spacing: 16

            Text {
                text: "KubeNet"
                color: "#d8e8d0"
                font.family: "monospace"
                font.pixelSize: 24
                font.bold: true
            }

            Text {
                text: "Network dashboard"
                color: "#849486"
                font.family: "monospace"
                font.pixelSize: 13
            }

            Rectangle {
                Layout.fillWidth: true
                height: 1
                color: "#304238"
            }

            Text {
                text: "✓  Widget is working"
                color: "#b8d4b0"
                font.family: "monospace"
                font.pixelSize: 16
            }

            Text {
                text: "Plasma 5.27"
                color: "#849486"
                font.family: "monospace"
                font.pixelSize: 13
            }

            Text {
                text: "NetworkManager backend: next"
                color: "#849486"
                font.family: "monospace"
                font.pixelSize: 13
            }

            Item {
                Layout.fillHeight: true
            }

            Text {
                text: "KubeNet 0.1.0"
                color: "#536356"
                font.family: "monospace"
                font.pixelSize: 11
            }
        }
    }
}
