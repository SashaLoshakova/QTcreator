import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

Item {
    anchors.fill: parent
    anchors.margins: 20
    anchors.topMargin: 137
    anchors.bottomMargin: 95
    visible: (wnd.currentPage === "Home" || wnd.currentPage === "Favourites")

    property ListModel listModel: new ListModel()

    ListView {
        anchors.fill: parent
        spacing: 10

        model: listModel
        delegate: MyCard {
            imageName: model.imageName
            label: model.label
            time: model.time
            raiting: model.raiting
            type: model.type
            nextPage: model.nextPage
        }
    }
}
