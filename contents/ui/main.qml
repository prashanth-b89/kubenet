import QtQuick 2.15
import org.kde.plasma.plasmoid 2.0

PlasmoidItem {
    id: root

    Plasmoid.icon: "network-wireless"
    Plasmoid.toolTipMainText: "KubeNet"
    Plasmoid.toolTipSubText: "Network information"

    compactRepresentation: Item {
        implicitWidth: 32
        implicitHeight: 32

        MouseArea {
            anchors.fill: parent
            onClicked: root.expanded = !root.expanded

            Text {
                anchors.centerIn: parent
                text: "K"
                font.pixelSize: 16
                font.bold: true
                color: "white"
            }
        }
    }

    fullRepresentation: Item {
        implicitWidth: 1
        implicitHeight: 1
    }
}
