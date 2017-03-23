#include "mycarstatemachine.h"
#include "mainwindow.h"
#include <QGuiApplication>
#include "QApplication.h"
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc,argv);

    qmlRegisterType<MyCarStateMachine>("MyCarStateMachine",1,0,"MyCarStateMachine");

    QLatin1String mainScreen("qrc:/main.qml");
    MainWindow engine;
    engine.load(QUrl(mainScreen));

    return app.exec();
}
