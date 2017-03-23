#include "mainwindow.h"
#include <QScxmlStateMachine>
#include <QDebug>

MainWindow::MainWindow()
{        
     qDebug()<<"Main window created";       
}

void MainWindow::initStateMachine()
{
//       csMachine->connectToState("hold",this, MainWindow::someFunction);
//       csMachine->connectToEvent("goDriving",this,MainWindow::speedUp);
//       csMachine->submitEvent("startAccelerate");
//       csMachine->connectToState("drivingUp",this,MainWindow::drivingDown);
//       csMachine->start();
}

void MainWindow::someFunction()
{
    qDebug()<<"some function";
}

void MainWindow::speedUp()
{
    qDebug()<<"speedUp";
}

void MainWindow::drivingDown()
{
    qDebug() <<"driving down debug";
}

