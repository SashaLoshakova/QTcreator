import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

RowLayout {
    Layout.fillWidth: true

    property alias text: divided_text.text

    Rectangle {
        Layout.fillWidth: true
        height: 1
        color: "#516CB1"
    }

    Text {
        id: divided_text

        font.family: "Nexa Text-Trial"
        font.pixelSize: 18
        font.weight: 700
        wrapMode: Text.Wrap
        color: "#2D2D2D"
    }

    Rectangle {
        Layout.fillWidth: true
        height: 1
        color: "#516CB1"
    }
}
