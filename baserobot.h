#ifndef BASEROBOT_H
#define BASEROBOT_H

#include <QObject>
#include <QQmlProperty>
#include <QTimer>

#include <string>
#include <vector>
#include <cstdlib>
#include <fstream>
#include <istream>

#include "scararobot.h"

class BaseRobot
{
public:
    BaseRobot();

     void init();
     bool getEstado();
     void setEstado(bool valor);

     bool getState();
     void setState(QObject *p);

     void activeRobot();
     void desactiveRobot();


     ScaraRobot* p1 = new ScaraRobot();
     ScaraRobot* p2 = new ScaraRobot();
     ScaraRobot* p3 = new ScaraRobot();
     ScaraRobot* p4 = new ScaraRobot();

     double getGdl1();
     void setGdl1(double alfa);
     double getGdl2();
     void setGdl2(double alfa);
     double getGdl3();
     void setGdl3(double alfa);

     void setGdl1_i(QObject *p);
     void setGdl2_i(QObject *p);
     void setGdl3_i(QObject *p);

     double getVgdl1();
     void setVgdl1(double alfa);

     void setVgdl1_i(QObject *p);

private:
    bool estado = 0;
    QObject *state;

    double gdl1 = 0;
    double gdl2 = 0;
    double gdl3 = 0;

    QObject *gdl1_i;
    QObject *gdl2_i;
    QObject *gdl3_i;

    double Vgdl1 = 0.01;

    QObject *Vgdl1_i;

};

#endif // BASEROBOT_H
