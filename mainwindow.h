#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QQmlApplicationEngine>

QT_BEGIN_NAMESPACE
class QScxmlStateMachine;
QT_END_NAMESPACE

class MainWindow : public QQmlApplicationEngine
{
    Q_OBJECT
public:
    explicit MainWindow(QScxmlStateMachine *machine);

private:
    QScxmlStateMachine *csMachine;
};

#endif // MAINWINDOW_H
