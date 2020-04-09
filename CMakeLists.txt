cmake_minimum_required (VERSION 3.13)

project(thermo VERSION 0.0.1 LANGUAGES C CXX ASM)
if (NOT TARGET Qul::QuickUltralite)
    find_package(Qul)
endif()
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_executable(respirator)

qul_add_resource(respirator
    FILES
    images/full.png
    images/main-bg.png
    images/ppeak.png
    images/expminvol.png
    images/ftotal.png
    images/vte.png
    images/btn-Monitoring-normal.png
    images/btn-Monitoring-on.png
    images/btn-system-normal.png
    images/btn-system-on.png
    images/btn-tools-normal.png
    images/btn-tools-on.png
    images/btn-Modes-on.png
    images/btn-modes-normal.png
    images/btn-controls-on.png
    images/btn-controls-normal.png
    images/btn-add-normal.png
    images/btn-add-down.png
    images/btn-remove-normal.png
    images/btn-remove-down.png
    images/current-mode.png
    images/change-view.png
    images/Vt-title.png
    images/Oxygen-title.png
    images/peepcpap-title.png
    images/Power-state.png
    images/static-graph.png
    images/graph.png
    images/graph-bg.png
    images/extra-data.png
    images/center.png
    images/left.png
    images/right.png
)

qul_target_qml_sources(respirator
    qml/Respirator.qml
    qml/BottomArea.qml
    qml/RightArea.qml
    qml/LeftArea.qml
    qml/CenterArea.qml
    qml/ModesWidget.qml
)

target_link_libraries (respirator Qul::QuickUltralite Qul::QuickUltraliteControlsTemplates Qul::QuickUltraliteCharts)
app_target_setup_os(respirator)
app_target_default_main(respirator Respirator)

