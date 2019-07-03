#ifndef ROBOTSTATUS_H
#define ROBOTSTATUS_H

#include <QObject>

class RobotStatus : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool modelloadstatus READ readmodelloadstatus WRITE setmodelloadstatus NOTIFY modelstatuschanged)
public:
    explicit RobotStatus(QObject *parent = nullptr);

    bool readmodelloadstatus() const;
    void setmodelloadstatus(bool status);

signals:
    void modelstatuschanged(); //if not define will see a warning Expression ... depends on non-NOTIFYable properties:
public slots:
private:
    bool modelloadstatus=false;
};

#endif // ROBOTSTATUS_H
