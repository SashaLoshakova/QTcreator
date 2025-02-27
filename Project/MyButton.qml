import QtQuick

Item {
    id: root
    width: 250
    height: 30

    property alias text: button_text.text

    signal click

    Rectangle {
        id: button_wrapper
        color: button_mouse_area.containsPress ? Qt.darker("#516CB1",
                                                           1.15) : "#516CB1"
        radius: 5
        anchors.fill: parent

        Text {
            id: button_text
            text: qsTr("Button")
            color: "white"
            font.family: "Ubuntu"
            font.weight: 500
            font.pixelSize: 13
            anchors.centerIn: parent
        }

        MouseArea {
            id: button_mouse_area
            anchors.fill: parent
            onClicked: {
                root.click()
            }
        }
    }
}
