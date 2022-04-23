// SnaX Game Engine - https://github.com/snaxgameengine/snax
// Licensed under the MIT License <http://opensource.org/licenses/MIT>.
// SPDX-License-Identifier: MIT
// Copyright (c) 2013 - 2022 Frank-Vegar Mortensen <franksvm(at)outlook(dot)com>.
//
// Permission is hereby  granted, free of charge, to any  person obtaining a copy
// of this software and associated  documentation files (the "Software"), to deal
// in the Software  without restriction, including without  limitation the rights
// to  use, copy,  modify, merge,  publish, distribute,  sublicense, and/or  sell
// copies  of  the Software,  and  to  permit persons  to  whom  the Software  is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE  IS PROVIDED "AS  IS", WITHOUT WARRANTY  OF ANY KIND,  EXPRESS OR
// IMPLIED,  INCLUDING BUT  NOT  LIMITED TO  THE  WARRANTIES OF  MERCHANTABILITY,
// FITNESS FOR  A PARTICULAR PURPOSE AND  NONINFRINGEMENT. IN NO EVENT  SHALL THE
// AUTHORS  OR COPYRIGHT  HOLDERS  BE  LIABLE FOR  ANY  CLAIM,  DAMAGES OR  OTHER
// LIABILITY, WHETHER IN AN ACTION OF  CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE  OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#pragma once

#include "Exports.h"
#include "StandardDialogPage.h"
#include <QGridLayout>
#include <QHeaderView>
#include <QListWidget>

namespace m3d
{


class CHIPDIALOGS_EXPORT StandardListWidgetDialogPage : public StandardDialogPage
{
	Q_OBJECT
public:
    QGridLayout *gridLayout;
    QListWidget *listWidget;

	StandardListWidgetDialogPage() 
	{
		gridLayout = new QGridLayout(this);
		listWidget = new QListWidget(this);
		listWidget->setSortingEnabled(true);
		gridLayout->addWidget(listWidget, 0, 0, 1, 1);

		connect(listWidget, &QListWidget::currentItemChanged, this, &StandardListWidgetDialogPage::onSelectionChanged);
	}

	~StandardListWidgetDialogPage()
	{
	}

	virtual QSize preferredSize() const { return QSize(400, 300); }

protected:
	virtual void onSelectionChanged(QListWidgetItem* current) {}

};

}