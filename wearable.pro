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
    qml/Conversion/images/swissdayhour.png
