#ifndef LOGIC_H
#define LOGIC_H

#include <QObject>
#include <QColor>
#include <QList>
#include <QtDebug>

class Logic : public QObject
{
    Q_OBJECT
public:
    explicit Logic(QObject *parent = 0);
    
signals:
    void playerWon(const QColor &winner);
    
public slots:
    void squareChosen(int pos, QColor color);

    void checkForWinner();

    void resetSquares();
    
private:
    QList<QColor> squareList;
};

#endif // LOGIC_H
