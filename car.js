function incDriveCounter() {
    driveCounter++;
}

function driveCounterReset(){
    driveCounter = 0;
}

function incSpeed(){
    var speedAsInt = parseInt(speed)
    speedAsInt -=25
    speed = speedAsInt +"ms"
}

function decSpeed(){
    var speedAsInt = parseInt(speed)
    speedAsInt +=25
    speed = speedAsInt +"ms"
}

