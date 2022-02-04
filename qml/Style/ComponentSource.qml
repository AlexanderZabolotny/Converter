import QtQuick 2.12
import "../Style"
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0

Item {
    id: itemDelegate

    property alias nameInput: textInput.text
    property alias weight: oldWeight.text
    //property alias price: amountPrice.text
    property alias totalprice: newWeight.text

//    anchors {
//        left: parent.left
//        right: parent.right
//        horizontalCenter: parent.horizontalCenter;
//        top: parent.verticalCenter
//        bottom: parent.bottom
//    }



        Text {
            id: qualifier
            color: UIStyle.themeColorQtGray1
            text: index + 1
            font.family: "Ubuntu"
            font.pointSize: 14
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 5
        }

        TextField {
            id: textInput
            anchors.left: parent.left
            anchors.leftMargin: 35
            background: Rectangle { radius: 15 }
            //validator: DoubleValidator {bottom: 1; top: 100000}
            focus: true
            maximumLength: 11
            width:100
            height:40
            color: "black"
            font.family: "Ubuntu"
            font.pointSize: 14
        }
        TextField {
            id: oldWeight
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle { radius: 15 }
            validator: DoubleValidator {bottom: 1; top: 100000}
            focus: true
            //anchors.centerIn: parent
            maximumLength: 11
            width:80
            height: 40
            color: "black"
            font.family: "Ubuntu"
            font.pointSize: 15
        }

        Rectangle {//прямоугольник с закругленными углами
            id: roundRect
            radius: 15
            color: UIStyle.colorQtGray5
            width: 80
            height: 40
            anchors.right: parent.right
            anchors.rightMargin: 40
            Text {
                id: newWeight
                color: "black"
                font.family: "Ubuntu"
                font.pointSize: 14
                text: ""
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }


        Image {
            id : closebut
            anchors.right: parent.right
            anchors.rightMargin: 5
            source: "../../images/list-delete.png"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea { anchors.fill:parent; onClicked: conversionModel.remove(index) }
        }
        ColorOverlay {
            anchors.fill: closebut
            source: closebut
            color: UIStyle.colorQtAuxGreen1  // make image like it lays under xxx glass
        }

}
