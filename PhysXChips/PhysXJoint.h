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
#include "M3DEngine/Chip.h"
#include "PhysX.h"

namespace m3d
{

	
static const Guid PHYSXJOINT_GUID = { 0x9e56c487, 0x4d1e, 0x48d4, { 0xb8, 0xd9, 0x50, 0xf0, 0xff, 0xfd, 0x1b, 0x92 } };



class PHYSXCHIPS_API PhysXJoint : public Chip, public PhysXSceneObject
{
	CHIPDESC_DECL;
public:
	PhysXJoint();
	virtual ~PhysXJoint();

	virtual bool InitChip() override;
	virtual bool CopyChip(Chip *chip) override;
	virtual bool LoadChip(DocumentLoader &loader) override;
	virtual bool SaveChip(DocumentSaver &saver) const override;

	virtual void CallChip() override;

	virtual void OnSceneDestroyed() override { DestroyJoint(); }

	virtual bool Exist();
	virtual PxJoint *GetJoint() const { return _joint; }
	virtual void DestroyJoint();

	virtual PxJoint *CreateJoint(PxPhysics& physics, PxRigidActor* actor0, const PxTransform& localFrame0, PxRigidActor* actor1, const PxTransform& localFrame1) { return nullptr; }

	virtual bool IsGlobalFrame() const { return _globalFrame; }
	virtual void SetGlobalFrame(bool globalFrame);

	virtual bool IsBroken() const;
	virtual bool IsCollisionEnabled() const;
	virtual bool IsProjectionEnabled() const;
	virtual bool IsVisualization() const;
	virtual void GetBreakForce(float32 &f, float32 &t) const;
	virtual void SetCollisionEnabled(bool b, bool chipSettings = true);
	virtual void SetProjectionEnabled(bool b, bool chipSettings = true);
	virtual void SetVisualization(bool b, bool chipSettings = true);
	virtual void SetBreakForce(float32 f, float32 t, bool chipSettings = true);

protected:
	PxJoint *_joint;
	bool _globalFrame;
	bool _collisionEnabled;
	bool _projectionEnabled;
	bool _visualization;
	float32 _breakForce;
	float32 _breakTorque;

	virtual void UpdateConnections();
	virtual void OnRelease() { DestroyJoint(); }

};

}