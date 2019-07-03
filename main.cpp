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
#include <QQuickView>
#include <QOpenGLContext>
#include "robotstatus.h"


int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<RobotStatus>("RobotStatus",1,0,"RobotModelStatus");

    QQuickView view;

    view.resize(800, 600);
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:/main.qml"));
    view.show();


    return app.exec();
}
