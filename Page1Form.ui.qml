import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias rectangle: rectangle
    property alias mouseArea: mouseArea
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Image {
            id: image
            anchors.fill: parent
            source: "carHold.png"
        }
    }

    Image {
        id: image1
        anchors.fill: parent
        source: "carDriving.png"
        opacity: 0
    }

    Image {
        id: image2
        x: 8
        y: 59
        source: "holdGoingToDriving.png"
        opacity: 0
    }

    Image {
        id: image3
        anchors.fill: parent
        source: "drivingGoingToHold.png"
        opacity: 0
    }
    states: [
        State {
            name: "carDriving"

            PropertyChanges {
                target: image1
                x: -25
                y: 22
                width: 691
                height: 436
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                opacity: 1
            }

            PropertyChanges {
                target: image
                visible: false
            }
        },
        State {
            name: "holdGoingToDriving"

            PropertyChanges {
                target: image2
                x: 36
                y: 48
                width: 568
                height: 385
                scale: 1
                rotation: 11
                opacity: 1
            }

            PropertyChanges {
                target: image
                visible: false
            }
        },
        State {
            name: "drivingGoingToHold"

            PropertyChanges {
                target: image3
                x: 10
                y: 30
                width: 620
                height: 420
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                rotation: -15
                opacity: 1
            }
        }
    ]
}
