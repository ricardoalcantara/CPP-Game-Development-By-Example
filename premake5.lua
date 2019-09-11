workspace "CPPGameDevelopmentByExample"
    architecture "x64"
    configurations { "Debug", "Release" }
    filter "system:windows"
        -- configuration "Debug"
        buildoptions "/MDd"
        -- configuration "Release"
        buildoptions "/MD"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/libs/glfw-3.3/include"
IncludeDir["GLEW"] = "%{wks.location}/libs/glew-2.1.0/include"
IncludeDir["glm"] = "%{wks.location}/libs/glm"


group "Dependencies"
    include "libs/glew-2.1.0"
    include "libs/glfw-3.3"
    include "Chapter03/3.SFMLProject"
    include "Chapter04/4.SFMLProject"
    include "Chapter05/5.SFMLProject"
    include "Chapter06/6.OpenGLProject"
    -- include "Chapter07/7.OpenGLProject"
    -- include "Chapter08/8.OpenGLProject"
    

