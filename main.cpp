#include "mycarstatemachine.h"
#include "mainwindow.h"
#include <QGuiApplication>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc,argv);

    qmlRegisterType<MyCarStateMachine>("MyCarStateMachine",1,0,"MyCarStateMachine");

    MainWindow engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));     

    return app.exec();
}
