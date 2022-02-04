import QtQuick 2.0
import QtQuick.Controls 2.12

TextField {
    id: textField
    background: Rectangle { radius: 15 }
    validator: DoubleValidator {bottom: 1; top: 100000}
    focus: true
    maximumLength: 11
    width:80
    height:40
    color: "black"
    font.family: "Ubuntu"
    font.pointSize: 14

}
