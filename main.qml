import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    title: qsTr("Hello World")
    minimumWidth: 500
    minimumHeight: 500

    Page1{
        id: page1
        anchors.fill: parent
        focus: true      

        Keys.onPressed: {
            if(event.key === Qt.Key_Plus){
                changeAnimationSpeed(true);
                console.log("inc")
            }else if (event.key === Qt.Key_Minus){
               changeAnimationSpeed(false);
                console.log("dec")
            }else if (event.key === Qt.Key_Left){
                accelerate();
            }else if (event.key === Qt.Key_Right){
                breaks();
            }
          }

    }

}
