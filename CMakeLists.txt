cmake_minimum_required(VERSION 3.16)

project(Canteen VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCanteen
    main.cpp
)

qt_add_qml_module(appCanteen
    URI Canteen
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES
    QML_FILES
    QML_FILES ui/upperScreen/UpperScreen.qml
    QML_FILES ui/lowerScreen/LowerScreen.qml
    QML_FILES ui/bottomBar/BottomBar.qml
    RESOURCES ad.mp4
    RESOURCES ui/upperScreen/ad.mp4
    RESOURCES ui/assets/homeIcon.png
    RESOURCES ui/assets/homeIcon.png
RESOURCES ui/assets/homeIcon.png ui/upperScreen/ad.mp4
QML_FILES ui/bottomBar/BottomBar.qml ui/lowerScreen/LowerScreen.qml ui/upperScreen/UpperScreen.qml
RESOURCES ui/bottomBar/homeIcon.png
RESOURCES ui/bottomBar/cart.png
RESOURCES ui/bottomBar/menu.png
RESOURCES ui/lowerScreen/assets/PepsiCan.png
RESOURCES ui/lowerScreen/PepsiCan.jpg
RESOURCES ui/lowerScreen/Chips.jpg
RESOURCES ui/lowerScreen/DasaniWater.png
RESOURCES ui/lowerScreen/Birell_drink.png ui/lowerScreen/chocolate.png ui/lowerScreen/cookies.png ui/lowerScreen/fruit_snacks.png ui/lowerScreen/granola_bar.jpg ui/lowerScreen/gum.png ui/lowerScreen/mints.png ui/lowerScreen/mirindaapple.jpg ui/lowerScreen/monster.png ui/lowerScreen/nuts.png ui/lowerScreen/sandwich.png ui/lowerScreen/Slane-Perece-MEDELA-mockup-crna-120g-min.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCanteen PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCanteen
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCanteen
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appCanteen
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
