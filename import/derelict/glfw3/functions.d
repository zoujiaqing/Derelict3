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
    alias nothrow int function() da_glfwInit;
    alias nothrow void function() da_glfwTerminate;
    alias nothrow void function(int*, int*, int*) da_glfwGetVersion;
    alias nothrow const(char)* function() da_glfwGetVersionString;

    alias nothrow void function(GLFWerrorfun) da_glfwSetErrorCallback;

    alias nothrow GLFWmonitor** function(int*) da_glfwGetMonitors;
    alias nothrow GLFWmonitor* function() da_glfwGetPrimaryMonitor;
    alias nothrow const(char)* function(GLFWmonitor*) da_glfwGetMonitorName;
    alias nothrow void function(GLFWmonitorfun) da_glfwSetMonitorCallback;
    alias nothrow void function(GLFWmonitor*, int*, int*) da_glfwGetMonitorPhysicalSize;
    alias nothrow void function(GLFWmonitor*, int*, int*) da_glfwGetMonitorPos;

    alias nothrow const(GLFWvidmode)* function(GLFWmonitor*, int*) da_glfwGetVideoModes;
    alias nothrow GLFWvidmode function(GLFWmonitor*) da_glfwGetVideoMode;

    alias nothrow void function(float) da_glfwSetGamma;
    alias nothrow void function(GLFWgammaramp*) da_glfwGetGammaRamp;
    alias nothrow void function(in GLFWgammaramp*) da_glfwSetGammaRamp;

    alias nothrow void function() da_glfwDefaultWindowHints;
    alias nothrow void function(int, int) da_glfwWindowHint;
    alias nothrow GLFWwindow* function(int, int, const(char)*, GLFWmonitor*, GLFWwindow*) da_glfwCreateWindow;
    alias nothrow void function(GLFWwindow*) da_glfwDestroyWindow;
    alias nothrow void function(GLFWwindow*, const(char)*) da_glfwSetWindowTitle;
    alias nothrow void function(GLFWwindow*, int*, int*) da_glfwGetWindowSize;
    alias nothrow void function(GLFWwindow*, int, int) da_glfwSetWindowSize;
    alias nothrow void function(GLFWwindow*, int*, int*) da_glfwGetWindowPos;
    alias nothrow void function(GLFWwindow*, int, int) da_glfwSetWindowPos;
    alias nothrow void function(GLFWwindow*) da_glfwIconifyWindow;
    alias nothrow void function(GLFWwindow*) da_glfwRestoreWindow;
    alias nothrow void function(GLFWwindow*) da_glfwShowWindow;
    alias nothrow void function(GLFWwindow*) da_glfwHideWindow;
    alias nothrow GLFWmonitor* function(GLFWwindow*) da_glfwGetWindowMonitor;
    alias nothrow int function(GLFWwindow*, int) da_glfwGetWindowParam;
    alias nothrow void function(GLFWwindow*, void*) da_glfwSetWindowUserPointer;
    alias nothrow void* function(GLFWwindow*) da_glfwGetWindowUserPointer;
    alias nothrow void function(GLFWwindow*, GLFWwindowposfun) da_glfwSetWindowPosCallback;
    alias nothrow void function(GLFWwindow*, GLFWwindowsizefun) da_glfwSetWindowSizeCallback;
    alias nothrow void function(GLFWwindow*, GLFWwindowclosefun) da_glfwSetWindowCloseCallback;
    alias nothrow void function(GLFWwindow*, GLFWwindowrefreshfun) da_glfwSetWindowRefreshCallback;
    alias nothrow void function(GLFWwindow*, GLFWwindowfocusfun) da_glfwSetWindowFocusCallback;
    alias nothrow void function(GLFWwindow*, GLFWwindowiconifyfun) da_glfwSetWindowIconifyCallback;

    alias nothrow void function() da_glfwPollEvents;
    alias nothrow void function() da_glfwWaitEvents;

    alias nothrow int function(GLFWwindow*, int) da_glfwGetInputMode;
    alias nothrow void function(GLFWwindow*, int, int) da_glfwSetInputMode;
    alias nothrow int function(GLFWwindow*, int) da_glfwGetKey;
    alias nothrow int function(GLFWwindow*, int) da_glfwGetMouseButton;
    alias nothrow void function(GLFWwindow*, int*, int*) da_glfwGetCursorPos;
    alias nothrow void function(GLFWwindow*, int, int) da_glfwSetCursorPos;
    alias nothrow void function(GLFWwindow*, double*, double*) da_glfwGetScrollOffset;
    alias nothrow void function(GLFWwindow*, GLFWkeyfun) da_glfwSetKeyCallback;
    alias nothrow void function(GLFWwindow*, GLFWcharfun) da_glfwSetCharCallback;
    alias nothrow void function(GLFWwindow*, GLFWmousebuttonfun) da_glfwSetMouseButtonCallback;
    alias nothrow void function(GLFWwindow*, GLFWcursorposfun) da_glfwSetCursorPosCallback;
    alias nothrow void function(GLFWwindow*, GLFWcursorenterfun) da_glfwSetCursorEnterCallback;
    alias nothrow void function(GLFWwindow*, GLFWscrollfun) da_glfwSetScrollCallback;

    alias nothrow int function(int, int) da_glfwGetJoystickParam;
    alias nothrow int function(int, float*, int) da_glfwGetJoystickAxes;
    alias nothrow int function(int, ubyte*, int) da_glfwGetJoystickButtons;
    alias nothrow const(char)* function(int) da_glfwGetJoystickName;

    alias nothrow void function(GLFWwindow*, const(char)*) da_glfwSetClipboardString;
    alias nothrow const(char)* function(GLFWwindow*) da_glfwGetClipboardString;

    alias nothrow double function() da_glfwGetTime;
    alias nothrow void function(double) da_glfwSetTime;

    alias nothrow void function(GLFWwindow*) da_glfwMakeContextCurrent;
    alias nothrow GLFWwindow* function() da_glfwGetCurrentContext;
    alias nothrow void function(GLFWwindow*) da_glfwSwapBuffers;
    alias nothrow void function(int) da_glfwSwapInterval;
    alias nothrow int function(const(char)*) da_glfwExtensionSupported;
    alias nothrow void* function(const(char)*) da_glfwGetProcAddress;
}

