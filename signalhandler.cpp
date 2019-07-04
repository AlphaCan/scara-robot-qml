#include "signalhandler.h"

SignalHandler::SignalHandler(QObject *parent) : QObject(parent)
{

}

SignalHandler::SignalHandler(BaseRobot *proto){
    this->br = proto;
    QTimer *timer = new QTimer(this);
//    connect(timer, SIGNAL(timeout()), this, SLOT(update()));
    timer->start(100);
}

void SignalHandler::setUpd(QObject *p){
    this->upd = p;
}

QObject *SignalHandler::getUpd(){
    return this->upd;
}


void SignalHandler::update(){
    QMetaObject::invokeMethod(this->getUpd(), "update");
}












