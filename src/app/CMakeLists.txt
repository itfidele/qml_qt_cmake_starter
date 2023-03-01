add_executable(helloworld
    main.cpp
    back.cpp
)

target_link_libraries(helloworld PRIVATE Qt6::Widgets Qt6::Quick)

set_target_properties(helloworld PROPERTIES
    WIN32_EXECUTABLE ON
    MACOSX_BUNDLE ON
)
qt_add_qml_module(helloworld
    URI hello
    VERSION 1.0
    QML_FILES main.qml Itemg.qml)
