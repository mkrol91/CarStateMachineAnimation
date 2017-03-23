import QtQuick 2.7
import MyCarStateMachine 1.0

Page1Form {
    onChangeAnimationSpeed: {
        if (toFaster) {
            console.log("++")
//            circularGauge.value += 25
            csMachine.submitEvent("speedUp")
        } else {
            console.log("--")
//            circularGauge.value -= 25
            csMachine.submitEvent("speedDown")
        }
    }

    onAccelerate: {
        var isRunning = csMachine.running
        var isHoldActive = csMachine.isActive("hold")
        if (!isRunning) {
            csMachine.start()
            csMachine.submitEvent("startAccelerate")
        } else if (isRunning && isHoldActive) {
            csMachine.submitEvent("startAccelerate")
        }
    }

    onBreaks: {
        var isRunning = csMachine.running
        var isHoldActive = csMachine.isActive("hold")
        if (isRunning && !isHoldActive) {
            csMachine.submitEvent("goToHold")
        }
    }
}
