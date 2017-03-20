import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import CarStateMachine 1.0

Item {
    property alias rectangle: rectangle
    property alias mouseArea: mouseArea
    property CarStateMachine carStateMachine: CarStateMachine {
        running: true
    }
    property alias image: image

    states: [
        State {
            name: "carDriving"

            PropertyChanges {
                target: image
                source: "carDriving.png"
                visible: true
            }
        },
        State {
            name: "holdGoingToDriving"
            when: carStateMachine.holdGoingToDriving

            PropertyChanges {
                target: image
                rotation: 11
                source: "holdGoingToDriving.png"
                visible: true
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }
        },
        State {
            name: "drivingGoingToHold"
            when: carStateMachine.drivingGoingToHold

            PropertyChanges {
                target: image
                rotation: -9
                source: "drivingGoingToHold.png"
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }
        },
        State {
            name: "drivingUp"
            when: carStateMachine.drivingUp

            PropertyChanges {
                target: image
                source: "carDriving.png"
                anchors.rightMargin: 0
                anchors.bottomMargin: 47
                anchors.leftMargin: 0
                anchors.topMargin: -52
                visible: true
            }

            PropertyChanges {
                target: mouseArea
                visible: false
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }
        },
        State {
            name: "drivingDown"
            when: carStateMachine.drivingDown

            PropertyChanges {
                target: image
                source: "carDriving.png"
                anchors.rightMargin: 0
                anchors.bottomMargin: -44
                anchors.leftMargin: 0
                anchors.topMargin: 50
                visible: true
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }
        }
    ]
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        MyImage {
            id: image
        }
    }
}
