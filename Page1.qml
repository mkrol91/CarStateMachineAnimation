import QtQuick 2.7

Page1Form {
    onChangeAnimationSpeed: {
        if(toFaster){ 
            console.log("++")
            csMachine.submitEvent("speedUp")
        }else {
             console.log("--")
            csMachine.submitEvent("speedDown")
        }
    }
}

