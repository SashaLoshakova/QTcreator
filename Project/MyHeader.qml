import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Item {
    id: bake_header_item
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    implicitHeight: 117
    z: 9999

    Rectangle {
        anchors.fill: parent
        color: "#516CB1"
        bottomLeftRadius: 12
        bottomRightRadius: 12

        ColumnLayout {
            anchors.fill: parent
            anchors.topMargin: 10
            anchors.bottomMargin: 10

            Image {
                id: small_logo_image
                Layout.fillWidth: true
                anchors.top: parent.top
                source: `pics/small_logo.svg`
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                id: bale_header_divider
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter
                anchors.top: small_logo_image.bottom
                anchors.topMargin: 10
                height: 1
                color: "#6f84ba"
            }

            // Home
            Item {
                id: header_types_item

                anchors.top: bale_header_divider.bottom
                anchors.topMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                visible: wnd.currentPage === "Home"

                RowLayout {
                    width: bake_header_item.width
                    height: 25

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "transparent"

                        Text {
                            anchors.centerIn: parent
                            text: "Торты"
                            font.pixelSize: 18
                            font.family: "Nexa Text-Trial"
                            font.weight: wnd.type === "Cakes" ? 900 : 200
                            color: "white"
                            Layout.alignment: Qt.AlignHCenter
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                wnd.changeType("Cakes")
                            }
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "transparent"

                        Text {
                            anchors.centerIn: parent
                            text: "Печенье"
                            font.pixelSize: 18
                            font.family: "Nexa Text-Trial"
                            font.weight: wnd.type === "Cookies" ? 900 : 200
                            color: "white"
                            Layout.alignment: Qt.AlignHCenter
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                wnd.changeType("Cookies")
                            }
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "transparent"

                        Text {
                            anchors.centerIn: parent
                            text: "Пироги"
                            font.pixelSize: 18
                            font.family: "Nexa Text-Trial"
                            font.weight: wnd.type === "Pies" ? 900 : 200
                            color: "white"
                            Layout.alignment: Qt.AlignHCenter
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                wnd.changeType("Pies")
                            }
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "transparent"

                        Text {
                            anchors.centerIn: parent
                            text: "Булочки"
                            font.pixelSize: 18
                            font.family: "Nexa Text-Trial"
                            font.weight: wnd.type === "Buns" ? 900 : 200
                            color: "white"
                            Layout.alignment: Qt.AlignHCenter
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                wnd.changeType("Buns")
                            }
                        }
                    }
                }
            }

            // Search
            Text {
                text: "Поиск"
                font.pixelSize: 18
                font.family: "Nexa Text-Trial"
                font.weight: 900
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                visible: wnd.currentPage === "Search"
            }

            // Calculator
            Text {
                text: "Калькулятор ингридиентов"
                font.pixelSize: 18
                font.family: "Nexa Text-Trial"
                font.weight: 900
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                visible: wnd.currentPage === "Calculator"
            }

            // Favourites
            Text {
                text: "Избранное"
                font.pixelSize: 18
                font.family: "Nexa Text-Trial"
                font.weight: 900
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                visible: wnd.currentPage === "Favourites"
            }

            // Current Cake
            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter
                visible: wnd.currentPage.includes("/")

                MyButton {
                    text: "<"
                    width: 35
                    onClick: {
                        wnd.changePage("Home")
                    }
                }

                Text {
                    text: wnd.currentLabel
                    font.pixelSize: 18
                    font.family: "Nexa Text-Trial"
                    font.weight: 900
                    color: "white"
                }
            }
        }
    }
}
