#include <QApplication>
#include <QtDeclarative>
#include "qmlapplicationviewer.h"
#include "logic.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    Logic logic;
    viewer.rootContext()->setContextProperty("Logic", &logic);
    #if Q_OS_IOS
    viewer.setMainQmlFile(QApplication::applicationDirPath() + "/main.qml");
    #else
    viewer.setSource(QUrl("qrc:/res/qml/TicTacToe/main.qml"));
    #endif
    viewer.showExpanded();

    return app->exec();
}
