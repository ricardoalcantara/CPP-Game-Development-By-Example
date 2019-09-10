project "3.SFMLProject"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++11"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    systemversion "latest"

    files
    {
        "%{prj.location}/SFMLProject/Source.cpp",
    }

    links 
    {
        "sfml-graphics",
        "sfml-window",
        "sfml-system",
        "sfml-network",
        "sfml-audio",
    }

    filter "system:windows"
        defines
        {
            "_WIN32",
            "_WINDOWS",
            "_CRT_SECURE_NO_WARNINGS",
        }
        includedirs
        {
            "%{prj.location}/SFMLProject/",
            "%{prj.location}/SFMLProject/SFML-2.5.1/include",
        }
    
    filter "system:linux"
        defines
        {
            "_LINUX",
        }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "RELEASE" }
        optimize "On"