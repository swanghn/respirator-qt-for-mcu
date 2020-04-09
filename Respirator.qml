import QtQuick
import QtQuick.Controls.Templates

Rectangle {
    color: "black"

    Image {
        id: image
        source: "qrc:///images/main-bg.png"
        anchors.centerIn: parent
        transform: [
            Rotation {
                origin.x: image.width / 2
                origin.y: image.height / 2
                angle: -90
            }
        ]
    }

    Image {
        source: "qrc:///images/Power-state.png"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 10
    }

    LeftArea {
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }

    BottomArea {
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

    RightArea {
        id: right
        anchors.top: parent.top
    }

    CenterArea {
        anchors.left: parent.left
        anchors.leftMargin: 40
        anchors.top: right.bottom
    }
}
