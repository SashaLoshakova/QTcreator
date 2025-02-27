import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

RowLayout {
    spacing: 5

    property alias text: unnumbered_text.text

    Rectangle {
        width: 5
        height: 5
        radius: 5
        color: "black"
    }

    Text {
        id: unnumbered_text

        font.family: "Nexa Text-Trial"
        font.pixelSize: 14
        font.weight: 200
        wrapMode: Text.Wrap
        color: "#2D2D2D"
    }
}