__gshared
{
    da_glfwInit glfwInit;
    da_glfwTerminate glfwTerminate;
    da_glfwGetVersion glfwGetVersion;
    da_glfwGetVersionString glfwGetVersionString;
    da_glfwSetErrorCallback glfwSetErrorCallback;
    da_glfwGetMonitors glfwGetMonitors;
    da_glfwGetPrimaryMonitor glfwGetPrimaryMonitor;
    da_glfwGetMonitorName glfwGetMonitorName;
    da_glfwSetMonitorCallback glfwSetMonitorCallback;
    da_glfwGetMonitorPhysicalSize glfwGetMonitorPhysicalSize;
    da_glfwGetMonitorPos glfwGetMonitorPos;
    da_glfwGetVideoModes glfwGetVideoModes;
    da_glfwGetVideoMode glfwGetVideoMode;
    da_glfwSetGamma glfwSetGamma;
    da_glfwGetGammaRamp glfwGetGammaRamp;
    da_glfwSetGammaRamp glfwSetGammaRamp;
    da_glfwDefaultWindowHints glfwDefaultWindowHints;
    da_glfwWindowHint glfwWindowHint;
    da_glfwCreateWindow glfwCreateWindow;
    da_glfwDestroyWindow glfwDestroyWindow;
    da_glfwSetWindowTitle glfwSetWindowTitle;
    da_glfwGetWindowSize glfwGetWindowSize;
    da_glfwSetWindowSize glfwSetWindowSize;
    da_glfwGetWindowPos glfwGetWindowPos;
    da_glfwSetWindowPos glfwSetWindowPos;
    da_glfwIconifyWindow glfwIconifyWindow;
    da_glfwRestoreWindow glfwRestoreWindow;
    da_glfwShowWindow glfwShowWindow;
    da_glfwHideWindow glfwHideWindow;
    da_glfwGetWindowMonitor glfwGetWindowMonitor;
    da_glfwGetWindowParam glfwGetWindowParam;
    da_glfwSetWindowUserPointer glfwSetWindowUserPointer;
    da_glfwGetWindowUserPointer glfwGetWindowUserPointer;
    da_glfwSetWindowPosCallback glfwSetWindowPosCallback;
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
    da_glfwSetCursorEnterCallback glfwSetCursorEnterCallback;
    da_glfwSetScrollCallback glfwSetScrollCallback;
    da_glfwGetJoystickParam glfwGetJoystickParam;
    da_glfwGetJoystickAxes glfwGetJoystickAxes;
    da_glfwGetJoystickButtons glfwGetJoystickButtons;
    da_glfwGetJoystickName glfwGetJoystickName;
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
}
