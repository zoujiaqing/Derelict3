/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.glfw3.functions;

private
{
    import core.stdc.config;
    import derelict.glfw3.types;
}


extern(C)
{
    alias nothrow int function()da_glfwInit;
    alias nothrow void function()da_glfwTerminate;
    alias nothrow void function(int*, int*, int*)da_glfwGetVersion;
    alias nothrow const(char)* function()da_glfwGetVersionString;

    alias nothrow int function()da_glfwGetError;
    alias nothrow const(char)* function(int)da_glfwErrorString;
    alias nothrow void function(GLFWerrorfun)da_glfwSetErrorCallback;

    alias nothrow GLFWvidmode* function(int)da_glfwGetVideoModes;
    alias nothrow void function(GLFWvidmode*)da_glfwGetDesktopMode;

    alias nothrow void function(float)da_glfwSetGamma;
    alias nothrow void function(GLFWgammaramp*)da_glfwGetGammaRamp;
    alias nothrow void function(in GLFWgammaramp*)da_glfwSetGammaRamp;

    alias nothrow GLFWwindow function(int, int, int, const(char)*, GLFWwindow)da_glfwCreateWindow;
    alias nothrow void function(int, int)da_glfwWindowHint;
    alias nothrow void function(GLFWwindow)da_glfwDestroyWindow;
    alias nothrow void function(GLFWwindow, const(char)*)da_glfwSetWindowTitle;
    alias nothrow void function(GLFWwindow, int*, int*)da_glfwGetWindowSize;
    alias nothrow void function(GLFWwindow, int, int)da_glfwSetWindowSize;
    alias nothrow void function(GLFWwindow, int*, int*)da_glfwGetWindowPos;
    alias nothrow void function(GLFWwindow, int, int)da_glfwSetWindowPos;
    alias nothrow void function(GLFWwindow)da_glfwIconifyWindow;
    alias nothrow void function(GLFWwindow)da_glfwRestoreWindow;
    alias nothrow int function(GLFWwindow, int)da_glfwGetWindowParam;
    alias nothrow void function(GLFWwindow, void*)da_glfwSetWindowUserPointer;
    alias nothrow void* function(GLFWwindow)da_glfwGetWindowUserPointer;
    alias nothrow void function(GLFWwindowsizefun)da_glfwSetWindowSizeCallback;
    alias nothrow void function(GLFWwindowclosefun)da_glfwSetWindowCloseCallback;
    alias nothrow void function(GLFWwindowrefreshfun)da_glfwSetWindowRefreshCallback;
    alias nothrow void function(GLFWwindowfocusfun)da_glfwSetWindowFocusCallback;
    alias nothrow void function(GLFWwindowiconifyfun)da_glfwSetWindowIconifyCallback;

    alias nothrow void function()da_glfwPollEvents;
    alias nothrow void function()da_glfwWaitEvents;

    alias nothrow int function(GLFWwindow, int)da_glfwGetInputMode;
    alias nothrow void function(GLFWwindow, int, int)da_glfwSetInputMode;
    alias nothrow int function(GLFWwindow, int)da_glfwGetKey;
    alias nothrow int function(GLFWwindow, int)da_glfwGetMouseButton;
    alias nothrow void function(GLFWwindow, int*, int*)da_glfwGetCursorPos;
    alias nothrow void function(GLFWwindow, int, int)da_glfwSetCursorPos;
    alias nothrow void function(GLFWwindow, double*, double*)da_glfwGetScrollOffset;
    alias nothrow void function(GLFWkeyfun)da_glfwSetKeyCallback;
    alias nothrow void function(GLFWcharfun)da_glfwSetCharCallback;
    alias nothrow void function(GLFWmousebuttonfun)da_glfwSetMouseButtonCallback;
    alias nothrow void function(GLFWcursorposfun)da_glfwSetCursorPosCallback;
    alias nothrow void function(GLFWcursorenterfun) da_glfwSetCursorEnterCallback;
    alias nothrow void function(GLFWscrollfun)da_glfwSetScrollCallback;

    alias nothrow int function(int, int)da_glfwGetJoystickParam;
    alias nothrow int function(int, float*, int)da_glfwGetJoystickAxes;
    alias nothrow int function(int, ubyte*, int)da_glfwGetJoystickButtons;

    alias nothrow void function(GLFWwindow, const(char)*) da_glfwSetClipboardString;
    alias nothrow const(char)* function(GLFWwindow) da_glfwGetClipboardString;

    alias nothrow double function()da_glfwGetTime;
    alias nothrow void function(double)da_glfwSetTime;

    alias nothrow void function(GLFWwindow) da_glfwMakeContextCurrent;
    alias nothrow GLFWwindow function() da_glfwGetCurrentContext;
    alias nothrow void function(GLFWwindow)da_glfwSwapBuffers;
    alias nothrow void function(int)da_glfwSwapInterval;
    alias nothrow int function(in char*)da_glfwExtensionSupported;
    alias nothrow void* function(in char*)da_glfwGetProcAddress;
    alias nothrow void function(GLFWwindow, GLFWwindow, c_ulong)da_glfwCopyContext;
}

