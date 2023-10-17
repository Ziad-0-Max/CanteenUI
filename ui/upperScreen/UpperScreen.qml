import QtQuick 2.15
import QtMultimedia

Rectangle {
    id: upperscreen
    anchors {
        top: parent.top
        right: parent.right
        left: parent.left
    }
    height: parent.height * 4/12
    color: "black"

    MediaPlayer {
            id: player
            source: "ad.mp4"
            audioOutput: AudioOutput {}
            videoOutput: videoOutput
            loops: 50
        }

        VideoOutput {
            id: videoOutput
            anchors.fill: parent

        }

        Component.onCompleted: {
            player.play()
        }

}
