/*#include <Qt3DQuickExtras/qt3dquickwindow.h>
#include <Qt3DQuick/QQmlAspectEngine>

#include <QGuiApplication>
#include <QtQml>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Qt3DExtras::Quick::Qt3DQuickWindow view;
    // Expose the window as a context property so we can set the aspect ratio
    view.engine()->qmlEngine()->rootContext()->setContextProperty("_window", &view);
    view.setSource(QUrl("qrc:/main.qml"));

    view.show();

    return app.exec();
}*/


#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QOpenGLContext>
#include "robotstatus.h"

#include <QQmlComponent>
#include <QQmlProperty>
#include <iostream>

#include "baserobot.h"
#include "signalhandler.h"

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

//    qmlRegisterType<RobotStatus>("RobotStatus",1,0,"RobotModelStatus");
    QQmlApplicationEngine engine;
    QQuickView view;

    view.resize(800, 600);
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:/main.qml"));
    view.show();
    QQmlComponent component(&engine, "qrc:/RobotControl.qml");
    QObject *object = component.create();
    QObject *sliders = object->findChild<QObject*>("sliders");

    QObject *sl_gdl1 = sliders->findChild<QObject*>("gdl1");
    QObject *sl_gdl2 = sliders->findChild<QObject*>("gdl2");
    QObject *sl_gdl3 = sliders->findChild<QObject*>("gdl3");
    QObject *sl_Vgdl1 = sliders->findChild<QObject*>("v_gdl1");

    QObject *indicator = sliders->findChild<QObject*>("indicator");

    BaseRobot * br;
    br = new BaseRobot();

    SignalHandler *sh = new SignalHandler(br);

    sh->setUpd(indicator);

    br->setState(indicator);

    br->setGdl1_i(sl_gdl1);
    br->setGdl2_i(sl_gdl2);
    br->setGdl3_i(sl_gdl3);

    br->setVgdl1_i(sl_Vgdl1);

    return app.exec();
}
