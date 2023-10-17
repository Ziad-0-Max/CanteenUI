import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: lowerScreen

    anchors {
            right: parent.right
            left: parent.left
        }
        height: parent.height * 7/12
        color: "white"

        ListModel{
            id: productList
            ListElement { name: "Chips"; image: "Chips.jpg"; price: "$1.50" }
            ListElement { name: "PepsiCan"; image: "PepsiCan.jpg" ; price: "$1.50" }
            ListElement { name: "DasaniWater"; image: "DasaniWater.png"; price: "$1.50" }
            ListElement { name: "Gum"; image: "gum.png" ; price: "$1.50" }
            ListElement { name: "Chocolate"; image: "chocolate.png" ; price: "$1.50" }
            ListElement { name: "Cookies"; image: "cookies.png"; price: "$1.50" }
            ListElement { name: "Sandwich"; image: "sandwich.png" ; price: "$1.50" }
            ListElement { name: "Fruit Snacks"; image: "fruit_snacks.png"; price: "$1.50" }
            ListElement { name: "Nuts"; image: "nuts.png" ; price: "$1.50" }
            ListElement { name: "Mints"; image: "mints.png" ; price: "$1.50" }
            ListElement { name: "Pretzels"; image: "pretzels.png" ; price: "$1.50" }
            ListElement { name: "Granola Bar"; image: "granola_bar.jpg" ; price: "$1.50" }
            ListElement { name: "Mirinda Apple"; image: "mirindaapple.jpg" }
            ListElement { name: "Monster"; image: "monster.png" }
            ListElement { name: "Birell"; image: "Birell_drink.png"}
            // Add more ListElements for other products
        }

    ListView {
        model: productList
        anchors.fill: parent
        delegate: Row {
                    width: lowerScreen.width
                    height: lowerScreen.height / 3
                    spacing: 5

                    Repeater {
                        model: 3
                        delegate: Item {
                            width: lowerScreen.width / 3
                            height: parent.height

                            Image {
                                source: model.image
                                fillMode: Image.PreserveAspectFit
                                width: parent.width
                                height: parent.height * 3/4
                                anchors.centerIn: parent
                            }

                            Column {
                                Text {
                                    text: model.name
                                    horizontalAlignment: Text.AlignHCenter
                                    font.pixelSize: 16
                                }
                                Text {
                                    text: model.price
                                    horizontalAlignment: Text.AlignHCenter
                                    font.pixelSize: 14
                                }
                            }
                        }
                    }
                }

                orientation: ListView.Vertical
                snapMode: ListView.SnapOneItem
            }
        }
