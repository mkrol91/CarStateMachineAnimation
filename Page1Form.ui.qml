import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias mouseArea: mouseArea
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
}
