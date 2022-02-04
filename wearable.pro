TEMPLATE = app
TARGET = Converter
QT += quick quickcontrols2

SOURCES += \
    cpp/data_item.cpp \
    wearable.cpp

RESOURCES += \
    wearable.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/quickcontrols2/wearable
INSTALLS += target

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}

HEADERS += \
    cpp/data_item.h
