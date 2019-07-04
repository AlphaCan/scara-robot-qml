#ifndef SCARAROBOT_H
#define SCARAROBOT_H


class ScaraRobot
{
public:
    ScaraRobot();

    double getAngle();
    void setAngle(double alfa);

private:
    double angle = 0;
};

#endif // SCARAROBOT_H
