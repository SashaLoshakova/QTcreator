import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Item {
    id: nav_button_item
    implicitWidth: 40
    implicitHeight: 40

    property string imageName: ""
    property string pageName: ""

    signal click

    Rectangle {
        id: nav_button_wrapper
        anchors.fill: parent
        color: "transparent"

        Image {
            anchors.fill: parent
            source: `pics/${nav_button_item.imageName}${wnd.currentPage
                    === pageName ? '_fill' : ''}.svg`
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: nav_button_mouse_area
            anchors.fill: parent
            onClicked: {
                nav_button_item.click()
            }
        }
    }
}
