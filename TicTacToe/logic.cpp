#include "logic.h"

Logic::Logic(QObject *parent) :
    QObject(parent)
{
    for(int i=0;i<10;i++)
    {
        squareList.append(Qt::white);
    }
}

void Logic::squareChosen(int pos, QColor color)
{
    squareList[pos] = color;    //remember the square's position and color
    checkForWinner();   //see if someone has won
}

void Logic::checkForWinner()
{
    int a = 0;
    int b = 1;
    int c = 2;

    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "0";
        qDebug() << squareList[a].name();
        resetSquares();
    }
    a = 3;
    b = 4;
    c = 5;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "1";
        qDebug() << squareList[a].name();
        resetSquares();
    }

    a = 6;
    b = 7;
    c = 8;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "2";
        qDebug() << squareList[a].name();
        resetSquares();
    }

    a = 0;
    b = 3;
    c = 6;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "3";
        qDebug() << squareList[a].name();
        resetSquares();
    }

    a = 1;
    b = 4;
    c = 7;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "4";
        qDebug() << squareList[a].name();
        resetSquares();
    }

    a = 2;
    b = 5;
    c = 8;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "5";
        qDebug() << squareList[a].name();
        resetSquares();
    }

    a = 0;
    b = 4;
    c = 8;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "6";
        qDebug() << squareList[a].name();
        resetSquares();
    }

    a = 2;
    b = 4;
    c = 6;
    if((squareList[a] == Qt::red || squareList[a] == Qt::blue) && squareList[a] == squareList[b] && squareList[b] == squareList[c])
    {
        playerWon(squareList[a].name());   //pass on the color of the winner
        qDebug() << "7";
        qDebug() << squareList[a].name();
        resetSquares();
    }
}

void Logic::resetSquares()
{
    for(int i=0;i< 10;i++)
    {
        squareList[i] = Qt::white;
    }
}
