import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

ApplicationWindow {
    id: wnd
    width: 375
    height: 812
    visible: true
    title: qsTr("BakeAssistant")
    color: "white"

    property string currentImageName: ""
    property string currentLabel: ""
    property string currentTime: ""
    property int currentRaiting: 0
    property string currentType: ""
    property bool currentFavourite: false

    // Values: ["Home", "Search", "Calculator", "Favourites"]
    property string currentPage: "Home"
    // Values: ["Cakes", "Cookies", "Pies", "Buns"]
    property string type: "Cakes"

    function clearCurrentCake() {
        wnd.currentImageName = ""
        wnd.currentLabel = ""
        wnd.currentTime = ""
        wnd.currentRaiting = 0
        wnd.currentType = ""
        wnd.currentFavourite = false
    }
    function changePage(nextPage) {
        wnd.currentPage = nextPage
        wnd.clearCurrentCake()
    }
    function changeType(newType) {
        wnd.type = newType
        wnd.clearCurrentCake()
    }

    Image {
        id: bg_logo
        source: "pics/bg_logo.svg"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        x: -113
        y: -72
    }

    MyHeader {
        id: bake_header_item
    }

    MyCurrentCacke {
        visible: wnd.currentPage === "Home/Cheesecake"

        imageName: wnd.currentImageName
        label: wnd.currentLabel
        time: wnd.currentTime
        raiting: wnd.currentRaiting
        type: wnd.currentType
        favourite: wnd.currentFavourite
    }

    MyHomePageContent {
        visible: wnd.type === "Cakes"

        listModel: listModel

        ListModel {
            id: listModel

            ListElement {
                imageName: "cheesecake"
                label: "Чизкейк Нью Йорк"
                time: "2,5 часа"
                raiting: 4
                type: "Cakes"
                nextPage: "Home/Cheesecake"
            }
            ListElement {
                imageName: "honeycake"
                label: "Медовик"
                time: "3,5 часа"
                raiting: 2
                type: "Cakes"
            }
            ListElement {
                imageName: "redvelvet"
                label: "Красный бархат"
                time: "2 часа"
                raiting: 4
                type: "Cakes"
            }
        }
    }

    // MyCurrentCacke {
    // }
    MyHomePageContent {
        visible: wnd.type === "Cookies"

        listModel: listModel1

        ListModel {
            id: listModel1

            ListElement {
                imageName: "american_cookies"
                label: "Американское печенье"
                time: "1 час"
                raiting: 5
                type: "Cookies"
            }
            ListElement {
                imageName: "buns"
                label: "Булочки"
                time: "45 минут"
                raiting: 2
                type: "Cookies"
            }
            ListElement {
                imageName: "oreo"
                label: "Печенье Oreo"
                time: "1,5 часа"
                raiting: 4
                type: "Cookies"
            }
        }
    }

    MySearchPage {
        visible: wnd.currentPage === "Search"
    }

    MyCalculatorPage {
        visible: wnd.currentPage === "Calculator"
    }

    MyBottomNavigation {
        id: bottom_navigation_item
    }
}
