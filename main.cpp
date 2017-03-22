#include "mystatemachine.h"
#include "mainwindow.h"
#include <QGuiApplication>

int main(int argc, char *argv[])
{

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc,argv);


    qmlRegisterType<CarStateMachine>("CarStateMachine",1,0,"CarStateMachine");
    CarStateMachine csMachine;
    MainWindow engine(&csMachine);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));   
    engine.initStateMachine();

    return app.exec();
}
