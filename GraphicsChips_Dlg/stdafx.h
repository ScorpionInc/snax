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

// Modify the following defines if you have to target a platform prior to the ones specified below.
// Refer to MSDN for the latest info on corresponding values for different platforms.
#ifndef WINVER				// Allow use of features specific to Windows XP or later.
#define WINVER 0x0501		// Change this to the appropriate value to target other versions of Windows.
#endif

#ifndef _WIN32_WINNT		// Allow use of features specific to Windows XP or later.                   
#define _WIN32_WINNT 0x0501	// Change this to the appropriate value to target other versions of Windows.
#endif						

#ifndef _WIN32_WINDOWS		// Allow use of features specific to Windows 98 or later.
#define _WIN32_WINDOWS 0x0410 // Change this to the appropriate value to target Windows Me or later.
#endif

#ifndef _WIN32_IE			// Allow use of features specific to IE 6.0 or later.
#define _WIN32_IE 0x0600	// Change this to the appropriate value to target other versions of IE.
#endif

#define WIN32_LEAN_AND_MEAN		// Exclude rarely-used stuff from Windows headers
// Windows Header Files:
#define NOMINMAX
#include <windows.h>
#include "M3DCore/MMath.h"
#include <assert.h>
#include <qvariant.h>


#include <qabstractnativeeventfilter.h>
#include <QAction>
#include <QActionGroup>
#include <qapplication.h>
#include <qbytearray.h>
#include <qclipboard>
#include <QCloseEvent>
#include <qcolordialog.h>
#include <qcombobox.h>
#include <QContextMenuEvent>
#include <QCursor>
#include <qdatetime.h>
#include <QDialog>
#include <QDialogButtonBox.h>
#include <qdir.h>
#include <QDoubleSpinBox>
#include <qevent.h>
#include <qfile>
#include <qfiledialog.h>
#include <qfileinfo.h>
#include <qformlayout.h>
#include <QFrame>
#include <qgridlayout.h>
#include <QGridLayout>
#include <QHBoxLayout>
#include <QHeaderView>
#include <QInputDialog>
#include <QLabel>
#include <qlineedit.h>
#include <qlistwidget.h>
#include <qmenu.h>
#include <QMenuBar>
#include <qmessagebox.h>
#include <qmetatype.h>
#include <qmimedata>
#include <QMouseEvent>
#include <qmutex.h>
#include <qpainter.h>
#include <qpixmapcache.h>
#include <QPlainTextEdit>
#include <qpushbutton.h>
#include <qscrollbar.h>
#include <qsettings>
#include <QSpacerItem>
#include <QSplitter>
#include <QStandardItemModel.h>
#include <qstandardpaths.h>
#include <QStringList>
#include <qtabbar>
#include <qthread.h>
#include <QTimer>
#include <QToolBar>
#include <QTreeWidgetItemIterator>
#include <QVariant>
#include <QVBoxLayout>
#include <qwidgetaction.h>
#include <QWizardPage>
#include <d3d12.h>
#include <DirectXTex.h>
#include <qplaintextedit.h>
#include <d3dcompiler.h>
#include <qstyleditemdelegate.h>
#include <qfontdialog>
#include <qcheckbox.h>

#define FROMQSTRING(x) String(x.toUtf8().constData()) // Converting QString to m3d::String.
#define TOQSTRING(x) QString::fromUtf8(x.c_str()) // Converting m3d::String to QString.

Q_DECLARE_METATYPE(XMFLOAT4);