import QtQuick
import QtQuick.Controls.Templates

Item {
    id: root

    property int vt: 340
    property int peep: 10
    property int oxy: 21

    Row {
        anchors.fill: parent
        spacing: 22

        Image {
            width: 86
            height: 232
            source: "qrc:///images/current-mode.png"
            anchors.verticalCenter: parent.verticalCenter
        }

        Item {
            width: 90
            height: 270
            Column {
                anchors.fill: parent
                anchors.leftMargin: 5

                Button {
                    id: btnVTPlus
                    width: parent.width
                    height: 70
                    contentItem: Image {
                        source: btnVTPlus.pressed ?
                            Qul.image("qrc:///images/btn-add-down.png") :
                            Qul.image("qrc:///images/btn-add-normal.png")

                    }
                    onClicked: root.vt++;
                }

                Item {
                    id: vt
                    width: parent.width
                    height: 130

                    Text {
                        text: root.vt.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        x: 23
                        y: 4
                        transform: [
                            Rotation {
                                origin.x: vt.width / 2
                                origin.y: vt.height / 2
                                angle: -90
                            }
                        ]
                    }
                    Image {
                        y: 56
                        x: -10
                        source: "qrc:///images/Vt-title.png"
                    }
                }

                Button {
                    id: btnVTMinus
                    width: parent.width
                    height: 70
                    contentItem: Image {
                        source: btnVTMinus.pressed ?
                            Qul.image("qrc:///images/btn-remove-down.png") :
                            Qul.image("qrc:///images/btn-remove-normal.png")

                    }
                    onClicked: root.vt--;
                }
            }
        }

        Item {
            width: 90
            height: 270
            Column {
                anchors.fill: parent
                anchors.leftMargin: 5

                Button {
                    id: peepPlus
                    width: parent.width
                    height: 70
                    contentItem: Image {
                        source: peepPlus.pressed ?
                            Qul.image("qrc:///images/btn-add-down.png") :
                            Qul.image("qrc:///images/btn-add-normal.png")

                    }
                    onClicked: root.peep++;
                }

                Item {
                    id: peep
                    width: parent.width
                    height: 130

                    Text {
                        text: root.peep.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        x: 23
                        y: -15
                        transform: [
                            Rotation {
                                origin.x: peep.width / 2
                                origin.y: peep.height / 2
                                angle: -90
                            }
                        ]
                    }
                    Image {
                        y: 20
                        x: -10
                        source: "qrc:///images/peepcpap-title.png"
                    }
                }

                Button {
                    id: peepMinus
                    width: parent.width
                    height: 70
                    contentItem: Image {
                        source: peepMinus.pressed ?
                            Qul.image("qrc:///images/btn-remove-down.png") :
                            Qul.image("qrc:///images/btn-remove-normal.png")

                    }
                    onClicked: root.peep--;
                }
            }
        }
        Item {
            width: 90
            height: 270
            Column {
                anchors.fill: parent
                anchors.leftMargin: 5

                Button {
                    id: btnOxyPlus
                    width: parent.width
                    height: 70
                    contentItem: Image {
                        source: btnOxyPlus.pressed ?
                            Qul.image("qrc:///images/btn-add-down.png") :
                            Qul.image("qrc:///images/btn-add-normal.png")

                    }
                    onClicked: root.oxy++;
                }

                Item {
                    id: oxy
                    width: parent.width
                    height: 130

                    Text {
                        text: root.oxy.toString()
                        color: "#5BCEBD"
                        font.pixelSize: 50
                        x: 23
                        y: -15
                        transform: [
                            Rotation {
                                origin.x: oxy.width / 2
                                origin.y: oxy.height / 2
                                angle: -90
                            }
                        ]
                    }
                    Image {
                        y: 42
                        x: -10
                        source: "qrc:///images/Oxygen-title.png"
                    }
                }

                Button {
                    id: btnOxyMinus
                    width: parent.width
                    height: 70
                    contentItem: Image {
                        source: btnOxyMinus.pressed ?
                            Qul.image("qrc:///images/btn-remove-down.png") :
                            Qul.image("qrc:///images/btn-remove-normal.png")

                    }
                    onClicked: root.oxy--;
                }
            }
        }
    }
}

