import QtQuick
import QtQuick.Layouts

Item {
    id: root
    width: ListView.view.width
    height: 196

    property string imageName: ""
    property string label: ""
    property string time: ""
    property int raiting: 0
    property string type: ""
    property string nextPage: ""
    property bool favourite: false

    signal click

    visible: wnd.currentPage === "Home" || wnd.currentPage === "Favourites"
             && favourite

    function set_favourite() {
        favourite = !favourite
    }

    function get_star_raiting(raiting, number) {
        return `pics/star_${raiting >= number ? 'rated' : 'unrated'}.svg`
    }

    Rectangle {
        color: "white"
        anchors.fill: parent
        border.color: "#c9cdd5"
        border.width: 1
        clip: true

        MouseArea {
            anchors.fill: parent

            onClicked: {
                wnd.changePage(nextPage)
                wnd.currentImageName = root.imageName
                wnd.currentLabel = root.label
                wnd.currentTime = root.time
                wnd.currentRaiting = root.raiting
                wnd.currentFavourite = root.favourite
            }
        }

        ColumnLayout {
            anchors.fill: parent

            // Image
            Image {
                id: card_image
                source: `pics/${root.imageName}.png`
                fillMode: Image.PreserveAspectCrop
                Layout.fillWidth: true
                Layout.maximumHeight: 135
            }

            // Text
            RowLayout {
                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ColumnLayout {
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        Text {
                            id: title_1
                            text: root.label
                            font.family: "Ubuntu"
                            font.pixelSize: 16
                            font.weight: 700
                            color: "#333333"
                            Layout.leftMargin: 10
                        }

                        RowLayout {
                            spacing: 1
                            Layout.leftMargin: 10

                            Image {
                                source: root.get_star_raiting(root.raiting, 1)
                                width: 15
                                height: 15
                            }
                            Image {
                                source: root.get_star_raiting(root.raiting, 2)
                                width: 15
                                height: 15
                            }
                            Image {
                                source: root.get_star_raiting(root.raiting, 3)
                                width: 15
                                height: 15
                            }
                            Image {
                                source: root.get_star_raiting(root.raiting, 4)
                                width: 15
                                height: 15
                            }
                            Image {
                                source: root.get_star_raiting(root.raiting, 5)
                                width: 15
                                height: 15
                            }
                        }
                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    ColumnLayout {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        anchors.top: parent.top
                        anchors.right: parent.right
                        anchors.topMargin: 5
                        anchors.rightMargin: 10

                        MyHeartButton {
                            checked: root.favourite
                            onClick: root.set_favourite()
                            Layout.alignment: Qt.AlignRight
                        }

                        RowLayout {
                            spacing: 10

                            Image {
                                source: "pics/time.png"
                                width: 15
                                height: 15
                            }
                            Text {
                                text: root.time
                            }
                        }
                    }
                }
            }
        }
    }
}
