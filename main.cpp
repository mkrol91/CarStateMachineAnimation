#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "mystatemachine.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterType<CarStateMachine>("CarStateMachine",1,0,"CarStateMachine");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
