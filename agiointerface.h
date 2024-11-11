#ifndef AGIOINTERFACE_H
#define AGIOINTERFACE_H

#include <QObject>
#include <QString>


//! [0]
class AgIOInterface
{
public:
    virtual ~AgIOInterface() = default;
    virtual QString echo(const QString &message) = 0;
};


QT_BEGIN_NAMESPACE

#define AgIOInterface_iid "org.qt-project.Qt.Examples.AgIOInterface"

Q_DECLARE_INTERFACE(AgIOInterface, AgIOInterface_iid)
QT_END_NAMESPACE

//! [0]


#endif // AGIOINTERFACE_H
