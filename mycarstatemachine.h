#ifndef MYCARSTATEMACHINE_H
#define MYCARSTATEMACHINE_H
#include "mystatemachine.h"

class MyCarStateMachine : public CarStateMachine
{
    Q_OBJECT

public:
    MyCarStateMachine();

public slots:
    void holdOn();
    void startAccelerate();

};

#endif // MYCARSTATEMACHINE_H
