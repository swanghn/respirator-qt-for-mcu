import QtQuick
import QtQuick.Controls.Templates


Item {
    id: root
    width: 720
    height: 310

    readonly property int buttonHeight: 225
    property int selected: -1


    Row {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.topMargin: 20
        Button {
            id: button
            width: 90
            height: 270

            contentItem: Item {
                Image {
                    source: root.selected === 0 ?
                        Qul.image("qrc:///images/btn-Modes-on.png") :
                        Qul.image("qrc:///images/btn-modes-normal.png")
                }
            }

            onClicked: {
                if ( selected === 0) {
                    selected = -1
                } else {
                    selected = 0
                }
            }
        }

        ModesWidget {
            id: modesWidget
            opacity: selected === 0 ? 1 : 0

            width: selected === 0 ? 430 : 0
            height: 270
            Behavior on width { NumberAnimation { duration: 200} }
            Behavior on opacity { NumberAnimation { duration: 200} }
        }

        Button {
            id: controlsButton
            width: 90
            height: 270

            contentItem: Item {
                Image {
                    source: root.selected === 1 ?
                        Qul.image("qrc:///images/btn-controls-on.png") :
                        Qul.image("qrc:///images/btn-controls-normal.png")
                }
            }
            onClicked: {
                if (selected === 1) {
                    selected = -1
                } else {
                    selected = 1
                }
            }
        }

        Item {
            id: controlsWidget
            opacity: selected === 1 ? 1 : 0

            width: selected === 1 ? 430 : 0
            height: 270
            Behavior on width { NumberAnimation { duration: 200 } }
            Behavior on width { NumberAnimation { duration: 200 } }
        }

        Button {
            id: alarmsButton
            width: 90
            height: 270

            contentItem: Item {
                Image {
                    source: alarmsButton.pressed ?
                        Qul.image("qrc:///images/btn-Modes-on.png") :
                        Qul.image("qrc:///images/btn-modes-normal.png")
                }
            }
            onClicked: {
                selected = 2
            }
        }
    }
}


