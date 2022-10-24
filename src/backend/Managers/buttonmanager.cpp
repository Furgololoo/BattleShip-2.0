#include "buttonmanager.h"

#include <QDebug>

ButtonManager::ButtonManager(QObject *parent)
    : QObject{parent}
{

    GenerateShips();
}

QStringList ButtonManager::getShips()
{
    qInfo()<<"Get ships";
    return shipsList;
}

void ButtonManager::GenerateShips()
{
    for(char col = 65; col < 75; col++){
        for(quint8 row = 1; row <= 10; row++){
            shipsList.append(QString(QChar::fromLatin1(col) + QString::number(row)));
        }
    }
    qInfo()<<"Generate ships";
}
