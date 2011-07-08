////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2011 Marco Antognini (antognini.marco@gmail.com), 
//                         Laurent Gomila (laurent.gom@gmail.com), 
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
// Headers
////////////////////////////////////////////////////////////
#include <SFML/Window/OSX/InputImpl.hpp>
#include <SFML/Window/VideoMode.hpp>
#import <AppKit/AppKit.h>

namespace sf
{
namespace priv
{
////////////////////////////////////////////////////////////
bool InputImpl::IsKeyPressed(Keyboard::Key key)
{
	// @to be implemented
    return false;
}


////////////////////////////////////////////////////////////
bool InputImpl::IsMouseButtonPressed(Mouse::Button button)
{
	// @to be implemented
    return false;
}


////////////////////////////////////////////////////////////
Vector2i InputImpl::GetMousePosition()
{
    // Reverse Y axis to match SFML coord.
	NSPoint pos = [NSEvent mouseLocation];
    pos.y = sf::VideoMode::GetDesktopMode().Height - pos.y;

    return Vector2i(pos.x, pos.y);
}


////////////////////////////////////////////////////////////
Vector2i InputImpl::GetMousePosition(const Window& relativeTo)
{
	// @to be implemented
    return Vector2i();
}


////////////////////////////////////////////////////////////
void InputImpl::SetMousePosition(const Vector2i& position)
{
	// @to be implemented
}


////////////////////////////////////////////////////////////
void InputImpl::SetMousePosition(const Vector2i& position, const Window& relativeTo)
{
	// @to be implemented
}

} // namespace priv

} // namespace sf
