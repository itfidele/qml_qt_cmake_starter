#include "back.h"
Back::Back(QObject *parent) : QObject(parent) {}

void Back::changeValue(int a) {
  if (a == 1) {
    num = num + 1;
    valueChanged(QString::number(num));
  } else if (a == -1) {
    num = num - 1;
    valueChanged(QString::number(num));
  } else {
    valueChanged("!!!!!");
  }
}