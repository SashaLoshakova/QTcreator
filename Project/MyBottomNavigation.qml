import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Item {
    id: bottom_navigation_item
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    implicitHeight: 75
    z: 9999

    Rectangle {
        anchors.fill: parent
        color: "#516CB1"
        topLeftRadius: 12
        topRightRadius: 12

        RowLayout {
            anchors.fill: parent

            MyNavButton {
                imageName: "nav_home"
                pageName: "Home"
                onClick: wnd.changePage("Home")
                Layout.alignment: Qt.AlignHCenter
            }
            MyNavButton {
                imageName: "nav_search"
                pageName: "Search"
                onClick: wnd.changePage("Search")
                Layout.alignment: Qt.AlignHCenter
            }
            MyNavButton {
                imageName: "nav_calculator"
                pageName: "Calculator"
                onClick: wnd.changePage("Calculator")
                Layout.alignment: Qt.AlignHCenter
            }
            MyNavButton {
                imageName: "nav_favourites"
                pageName: "Favourites"
                onClick: wnd.changePage("Favourites")
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }
}
