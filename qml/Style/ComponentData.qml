import QtQuick 2.12
import "../Style"
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0

Item {
    id: itemDelegate

    property alias nameInput: textInput.text
    property alias weight: amountWeight.text
    property alias price: amountPrice.text
    property alias totalprice: total.text

//    anchors {
//        left: parent.left
//        right: parent.right
//        horizontalCenter: parent.horizontalCenter;
//        top: parent.verticalCenter
//        bottom: parent.bottom
//    }

    Row {
        id: row
        //anchors.centerIn: parent
        anchors.fill: parent
        spacing: 10
        //anchors { left: parent.left; right: parent.right; }

        Text {
            id: qualifier
            color: UIStyle.themeColorQtGray1
            text: index + 1
            font.family: "Ubuntu"
            font.pointSize: 14
            anchors.verticalCenter: row.verticalCenter
        }

        TextField {
            id: textInput
            anchors.left: qualifier.right
            anchors.leftMargin: 15
            background: Rectangle { radius: 15 }
            //validator: DoubleValidator {bottom: 1; top: 100000}
            focus: true
            //anchors.centerIn: parent
            maximumLength: 11
            width:80
            height:40
            color: "black"
            font.family: "Ubuntu"
            font.pointSize: 14
        }
        TextField {
            id: amountWeight
            anchors.left: textInput.right
            anchors.leftMargin: 10
            background: Rectangle { radius: 15 }
            validator: DoubleValidator {bottom: 1; top: 100000}
            focus: true
            //anchors.centerIn: parent
            maximumLength: 11
            width:60
            height: 40
            color: "black"
            font.family: "Ubuntu"
            font.pointSize: 15
        }
        TextField {
            id: amountPrice
            anchors.left: amountWeight.right
            anchors.leftMargin: 40
            background: Rectangle { radius: 15 }
            validator: DoubleValidator {bottom: 1; top: 100000}
            focus: true
            //anchors.centerIn: parent
            maximumLength: 11
            width:60
            height:40
            color: "black"
            font.family: "Ubuntu"
            font.pointSize: 14

        }
        Rectangle {//?????????????????????????? ?? ?????????????????????????? ????????????
            id: roundRect
            radius: 15
            color: UIStyle.colorQtGray5
            width: 40
            height: 40
            anchors.left: amountPrice.right
            anchors.leftMargin: 25
            Text {
                id: total
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
            anchors.left: roundRect.right
            anchors.leftMargin: 5
            source: "../../images/list-delete.png"
            anchors.verticalCenter: row.verticalCenter
            MouseArea { anchors.fill:parent; onClicked: conversionModel.remove(index) }
        }
        ColorOverlay {
            anchors.fill: closebut
            source: closebut
            color: UIStyle.colorQtAuxGreen1  // make image like it lays under xxx glass
        }
    }
}
