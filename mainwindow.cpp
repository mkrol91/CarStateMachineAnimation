#include "mainwindow.h"
#include <QScxmlStateMachine>
#include <iostream>
#include <QDebug>

MainWindow::MainWindow(QScxmlStateMachine *machine): csMachine(machine)
{
     qDebug()<<"Main window created";
}
