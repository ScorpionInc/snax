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
#include "MString.h"
#include <cstring>

namespace m3d
{

    struct Guid
    {
        uint32  Data1;
        uint16 Data2;
        uint16 Data3;
        uint8  Data4[8];

        inline bool operator==(const Guid& r) const
        {
            return std::memcmp(this, &r, sizeof(Guid)) == 0;
        }
        inline bool operator!=(const Guid& r) const
        {
            return std::memcmp(this, &r, sizeof(Guid)) != 0;
        }
        inline bool operator<(const Guid& r) const
        {
            return std::memcmp(this, &r, sizeof(Guid)) < 0;
        }
    };

    static const Guid NullGUID = {0x0, 0x0, 0x0, {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}};

    extern bool M3DCORE_API GenerateGuid(Guid&guid);
    extern String M3DCORE_API GuidToString(const Guid&guid);
    extern bool M3DCORE_API StringToGUID(const String &str, Guid&guid);

}