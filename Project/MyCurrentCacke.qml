import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

ScrollView {
    id: current_cacke

    anchors.fill: parent
    anchors.margins: 20
    anchors.topMargin: 137
    anchors.bottomMargin: 95

    contentHeight: current_cacke_info_cl.height

    property string imageName: ""
    property string label: ""
    property string time: ""
    property int raiting: 0
    property string type: ""
    property bool favourite: false

    function set_favourite() {
        favourite = !favourite
    }

    function get_star_raiting(raiting, number) {
        return `pics/star_${raiting >= number ? 'rated' : 'unrated'}.svg`
    }

    Item {
        anchors.fill: parent

        ColumnLayout {
            id: current_cacke_info_cl

            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 10

            // Image
            Image {
                id: card_image
                source: `pics/cheesecake.png`
                fillMode: Image.PreserveAspectCrop
                Layout.fillWidth: true
            }

            // Text
            RowLayout {
                Layout.fillWidth: true

                RowLayout {
                    Layout.fillWidth: true
                    spacing: 0

                    RowLayout {
                        spacing: 2

                        Image {
                            source: current_cacke.get_star_raiting(
                                        current_cacke.raiting, 1)
                            width: 15
                            height: 15
                        }
                        Image {
                            source: current_cacke.get_star_raiting(
                                        current_cacke.raiting, 2)
                            width: 15
                            height: 15
                        }
                        Image {
                            source: current_cacke.get_star_raiting(
                                        current_cacke.raiting, 3)
                            width: 15
                            height: 15
                        }
                        Image {
                            source: current_cacke.get_star_raiting(
                                        current_cacke.raiting, 4)
                            width: 15
                            height: 15
                        }
                        Image {
                            source: current_cacke.get_star_raiting(
                                        current_cacke.raiting, 5)
                            width: 15
                            height: 15
                        }
                    }

                    Text {
                        text: "отзывы"
                        font.family: "Ubuntu"
                        font.pixelSize: 14
                        font.weight: 200
                        color: "#333333"
                        Layout.leftMargin: 10
                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    MyHeartButton {
                        anchors.right: parent.right

                        checked: current_cacke.favourite
                        onClick: current_cacke.set_favourite()
                    }
                }
            }

            Text {
                Layout.fillWidth: true
                text: "<b>Чизкейк</b> — классическое блюдо американской кухни, которое прочно вошло в меню кафешек всего мира. Его достаточно просто готовить (если чётко следовать всем инструкциям в рецепте), а в результате получается невероятно вкусный и нежный десерт. Мы будем делать классику жанра — Чизкейк Нью-Йорк."
                font.family: "Ubuntu"
                font.pixelSize: 14
                wrapMode: Text.Wrap
                color: "#2D2D2D"
            }

            MyDividedText {
                text: "Ингридиенты"
            }

            ColumnLayout {
                Layout.fillWidth: true

                MyUnnumberedRow {
                    Layout.fillWidth: true
                    text: "печенье песочное 300 г"
                }

                MyUnnumberedRow {
                    Layout.fillWidth: true
                    text: "масло сливочное 100 г"
                }

                MyUnnumberedRow {
                    Layout.fillWidth: true
                    text: "сыр сливочный 600 г"
                }

                MyUnnumberedRow {
                    Layout.fillWidth: true
                    text: "сахар 150 г"
                }

                MyUnnumberedRow {
                    Layout.fillWidth: true
                    text: "яйца 3 шт."
                }

                MyUnnumberedRow {
                    Layout.fillWidth: true
                    text: "сливки 30-35 200 мл"
                }
            }

            MyDividedText {
                text: "Приготовление"
            }

            Text {
                Layout.fillWidth: true
                text: "Подготавливаем все необходимые ингредиенты для приготовления чизкейка Нью-Йорк. Яйца (3 шт.), сыр (600 г), сливки (200 мл) и масло (100 г) достаём из холодильника заранее, за полчаса до готовки и оставляем их «нагреваться» до комнатной температуры.

Минут через 30 берёмся за основу — песочный слой. Для этого берём любое песочное печенье (300 г), какое только нравится. Светлое, тёмное, с орехами — любое.

Готовим основу. Для этого нужно перемолоть печенье в крошку. Самые простые способы — блендер (измельчитель) или кухонный комбайн. Способ чуть сложнее: крошим и прокатываем скалкой печенье, убранное в пакет.

К этому моменту наше масло самостоятельно растаяло, стало пластичным и готово к дальнейшей работе. Не рекомендуется масло растапливать, так как оно распределяется в песочной крошке в виде капель, плохо удерживается и при выпекании будет вытекать. Соединяем крошку и масло. Должна получиться сыпучая масса.

Высыпаем нашу заготовку в форму. Лучше всего использовать разъёмную, у меня форма диаметром 24 см. Утрамбовываем равномерный слой чем-то плоским — например дном алюминиевой кружки. Можно делать с бортиками, можно — без, я люблю когда чизкейк с бортиком. Высоту бортиков регулируем самостоятельно. Готовую основу ставим на 5-10 минут в духовку, разогретой до 180-200°С. После этого вытаскиваем из духовки, немного выравниваем стенки и дно и оставляем остывать."
                font.family: "Ubuntu"
                font.pixelSize: 14
                wrapMode: Text.Wrap
                color: "#2D2D2D"
            }
        }
    }
}
