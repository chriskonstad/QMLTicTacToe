#include <QApplication>
#include <QtDeclarative>
#include "qmlapplicationviewer.h"
#include "logic.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    //viewer.setMainQmlFile(QLatin1String("qml/TicTacToe/main.qml"));
    viewer.rootContext()->setContextProperty("logic", new Logic);
    viewer.setSource(QUrl("qrc:/res/qml/TicTacToe/main.qml"));

    viewer.showExpanded();

    return app->exec();
}
