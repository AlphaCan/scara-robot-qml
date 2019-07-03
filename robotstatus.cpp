#include "robotstatus.h"

RobotStatus::RobotStatus(QObject *parent) : QObject(parent)
{

}

bool RobotStatus::readmodelloadstatus() const{
    return modelloadstatus;
}


void RobotStatus::setmodelloadstatus(bool status){
    modelloadstatus = status;
    emit modelstatuschanged();
}


