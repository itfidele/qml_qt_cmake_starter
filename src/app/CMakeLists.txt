set(Boost_USE_STATIC_LIBS        ON)  # only find static libs
set(Boost_USE_DEBUG_LIBS        OFF)  # ignore debug libs and
set(Boost_USE_RELEASE_LIBS       ON)  # only find release libs
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)
find_package(Boost 1.66.0 COMPONENTS date_time filesystem system REQUIRED)

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable(helloworld
        main.cpp
        back.cpp
    )

    target_link_libraries(helloworld PRIVATE Qt6::Widgets Qt6::Quick Qt6::QuickControls2 ${Boost_LIBRARIES})

    set_target_properties(helloworld PROPERTIES
        WIN32_EXECUTABLE ON
        MACOSX_BUNDLE ON
    )
    qt_add_qml_module(helloworld
        URI hello
        VERSION 1.0
        QML_FILES main.qml)
endif()

