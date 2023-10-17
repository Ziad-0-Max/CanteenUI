    import QtQuick 2.15

Rectangle {
    id: bottomBar
    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom

    }
    height: parent.height / 12
    color: "black"

    Image {
        id: homeButton
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: parent.width/6 - width/2
            bottomMargin: 30
        }
        height: parent.height * 0.5
        fillMode: Image.PreserveAspectFit
       source: "homeIcon.png"
    }

    Image {
        id: cartButton
        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: parent.width/2 - width/2
            bottomMargin: 30

        }
        height: parent.height * 0.5
        fillMode: Image.PreserveAspectFit
       source: "cart.png"
    }

    Image {
        id: settingsButton
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: parent.width/6 - width/2
            bottomMargin: 30
        }
        height: parent.height * 0.8
        fillMode: Image.PreserveAspectFit
       source: "menu.png"
    }

}
