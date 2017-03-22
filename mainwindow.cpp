#include "mainwindow.h"
#include <QScxmlStateMachine>
#include <iostream>
#include <QDebug>

MainWindow::MainWindow(QScxmlStateMachine *machine): csMachine(machine)
{        
     qDebug()<<"Main window created";       
}

void MainWindow::initStateMachine()
{
       csMachine->start();

       csMachine->connectToState("hold",this, MainWindow::someFunction);

}

void MainWindow::someFunction()
{

}
