import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window

ScrollView {
    anchors.fill: parent
    anchors.margins: 20
    anchors.topMargin: 137
    anchors.bottomMargin: 95

    contentHeight: my_calculator_page.height

    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

    Item {
        anchors.fill: parent

        ColumnLayout {
            id: my_calculator_page

            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 20

            ColumnLayout {
                Layout.fillWidth: true

                Text {
                    Layout.fillWidth: true
                    text: "Как пользоваться?"
                    font.family: "Ubuntu"
                    font.pixelSize: 16
                    font.weight: 600
                    color: "#2D2D2D"
                }

                Text {
                    Layout.fillWidth: true
                    width: 300
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."
                    font.family: "Ubuntu"
                    font.pixelSize: 14
                    font.weight: 300
                    wrapMode: Text.Wrap
                    color: "#2D2D2D"
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: current_recipe.height + 25 + 5
                color: "white"
                border.color: "#c9cdd5"
                border.width: 1
                radius: 10

                ColumnLayout {
                    id: current_recipe

                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 15
                    spacing: 10

                    Text {
                        Layout.fillWidth: true
                        text: "Текущий рецепт"
                        font.family: "Ubuntu"
                        font.pixelSize: 16
                        font.weight: 600
                        color: "#516CB1"
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 10

                        Text {
                            text: "Ингридиент"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5

                            TextInput {
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.leftMargin: 5
                                anchors.rightMargin: 5
                                anchors.verticalCenter: parent.verticalCenter
                                text: "Выбрать..."
                                color: "#c9cdd5"
                                font.family: "Ubuntu"
                                font.pixelSize: 14
                            }
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 10

                        Text {
                            text: "Количество"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5

                            TextInput {
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.leftMargin: 5
                                anchors.rightMargin: 5
                                anchors.verticalCenter: parent.verticalCenter
                                text: "Выбрать..."
                                color: "#c9cdd5"
                                font.family: "Ubuntu"
                                font.pixelSize: 14
                            }
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5

                            TextInput {
                                anchors.centerIn: parent
                                anchors.leftMargin: 5
                                anchors.rightMargin: 5
                                text: "грамм"
                                color: "#2D2D2D"
                                font.family: "Ubuntu"
                                font.pixelSize: 14
                            }
                        }
                    }

                    MyButton {
                        Layout.fillWidth: true
                        text: "Добавить ингридиент"
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: current_recipe_2.height + 25 + 5
                color: "white"
                border.color: "#c9cdd5"
                border.width: 1
                radius: 10

                ColumnLayout {
                    id: current_recipe_2

                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 15
                    spacing: 10

                    Text {
                        Layout.fillWidth: true
                        text: "Текущая форма"
                        font.family: "Ubuntu"
                        font.pixelSize: 16
                        font.weight: 600
                        color: "#516CB1"
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 40

                        Text {
                            text: "Тип"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        RowLayout {
                            Layout.fillWidth: true
                            spacing: 40

                            RadioButton {
                                text: "Круг"
                            }
                            RadioButton {
                                checked: true
                                text: "Квадрат"
                            }
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 10

                        Text {
                            text: "Диаметр"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5
                        }

                        Text {
                            text: "Высота"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5

                            TextInput {
                                anchors.centerIn: parent
                                anchors.leftMargin: 5
                                anchors.rightMargin: 5
                                text: "см"
                                color: "#2D2D2D"
                                font.family: "Ubuntu"
                                font.pixelSize: 14
                            }
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: current_recipe_3.height + 25 + 5
                color: "white"
                border.color: "#c9cdd5"
                border.width: 1
                radius: 10

                ColumnLayout {
                    id: current_recipe_3

                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 15
                    spacing: 10

                    Text {
                        Layout.fillWidth: true
                        text: "Новая форма"
                        font.family: "Ubuntu"
                        font.pixelSize: 16
                        font.weight: 600
                        color: "#516CB1"
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 40

                        Text {
                            text: "Тип"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        RowLayout {
                            Layout.fillWidth: true
                            spacing: 40

                            RadioButton {
                                text: "Круг"
                            }
                            RadioButton {
                                checked: true
                                text: "Квадрат"
                            }
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 10

                        Text {
                            text: "Диаметр"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5
                        }

                        Text {
                            text: "Высота"
                            font.family: "Ubuntu"
                            font.pixelSize: 13
                            font.weight: 500
                            color: "#2D2D2D"
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5
                        }

                        Rectangle {
                            Layout.fillWidth: true
                            height: 25
                            border.color: "#c9cdd5"
                            border.width: 1
                            radius: 5

                            TextInput {
                                anchors.centerIn: parent
                                anchors.leftMargin: 5
                                anchors.rightMargin: 5
                                text: "см"
                                color: "#2D2D2D"
                                font.family: "Ubuntu"
                                font.pixelSize: 14
                            }
                        }
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: current_recipe_4.height + 25 + 5
                color: "white"
                border.color: "#c9cdd5"
                border.width: 1
                radius: 10

                ColumnLayout {
                    id: current_recipe_4

                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.margins: 15
                    spacing: 10

                    Text {
                        Layout.fillWidth: true
                        text: "Новый рецепт"
                        font.family: "Ubuntu"
                        font.pixelSize: 16
                        font.weight: 600
                        color: "#516CB1"
                    }

                    Text {
                        text: "Ваш новый рецепт появится автоматически!"
                        font.family: "Ubuntu"
                        font.pixelSize: 13
                        font.weight: 500
                        color: "#2D2D2D"
                    }
                }
            }
        }
    }
}
