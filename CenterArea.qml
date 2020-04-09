import QtQuick
import QtQuick.Controls.Templates

Item {
    id: root
    width: 600
    height: 600

    property real xScale: 1
    property real yScale: 1
    property real sign: 1

    property real threshold: 0.07
    property real lungsOpacity: 1
    property real opacityStep: 0.1

    Timer {
        id: lungsScaler
        running: true
        repeat: true
        interval: 33

        onTriggered: {
            root.xScale += sign * 0.001
            root.yScale += sign * 0.001

            if (root.xScale > 1 + threshold) {
                sign = -1
                // opacity decreases
            }

            if (root.xScale < 1 - threshold) {
                sign = 1
                // opacity increases
            }

            lungsOpacity = 4.28571 * root.xScale - 3.58571
        }
    }

    Row {
        anchors.fill: parent
        anchors.topMargin: 20
        spacing: 38

        Item {
            width: 212
            height: 602
            Image {
                width: 212
                height: 602
                source: "qrc:///images/static-graph.png"
            }
        }

        Item {
            width: 382
            height: 602

            Image {
                id: dots
                width: 8
                height: 32
                source: "qrc:///images/change-view.png"
                anchors.top: parent.top
                anchors.topMargin: 38
            }

            Item {
                width: 300
                height: 345
                anchors.top: dots.bottom
                x: -20
                Image {
                    source: "qrc:///images/center.png"
                    anchors.centerIn: parent
                }
                Image {
                    id: left
                    source: "qrc:///images/left.png"
                    x: 90
                    y: 200
                    anchors.centerIn: parent
                    opacity: root.lungsOpacity
                    transform: Scale {
                        yScale: root.yScale
                        xScale: root.xScale
                        origin.x: left.implicitWidth / 2
                        origin.y: left.implicitHeight / 2
                    }
                }

                Image {
                    id: right
                    x: 90
                    y: 20
                    source: "qrc:///images/right.png"
                    anchors.centerIn: parent
                    opacity: root.lungsOpacity
                    transform: Scale {
                        yScale: root.yScale
                        xScale: root.xScale
                        origin.x: right.implicitWidth / 2
                        origin.y: right.implicitHeight / 2
                    }
                }
            }

            Image {
                source: "qrc:///images/extra-data.png"
                anchors.bottom: parent.bottom
            }
        }
    }
}
