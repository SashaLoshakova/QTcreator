import QtQuick

Item {
    id: root
    width: 18
    height: 16

    property bool checked: false

    signal click

    Rectangle {
        id: button_wrapper
        radius: 5
        anchors.fill: parent

        Image {
            source: root.checked ? "pics/red_heart.svg" : "pics/heart.svg"
            width: 18
            height: 16
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
