#pragma once

#include <QObject>
#include <QString>


class Back : public QObject {
  Q_OBJECT
public:
  int num = 0;
  explicit Back(QObject *parent = nullptr);
signals:
  void valueChanged(QString s);
public slots:

  void changeValue(int a);
};