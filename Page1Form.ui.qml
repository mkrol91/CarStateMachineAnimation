import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import CarStateMachine 1.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4

Item {
    property alias rectangle: rectangle
    property alias mouseArea: mouseArea
    property CarStateMachine carStateMachine: CarStateMachine {
        id: csMachine
        running: false
    }
    property alias csMachine: csMachine

    property alias image: image

    signal changeAnimationSpeed(bool toFaster)
    signal accelerate
    signal breaks
    property alias circularGauge: circularGauge
    transformOrigin: Item.Center

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
                anchors.bottomMargin: 10
                anchors.leftMargin: 0
                anchors.topMargin: -13
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

            PropertyChanges {
                target: circularGauge
                x: 8
                y: 8
            }
        },
        State {
            name: "drivingDown"
            when: carStateMachine.drivingDown

            PropertyChanges {
                target: image
                source: "carDriving.png"
                anchors.rightMargin: 0
                anchors.bottomMargin: -13
                anchors.leftMargin: 0
                anchors.topMargin: 16
                visible: true
            }

            PropertyChanges {
                target: rectangle
                color: "#ffffff"
            }
        }
    ]
    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        MyImage {
            id: image
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        CircularGauge {
            id: circularGauge
            x: 8
            y: 8
            anchors.rightMargin: 456
            anchors.bottomMargin: 315
            width: 180
            height: 180
            stepSize: 1
            maximumValue: 100

            style: CircularGaugeStyle {
                needle: Rectangle {
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    color: "#00ff00"
                    antialiasing: true
                }
            }
        }
    }

    MouseArea {
        id: mouseArea
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent
    }
}
