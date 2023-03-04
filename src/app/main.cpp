#include "back.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtWidgets>
using namespace std;
int main(int argc, char *argv[]) {

  QGuiApplication app(argc, argv);
  Back *back = new Back;
  QQmlApplicationEngine engine;
  engine.rootContext()->setContextProperty("back", back);
  const QUrl url(u"qrc:/hello/main.qml"_qs);
  engine.load(url);
  if (engine.rootObjects().isEmpty())
    return -1;

  return app.exec();
}