import QtQuick
import QtQuick.Controls.Templates

Item {
    id: root
    width: 600
    height: 310

    property int ppeak: 28
    property real expMinVol: 5.1
    property int vte: 346
    property int fTotal: 15

    Timer {
        running: true
        repeat: true
        interval: 500
        onTriggered: {
            var r = Math.floor(Math.random() * 4)
            if (r === 0) {
                r = Math.floor(Math.random() * 3) - 1
                ppeak = ppeak +  r
            } else if(r === 1) {
            } else if(r === 2) {
                r = Math.floor(Math.random() * 3) - 1
                vte = vte +  r
            } else if(r === 3) {
                r = Math.floor(Math.random() * 3) - 1
                fTotal = fTotal +  r
            }
        }
    }

    Row {
        spacing: 2
        anchors.fill: parent
        Image {
            source: "qrc:///images/ppeak.png"
            anchors.bottom: parent.bottom

            Text {
                id:ppeakText
                text: root.ppeak.toString()
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 15
                anchors.leftMargin: 10
                font.pixelSize: 58
                color: "white"
                transform: [
                    Rotation {
                        origin.x: ppeakText.width / 2
                        origin.y: ppeakText.height / 2
                        angle: -90
                    }
                ]
            }
        }

        Image {
            source: "qrc:///images/expminvol.png"
            anchors.bottom: parent.bottom

            Text {
                id:expText
                text: root.expMinVol.toString()
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 15
                anchors.leftMargin: 10
                font.pixelSize: 58
                color: "white"
                transform: [
                    Rotation {
                        origin.x: expText.width / 2
                        origin.y: expText.height / 2
                        angle: -90
                    }
                ]
            }
        }

        Image {
            source: "qrc:///images/vte.png"
            anchors.bottom: parent.bottom
            Text {
                id: vteText
                text: root.vte.toString()
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 30
                anchors.leftMargin: 10
                font.pixelSize: 58
                color: "white"
                transform: [
                    Rotation {
                        origin.x: vteText.width / 2
                        origin.y: vteText.height / 2
                        angle: -90
                    }
                ]
            }
        }
        Image {
            source: "qrc:///images/ftotal.png"
            anchors.bottom: parent.bottom
            Text {
                id:ftotalText
                text: root.fTotal.toString()
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 15
                anchors.leftMargin: 10
                font.pixelSize: 58
                color: "white"
                transform: [
                    Rotation {
                        origin.x: ftotalText.width / 2
                        origin.y: ftotalText.height / 2
                        angle: -90
                    }
                ]
            }
        }
    }
}
