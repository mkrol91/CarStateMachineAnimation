import QtQuick 2.7

Page1Form {
    onChangeAnimationSpeed: {
        if (toFaster) {
            console.log("++")
            circularGauge.value +=25
            csMachine.submitEvent("speedUp")
        } else {
            console.log("--")
            circularGauge.value -=25
            csMachine.submitEvent("speedDown")
        }
    }

    onAccelerate: {
        csMachine.start()
        csMachine.submitEvent("startAccelerate")
    }

    onBreaks: {
        csMachine.submitEvent("goToHold")
        circularGauge.value = 0
    }
}
