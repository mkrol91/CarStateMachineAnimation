import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import CarStateMachine 1.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4

CircularGauge {
    id: circularGauge
    x: 36
    y: 25
    anchors.rightMargin: 403
    anchors.bottomMargin: 291
    anchors.fill: parent
    stepSize: 1
    maximumValue: 100

//    property bool accelerating: false
    
//    Keys.onSpacePressed: accelerating = true

//    Component.onCompleted: forceActiveFocus()

    style: CircularGaugeStyle {
        needle: Rectangle {
            y: outerRadius * 0.15
            implicitWidth: outerRadius * 0.03
            implicitHeight: outerRadius * 0.9            
            antialiasing: true
            color: Qt.rgba(0.66, 0.3, 0, 1)
        }
    }

    Behavior on value {
        NumberAnimation {
            duration: 1000
        }
    }
}
