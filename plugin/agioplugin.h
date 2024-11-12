// Copyright (C) 2016 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

#ifndef AGIOPLUGIN_H
#define AGIOPLUGIN_H

#include <QObject>
#include <QtPlugin>
#include "agiointerface.h"

//! [0]
class EchoPlugin : public QObject, EchoInterface
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.Examples.EchoInterface" FILE "echoplugin.json")
    Q_INTERFACES(EchoInterface)

public:
    QString echo(const QString &message) override;
};
//! [0]

#endif

