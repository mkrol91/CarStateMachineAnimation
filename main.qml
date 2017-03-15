import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Page1Form{
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background'))
        }
    }

}
