#ifndef SIGNALHANDLER_H
#define SIGNALHANDLER_H

#include <QObject>
#include <QQuickItem>
#include <QVariant>
#include <QTimer>

#include <iostream>

#include "baserobot.h"

class SignalHandler : public QObject
{
    Q_OBJECT
public:
    explicit SignalHandler(QObject *parent = nullptr);
    SignalHandler(BaseRobot *proto);
    void setUpd(QObject *p);
    QObject *getUpd();

signals:

public slots:
    void update();

private:
    BaseRobot *br;
    QObject *upd;
};

#endif // SIGNALHANDLER_H
