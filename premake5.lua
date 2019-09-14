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
IncludeDir["bullet"] = "%{wks.location}/libs/bullet3-2.88/src"
IncludeDir["glm"] = "%{wks.location}/libs/glm"
IncludeDir["freetype"] = "%{wks.location}/libs/freetype-2.10.0/include"
IncludeDir["Vulkan"] = "%{os.getenv('VULKAN_SDK')}/include"


LibDir = {}
LibDir["freetype"] = "%{wks.location}/libs/freetype-2.10.0/objs/.libs"
LibDir["Vulkan"] = "%{os.getenv('VULKAN_SDK')}/lib"

group "Dependencies"
    include "libs/glew-2.1.0"
    include "libs/glfw-3.3"
    include "libs/bullet3-2.88"
    include "Chapter03/3.SFMLProject"
    include "Chapter04/4.SFMLProject"
    include "Chapter05/5.SFMLProject"
    include "Chapter06/6.OpenGLProject"
    include "Chapter07/7.OpenGLProject"
    include "Chapter08/8.OpenGLProject"
    include "Chapter09/9.VulkanProject"
    include "Chapter10/10.VulkanProject"
    include "Chapter11/11.VulkanProject"
    include "Chapter12/12.VulkanProject"
    

