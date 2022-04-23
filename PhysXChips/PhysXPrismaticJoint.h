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
#include "PhysXJoint.h"

namespace m3d
{


static const Guid PHYSXPRISMATICJOINT_GUID = { 0x4a73a82f, 0x70d0, 0x4d9e, { 0x97, 0x05, 0x3a, 0xb7, 0x91, 0xf5, 0xe6, 0xca } };



class PHYSXCHIPS_API PhysXPrismaticJoint : public PhysXJoint
{
	CHIPDESC_DECL;
public:
	PhysXPrismaticJoint();
	virtual ~PhysXPrismaticJoint();

	virtual bool CopyChip(Chip *chip) override;
	virtual bool LoadChip(DocumentLoader &loader) override;
	virtual bool SaveChip(DocumentSaver &saver) const override;

	virtual PxJoint *CreateJoint(PxPhysics& physics, PxRigidActor* actor0, const PxTransform& localFrame0, PxRigidActor* actor1, const PxTransform& localFrame1);

	virtual bool IsLimitEnabled() const;
	virtual void GetLimitParams(float32 &lower, float32 &upper, float32 &limitRestitution, float32 &limitStiffness, float32 &limitDamping, float32 &limitContactDistance) const;
	virtual float32 GetProjectionLinearTolerance() const;
	virtual float32 GetProjectionAngularTolerance() const;

	virtual void SetLimitEnable(bool b, bool chipSettings = true);
	virtual void SetLimitParams(float32 lower, float32 upper, float32 limitRestitution, float32 limitStiffness, float32 limitDamping, float32 limitContactDistance, bool chipSettings = true);
	virtual void SetProjectionLinearTolerance(float32 l, bool chipSettings = true);
	virtual void SetProjectionAngularTolerance(float32 l, bool chipSettings = true);

protected:
	bool _limitEnable;
	float32 _limitLower;
	float32 _limitUpper;
	float32 _limitRestitution;
	float32 _limitStiffness;
	float32 _limitDamping; 
	float32 _limitContactDistance;
	float32 _projectionLinearTolerance;
	float32 _projectionAngularTolerance;

};



}