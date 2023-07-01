#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include<QQmlEngineExtensionInterface>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));

    /* Register Classes */

    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/AppStyle.qml")),"AppStyle",1,0,"AppStyle");
    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/FontSystem.qml")),"AppStyle",1,0,"FontStyle");

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
