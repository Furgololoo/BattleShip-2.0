#ifndef BUTTONMANAGER_H
#define BUTTONMANAGER_H

#include <QObject>
#include <QStringList>
#include <QVector>

class ButtonManager : public QObject
{
    Q_OBJECT
public:
    explicit ButtonManager(QObject *parent = nullptr);


public slots:
    QStringList getShips();

signals:


private:
    void GenerateShips();

    QStringList shipsList;

};

#endif // BUTTONMANAGER_H
