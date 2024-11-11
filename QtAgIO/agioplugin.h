#ifdef ALL_AS_ONE

#ifndef AGIOINTERFACE_H
#define AGIOINTERFACE_H

#include <QObject>
#include <QtPlugin>
#include "agiointerface.h"

//! [0]
class AgIOPlugin : public QObject, AgIOInterface
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.Examples.AgIOInterface" FILE "agioplugin.json")
    Q_INTERFACES(AgIOInterface)

public:
    QString echo(const QString &message) override;
};
//! [0]


#endif // AGIOINTERFACE_H

#endif
