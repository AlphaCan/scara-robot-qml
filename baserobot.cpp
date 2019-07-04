#include "baserobot.h"

BaseRobot::BaseRobot()
{

}

bool BaseRobot::getEstado(){
    return this->estado;
}

void BaseRobot::setEstado(bool valor){
    this->estado = valor;
}

void BaseRobot::activeRobot(){
    this->setEstado(true);
}

void BaseRobot::desactiveRobot(){
    this->setEstado(false);
}

void BaseRobot::setState(QObject *p){
    this->state = p;
}

bool BaseRobot::getState(){
    bool aux;
    aux = QQmlProperty::read(this->state, "active").toBool();
    return aux;
}

//----------------------------------------------------------------------------------

double BaseRobot::getGdl1(){
    return this->gdl1;
}

void BaseRobot::setGdl1(double alfa){
    this->gdl1 = alfa;
    this->p2->setAngle(alfa);
    this->p3->setAngle(alfa);
    this->p4->setAngle(alfa);


    QQmlProperty::write(this->gdl1_i, "value", alfa);
}

double BaseRobot::getGdl2(){
    return this->gdl2;
}

void BaseRobot::setGdl2(double alfa){
    this->gdl2 = alfa;
    this->p3->setAngle(alfa);
    this->p4->setAngle(alfa);


    QQmlProperty::write(this->gdl2_i, "value", alfa);
}

double BaseRobot::getGdl3(){
    return this->gdl3;
}

void BaseRobot::setGdl3(double alfa){
    this->gdl3 = alfa;
    this->p4->setAngle(alfa);

    QQmlProperty::write(this->gdl3_i, "value", alfa);
}

//----------------------------------------------------------------------------

void BaseRobot::setGdl1_i(QObject *p){
    this->gdl1_i = p;
}

void BaseRobot::setGdl2_i(QObject *p){
    this->gdl2_i = p;
}

void BaseRobot::setGdl3_i(QObject *p){
    this->gdl3_i = p;
}

//----------------------------------------------------------------------------

double BaseRobot::getVgdl1(){
    return this->Vgdl1;
}

void BaseRobot::setVgdl1(double v){
    this->Vgdl1 = v;
    QQmlProperty::write(this->Vgdl1_i, "value", v);
}

//----------------------------------------------------------------------------

void BaseRobot::setVgdl1_i(QObject *p){
    this->Vgdl1_i = p;
}















