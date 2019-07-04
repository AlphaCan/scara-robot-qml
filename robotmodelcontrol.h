#ifndef ROBOTMODELCONTROL_H
#define ROBOTMODELCONTROL_H

#include <QObject>

class RobotModelControl : public QObject
{
    Q_OBJECT
public:
    explicit RobotModelControl(QObject *parent = nullptr);

signals:

public slots:
};

#endif // ROBOTMODELCONTROL_H
