project "9.VulkanProject"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    systemversion "latest"

    files
    {
        "VulkanProject/**.h",
        "VulkanProject/**.cpp",
        "%{IncludeDir.glm}/glm/**.hpp",
		"%{IncludeDir.glm}/glm/**.inl",
    }

    includedirs
    {
        "%{IncludeDir.GLFW}",
        "%{IncludeDir.glm}",
        "%{IncludeDir.Vulkan}",
        "VulkanProject",
    }

    libdirs
    {
        "%{LibDir.Vulkan}",
    }

    links 
    { 
        "GLFW",
    }

    filter "system:windows"
        defines
        {
            "_WIN32",
            "_WINDOWS",
            "_CRT_SECURE_NO_WARNINGS",
        }
        links 
        { 
            "vulkan-1.lib"
        }
    
    filter "system:linux"
        defines
        {
            "_LINUX",
        }
        links 
        { 
            "vulkan",
            "X11", --https://stackoverflow.com/a/17772217
            "Xxf86vm",
            "Xrandr",
            "pthread",
            "Xi", --
            "dl", -- http://discourse.glfw.org/t/how-to-prevent-glfw-from-trying-to-link-vulkan-functions/839
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        optimize "On"