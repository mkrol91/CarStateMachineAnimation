#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QQmlApplicationEngine>

class MainWindow : public QQmlApplicationEngine
{
    Q_OBJECT
public:
    explicit MainWindow();
    void initStateMachine();
    void someFunction();
    void speedUp();
    void drivingDown();
};

#endif // MAINWINDOW_H
