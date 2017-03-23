function incSpeed() {
    var speedAsFloat = parseFloat(speed)
    var newSpeed = speedAsFloat * (6 / 5)
    speed = parseInt(newSpeed) + "ms"
}

function decSpeed() {
    var speedAsFloat = parseFloat(speed)
    var newSpeed = speedAsFloat * (5 / 6)
    speed = parseInt(newSpeed) + "ms"
}
