import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4

Item {
    id: ingredient
    property alias ingredientText: qualifier.text
    property alias ingredientName: textInput.text
    property alias ingredientWeight: amountWeight.text
    property alias ingredientPrice: amountPrice.text
    property alias ingredientTotal: total.text
    property alias ingredientUnit: unit.text

    width: rl.implicitWidth
    height: rl.implicitHeight

    RowLayout {
        id: rl
        Text {
            id: qualifier
            color: "white"
            text: "asdf"
            font.family: "Ubuntu"
            font.pixelSize: 20
        }
        Rectangle{
            width: 80
            height: 20
            radius: 45
        TextInput  {
            id: textInput
            width: 80
            height: 20
            //placeholderText: "Наименование"
            font.family: "Ubuntu"
            font.pixelSize: 20
        }
        }
        Rectangle {
            width: 50
            height: 20
            radius: 45
        TextInput  {
            id: amountWeight
            width: 50
            height: 20
            font.family: "Ubuntu"
            font.pixelSize: 20
            }
        }
        Rectangle {
            width: 50
            height: 20
            radius: 45
        TextInput  {
            id: amountPrice
            width: 50
            height: 20
            font.family: "Ubuntu"
            font.pixelSize: 20
            }
        }
        Rectangle {//прямоугольник с закругленными углами
                 id: roundRect
                 radius: 45
                 color: "#827676"
                 width: 60
                 height: 20
                 Text {
                     id: total
                     font.family: "Ubuntu"
                     font.pixelSize: 16
                     text: ""
                     anchors.verticalCenter: parent.verticalCenter
                     anchors.horizontalCenter: parent.horizontalCenter
                 }
               }
        Rectangle {
            width: 20
            height: 20
            radius: 45
            color: "white"
            Text {
                id: unit
                font.family: "Ubuntu"
                font.pixelSize: 16
                text: "unit"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
