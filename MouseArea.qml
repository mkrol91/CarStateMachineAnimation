import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import MyCarStateMachine 1.0

MouseArea {
    id: mouseArea
    anchors.fill: parent

    onClicked: {
        console.log("asdf")
    }
}
