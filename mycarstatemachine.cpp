#include "mycarstatemachine.h"
#include <QDebug>

MyCarStateMachine::MyCarStateMachine()
{ 
    qDebug()<<"MyCarStateMachine constructor";
    this->connectToState("hold",this, MyCarStateMachine::holdOn);
    this->connectToEvent("startAccelerate",this, MyCarStateMachine::startAccelerate);
}

void MyCarStateMachine::holdOn()
{
    qDebug()<<"MyCarState::onHoldState";
}

void MyCarStateMachine::startAccelerate()
{
    qDebug()<<"MyCarState::startAccelerate";
}

//bool MyCarStateMachine::isRunning()
//{
//    return CarStateMachine::isRunning();
//}


