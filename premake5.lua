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
-- IncludeDir["GLFW"] = "%{wks.location}/libs/glfw-3.3/include"
-- IncludeDir["Glad"] = "%{wks.location}/libs/glad/include"
-- IncludeDir["glm"] = "%{wks.location}/libs/glm"
-- IncludeDir["stb_image"] = "Hazel/vendor/stb_image"

group "Dependencies"
    -- include "libs/glfw-3.3"
    -- include "libs/glad"
    -- include "libs/spdlog-1.x"
    include "Chapter03/3.SFMLProject"
    include "Chapter04/4.SFMLProject"
    include "Chapter05/5.SFMLProject"
    

