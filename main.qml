import QtQuick
import QtQuick.Window
import QtMultimedia


import "ui/bottomBar"
import "ui/upperScreen"
import "ui/lowerScreen"


Window {
    width: 720
    height: 1280

    visible: true
    title: "Canteen Vending"



    UpperScreen {
        id: upperScreen
    }

    LowerScreen {
        id: lowerScreen
        anchors {
            top: upperScreen.bottom
        }
    }

    BottomBar {
        id: bottomBar
    }


}
