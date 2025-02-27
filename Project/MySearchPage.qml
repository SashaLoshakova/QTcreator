import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Item {
    id: search_page_item

    anchors.fill: parent
    anchors.margins: 20
    anchors.topMargin: 137
    anchors.bottomMargin: 95

    Rectangle {
        id: search_input_rect

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 42
        border.color: search_input_text_area.focus ? "#516CB1" : "#c9cdd5"
        border.width: search_input_text_area.focus ? 2 : 1
        topLeftRadius: 10
        topRightRadius: 10
        bottomLeftRadius: search_input_text_area.focus ? 0 : 10
        bottomRightRadius: search_input_text_area.focus ? 0 : 10

        TextInput {
            id: search_input_text_area

            anchors.fill: search_input_rect
            anchors.margins: 15
            text: "Найти..."
            color: "#c9cdd5"
            font.family: "Ubuntu"
            font.pixelSize: 14
        }
    }

    Rectangle {
        id: search_history_items

        anchors.top: search_input_rect.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        implicitHeight: search_history_cl.height
        border.color: "#c9cdd5"
        border.width: 1
        visible: search_input_text_area.focus
        bottomLeftRadius: 10
        bottomRightRadius: 10

        ColumnLayout {
            id: search_history_cl

            anchors.left: parent.left
            anchors.right: parent.right

            spacing: 0

            RowLayout {
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                Layout.topMargin: 10
                Layout.bottomMargin: 15

                Image {
                    source: "pics/small_search.svg"
                    width: 12
                    height: 12
                }

                Text {
                    text: "Летный Торт"
                    color: "#2D2D2D"
                    font.family: "Ubuntu"
                    font.pixelSize: 13
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                height: 1
                color: "#f1f2f4"
            }

            RowLayout {
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                Layout.topMargin: 10
                Layout.bottomMargin: 15

                Image {
                    source: "pics/small_search.svg"
                    width: 12
                    height: 12
                }

                Text {
                    text: "Чизкейк Нью Йорк"
                    color: "#2D2D2D"
                    font.family: "Ubuntu"
                    font.pixelSize: 13
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                height: 1
                color: "#f1f2f4"
            }

            RowLayout {
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                Layout.topMargin: 10
                Layout.bottomMargin: 15

                Image {
                    source: "pics/small_search.svg"
                    width: 12
                    height: 12
                }

                Text {
                    text: "Прага"
                    color: "#2D2D2D"
                    font.family: "Ubuntu"
                    font.pixelSize: 13
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                height: 1
                color: "#f1f2f4"
            }

            RowLayout {
                Layout.leftMargin: 15
                Layout.rightMargin: 15
                Layout.topMargin: 10
                Layout.bottomMargin: 15

                Image {
                    source: "pics/small_search.svg"
                    width: 12
                    height: 12
                }

                Text {
                    text: "Курабье"
                    color: "#2D2D2D"
                    font.family: "Ubuntu"
                    font.pixelSize: 13
                }
            }
        }
    }
}
