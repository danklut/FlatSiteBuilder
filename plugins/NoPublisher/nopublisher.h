/****************************************************************************
** Copyright (C) 2017 Olaf Japp
**
** This file is part of FlatSiteBuilder.
**
**  FlatSiteBuilder is free software: you can redistribute it and/or modify
**  it under the terms of the GNU General Public License as published by
**  the Free Software Foundation, either version 3 of the License, or
**  (at your option) any later version.
**
**  FlatSiteBuilder is distributed in the hope that it will be useful,
**  but WITHOUT ANY WARRANTY; without even the implied warranty of
**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
**  GNU General Public License for more details.
**
**  You should have received a copy of the GNU General Public License
**  along with FlatSiteBuilder.  If not, see <http://www.gnu.org/licenses/>.
**
****************************************************************************/

#ifndef NOPUBLISHER_H
#define NOPUBLISHER_H

#include <QtPlugin>
#include <QObject>
#include <QUrl>
#include "interfaces.h"

class QNetworkReply;
class QTextBrowser;
class NoPublisher : public PublisherInterface
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "com.github.Artanidos.FlatSiteBuilder.PublisherInterface")
    Q_INTERFACES(PublisherInterface)

public:
    NoPublisher();
    QString className() override {return "NoPublisher";}
    QString displayName() override {return "Not really a publisher but a description";}
    void setSitePath(QString path) override;

private slots:
    void fileIsReady(QNetworkReply *reply);
    void anchorClicked(QUrl url);

private:
    QTextBrowser *m_browser;
 };

#endif // NOPUBLISHER_H