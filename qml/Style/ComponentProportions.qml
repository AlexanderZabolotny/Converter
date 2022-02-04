import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0
import "../Style"
Item {
    id: proportions

    property alias about: textAbout.text
    property alias intialText1: inputName.text
    property alias outputText1: outputName.text

    property alias intialText2: inputName2.text
    property alias outputText2: outputName2.text
    width: parent.width
    height: 200


    Item {
        id: root
        anchors.fill: parent
        //spacing: 5
        Label {
            id: textAbout
            anchors.top: root.top
            anchors.horizontalCenter: root.horizontalCenter
            text: qsTr("Размеры")
        }

        Label {
            id: inputName
            anchors.top: textAbout.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.left: root.left
            anchors.leftMargin: 40
            text: qsTr("text")
        }
        TextInputField {
            id: inputSize
            anchors.top: inputName.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.left: root.left
            anchors.leftMargin: 80
            width:80
            height:40
        }


        Label {
            id: outputName
            anchors.top: textAbout.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.right: root.right
            anchors.rightMargin: 40
            text: qsTr("text")
        }
        TextInputField {
            id: newSize
            anchors.top: inputName.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.right: root.right
            anchors.rightMargin: 80
            width:80
            height:40
        }


        Label {
            id: textWeight
            anchors.top: newSize.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            //anchors.bottomMargin: 5
            anchors.horizontalCenter: root.horizontalCenter
            text: qsTr("Высота")
        }

        Text {
            id: inputName2
            anchors.top: textWeight.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.left: root.left
            anchors.leftMargin: 40
            text: qsTr("text")
        }
        TextInputField {
            id:inputSize2
            anchors.top: inputName2.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.left: root.left
            anchors.leftMargin: 80
            width:80
            height:40
        }


        Label {
            id: outputName2
            anchors.top: textWeight.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.right: root.right
            anchors.rightMargin: 40
            text: qsTr("text")
        }
        TextInputField {
            id: newSize2
            anchors.top: outputName2.bottom
            anchors.topMargin: UIStyle.marginSizeXXS
            anchors.right: root.right
            anchors.rightMargin: 80
            width:80
            height:40
        }

    }

}

//}

