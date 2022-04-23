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

#include "StdAfx.h"
#include "TemplateChip_Dlg.h"
#include "ChipDialogs/ChipDialogManager.h"

using namespace m3d;


DIALOGDESC_DEF(TemplateChip_Dlg, TEMPLATECHIP_GUID);


TemplateChip_Dlg::TemplateChip_Dlg()
{
	ui.setupUi(this);
}

TemplateChip_Dlg::~TemplateChip_Dlg()
{
}

void TemplateChip_Dlg::Init()
{
	ui.pushButton->setEnabled(GetChip()->GetTemplate() != 0);
}

void TemplateChip_Dlg::OnOK()
{
}

void TemplateChip_Dlg::AfterApply()
{
	ui.pushButton->setEnabled(GetChip()->GetTemplate() != 0);
}

void TemplateChip_Dlg::editTemplate()
{
	Chip *chip = GetChip()->GetTemplate();
	
	GetDialogManager()->OpenChipDialog(chip, false);
}