import QtQuick
import QtQuick.Controls.Templates

Item {
    id: root
    width: 100
    height: 950

    readonly property int buttonHeight: 225
    property int selected: 0

    Column {
        anchors.fill: parent
        spacing: 8
        anchors.leftMargin: 10

        Button {
            width: parent.width
            height: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 3
                    source: "qrc:///images/btn-system-on.png"
                }
                Image {
                    visible: selected !== 3
                    source: "qrc:///images/btn-system-normal.png"
                }
            }

            onClicked: {
                selected = 3
            }
        }
        Button {
            width: parent.width
            height: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 2
                    source: "qrc:///images/btn-system-on.png"
                }
                Image {
                    visible: selected !== 2
                    source: "qrc:///images/btn-system-normal.png"
                }
            }

            onClicked: {
                selected = 2
            }
        }
        Button {
            width: parent.width
            height: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 1
                    source: "qrc:///images/btn-tools-on.png"
                }
                Image {
                    visible: selected !== 1
                    source: "qrc:///images/btn-tools-normal.png"
                }
            }

            onClicked: {
                selected = 1
            }
        }
        Button {
            width: parent.width
            height: buttonHeight

            contentItem: Item {
                Image {
                    visible: selected === 0
                    source: "qrc:///images/btn-Monitoring-on.png"
                }
                Image {
                    visible: selected !== 0
                    source: "qrc:///images/btn-Monitoring-normal.png"
                }
            }

            onClicked: {
                selected = 0
            }
        }
    }
}