__gshared
{
    da_glfwInit glfwInit;
    da_glfwTerminate glfwTerminate;
    da_glfwGetVersion glfwGetVersion;
    da_glfwGetVersionString glfwGetVersionString;
    da_glfwGetError glfwGetError;
    da_glfwErrorString glfwErrorString;
    da_glfwSetErrorCallback glfwSetErrorCallback;
    da_glfwGetVideoModes glfwGetVideoModes;
    da_glfwGetDesktopMode glfwGetDesktopMode;
    da_glfwSetGamma glfwSetGamma;
    da_glfwGetGammaRamp glfwGetGammaRamp;
    da_glfwSetGammaRamp glfwSetGammaRamp;
    da_glfwCreateWindow glfwCreateWindow;
    da_glfwWindowHint glfwWindowHint;
    da_glfwDestroyWindow glfwDestroyWindow;
    da_glfwSetWindowTitle glfwSetWindowTitle;
    da_glfwGetWindowSize glfwGetWindowSize;
    da_glfwSetWindowSize glfwSetWindowSize;
    da_glfwGetWindowPos glfwGetWindowPos;
    da_glfwSetWindowPos glfwSetWindowPos;
    da_glfwIconifyWindow glfwIconifyWindow;
    da_glfwRestoreWindow glfwRestoreWindow;
    da_glfwGetWindowParam glfwGetWindowParam;
    da_glfwSetWindowUserPointer glfwSetWindowUserPointer;
    da_glfwGetWindowUserPointer glfwGetWindowUserPointer;
    da_glfwSetWindowSizeCallback glfwSetWindowSizeCallback;
    da_glfwSetWindowCloseCallback glfwSetWindowCloseCallback;
    da_glfwSetWindowRefreshCallback glfwSetWindowRefreshCallback;
    da_glfwSetWindowFocusCallback glfwSetWindowFocusCallback;
    da_glfwSetWindowIconifyCallback glfwSetWindowIconifyCallback;
    da_glfwPollEvents glfwPollEvents;
    da_glfwWaitEvents glfwWaitEvents;
    da_glfwGetInputMode glfwGetInputMode;
    da_glfwSetInputMode glfwSetInputMode;
    da_glfwGetKey glfwGetKey;
    da_glfwGetMouseButton glfwGetMouseButton;
    da_glfwGetCursorPos glfwGetCursorPos;
    da_glfwSetCursorPos glfwSetCursorPos;
    da_glfwGetScrollOffset glfwGetScrollOffset;
    da_glfwSetKeyCallback glfwSetKeyCallback;
    da_glfwSetCharCallback glfwSetCharCallback;
    da_glfwSetMouseButtonCallback glfwSetMouseButtonCallback;
    da_glfwSetCursorPosCallback glfwSetCursorPosCallback;
    da_glfwSetScrollCallback glfwSetScrollCallback;
    da_glfwGetJoystickParam glfwGetJoystickParam;
    da_glfwGetJoystickAxes glfwGetJoystickAxes;
    da_glfwGetJoystickButtons glfwGetJoystickButtons;
    da_glfwSetClipboardString glfwSetClipboardString;
    da_glfwGetClipboardString glfwGetClipboardString;
    da_glfwGetTime glfwGetTime;
    da_glfwSetTime glfwSetTime;
    da_glfwMakeContextCurrent glfwMakeContextCurrent;
    da_glfwGetCurrentContext glfwGetCurrentContext;
    da_glfwSwapBuffers glfwSwapBuffers;
    da_glfwSwapInterval glfwSwapInterval;
    da_glfwExtensionSupported glfwExtensionSupported;
    da_glfwGetProcAddress glfwGetProcAddress;
    da_glfwCopyContext glfwCopyContext;
}
