import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import CarStateMachine 1.0

Image {
    id: image
    anchors.fill: parent
    source: "carHold.png"
    Component.onCompleted: {
        console.log("MY IMAGE")
    }

    transitions: [
        Transition {
            from: "*"
            to: "drivingGoingToHold"
        }
    ]

    Behavior on rotation {
        NumberAnimation {
            easing.type: Easing.InQuad
        }
    }

    Behavior on anchors.bottomMargin {
        NumberAnimation {
            easing.type: Easing.InQuad
            duration: 200
        }
    }

    Behavior on anchors.topMargin {
        NumberAnimation {
            easing.type: Easing.InQuad
            duration : 200
        }
    }

}
