TEMPLATE = app
TARGET = wearable
QT += quick quickcontrols2

SOURCES += \
    wearable.cpp

RESOURCES += \
    wearable.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/quickcontrols2/wearable
INSTALLS += target

DISTFILES += \
    qml/Conversion/Component.qml \
    qml/Conversion/ConversionPage.qml \
    qml/Conversion/Ingredient.qml \
    qml/DemoMode.qml \
    qml/DemoModeIndicator.qml \
    qml/Diametr/DiametrPage.qml \
    qml/FromCircle/FromCirclePage.qml \
    qml/FromQuadro/FromQuadroPage.qml \
    qml/Gelatin/gelatinPage.qml \
    qml/LauncherPage.qml \
    qml/NaviButton.qml \
    qml/Pectin/PectinPage.qml \
    qml/Settings/SettingsPage.qml \
    qml/Settings/images/bluetooth-dark.png \
    qml/Settings/images/bluetooth-dark@2x.png \
    qml/Settings/images/bluetooth-light.png \
    qml/Settings/images/bluetooth-light@2x.png \
    qml/Settings/images/brightness-dark.png \
    qml/Settings/images/brightness-dark@2x.png \
    qml/Settings/images/brightness-light.png \
    qml/Settings/images/brightness-light@2x.png \
    qml/Settings/images/demo-mode-dark.png \
    qml/Settings/images/demo-mode-dark@2x.png \
    qml/Settings/images/demo-mode-light.png \
    qml/Settings/images/demo-mode-light@2x.png \
    qml/Settings/images/demo-mode-white.png \
    qml/Settings/images/demo-mode-white@2x.png \
    qml/Settings/images/demo-mode.svg \
    qml/Settings/images/theme-dark.png \
    qml/Settings/images/theme-dark@2x.png \
    qml/Settings/images/theme-light.png \
    qml/Settings/images/theme-light@2x.png \
    qml/Settings/images/theme.svg \
    qml/Settings/images/wifi-dark.png \
    qml/Settings/images/wifi-dark@2x.png \
    qml/Settings/images/wifi-light.png \
    qml/Settings/images/wifi-light@2x.png \
    qml/Style/PageIndicator.qml \
    qml/Style/Slider.qml \
    qml/Style/Switch.qml \
    qml/Style/UIStyle.qml \
    qml/Style/qmldir \
    qml/SwipeViewPage.qml
