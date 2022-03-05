import QtQuick 2.12
import QtQuick.Controls 2.3 as QQC2
import ".."
import "../Style"
import QtGraphicalEffects 1.0
Item{
    id:quadro
    //anchors.fill: parent
property double koef : 0.0
property double s : 0.0
property double q : 0.0
    Item {
        height: 40
        anchors {
            left: quadro.left
            right: quadro.right
            horizontalCenter: parent.horizontalCenter;
            top: parent.top
            //bottom: parent.bottom
        }

            //anchors { left: parent.left; right: parent.right; top: parent.top; margins: 5; leftMargin: 40}

                Text {
                    id: first
                    color: UIStyle.themeColorQtGray1
                    anchors.left: parent.left
                    anchors.leftMargin: 40
                    text: "Ингридиенты"
                    font.family: "Ubuntu"
                    width: 80
                }
                Text {
                    id: second
                    color: UIStyle.themeColorQtGray1
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Ubuntu"
                    text: "Исходные"
                    //font.pointSize: 15

                    width: 70
                }
                Text {
                    id: third
                    color: UIStyle.themeColorQtGray1
                    text: "Новые"
                    font.family: "Ubuntu"
                    //font.pointSize: 15
                    anchors.right: parent.right
                    anchors.rightMargin: 60
                    width: 60
                }




    }


    ListModel {
        id: quadroModel
        ListElement {
                }

    }

    Component {
        id: listDelegate
//! [0]

        Item {
//! [0]
            id: delegateItem
            width: listView.width; height: 80
            clip: true


            ComponentSource{
                id:itemDelegate
                anchors {
                    left: parent.left
                    right: parent.right
                    horizontalCenter: parent.horizontalCenter;
                    top: parent.verticalCenter
                    bottom: parent.bottom
                    bottomMargin: 10
                }

                Image {
                    id : closebut
                    anchors.right: parent.right
                    anchors.rightMargin: 5
                    source: "../../images/list-delete.png"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 5
                    MouseArea { anchors.fill:parent; onClicked: quadroModel.remove(index) }
                }
                ColorOverlay {
                    anchors.fill: closebut
                    source: closebut
                    color: UIStyle.colorQtAuxGreen1  // make image like it lays under xxx glass
                }
        }
            property alias totalPrice: itemDelegate.totalprice
            property alias oldweight: itemDelegate.weight
            // Animate adding and removing of items:
//! [1]
            ListView.onAdd: SequentialAnimation {
                PropertyAction { target: delegateItem; property: "height"; value: 0 }
                NumberAnimation { target: delegateItem; property: "height"; to: 80; duration: 250; easing.type: Easing.InOutQuad }
            }

            ListView.onRemove: SequentialAnimation {
                PropertyAction { target: delegateItem; property: "ListView.delayRemove"; value: true }
                NumberAnimation { target: delegateItem; property: "height"; to: 0; duration: 250; easing.type: Easing.InOutQuad }

                // Make sure delayRemove is set back to false so that the item can be destroyed
                PropertyAction { target: delegateItem; property: "ListView.delayRemove"; value: false }
            }
        }
//! [1]
    }



    ListView {
        id: listView
        anchors {
            left: parent.left; top: parent.top;
            right: parent.right; bottom: proportions.top;
            margins: 10
        }
        model: quadroModel
        delegate: listDelegate
    }


    Row {
        id: buttons
        anchors { left: parent.left; right: parent.right; bottom: parent.bottom; margins: 20; bottomMargin: 40 }
        spacing: 10

        TextButton {
            id: addbut
            anchors.left: buttons.left
            text: "Добавить"
            onClicked: {
                quadroModel.append({})
            }
        }
        TextButton {
            anchors.horizontalCenter: buttons.horizontalCenter
            text: "Рассчитать"
            color: UIStyle.colorQtGray2
            onClicked: calculate()
        }
        TextButton {
            anchors.right: buttons.right
            text: "Очистить"
            color: UIStyle.colorQtGray2
            onClicked: quadroModel.clear()
        }
    }
    ComponentProportions {
        id: proportions
        //anchors.centerIn: parent
        anchors {
            //left: diametr.left
            //right: diametr.right
            horizontalCenter: quadro.horizontalCenter;
            //verticalCenter: diametr.verticalCenter
            //top: parent.top
            bottom:  buttons.top
            bottomMargin: -70
        }
        about: "Размеры"
        initialText1: "Сторона\nквадратной формы"
        outputText1: "Радиус\nкруглой формы"

        //initialText2: "Исходные"
        //outputText2: "Новые"
    }
    function calculate()
    {
        console.log("list.count=",listView.count)
        s = parseFloat((proportions.oldSize * proportions.oldSize).toFixed(2))
        q = parseFloat((Math.pow((proportions.newSize/2), 2) * Math.PI ).toFixed(2))
        console.log("s=",s)
        console.log("q=",q)
        koef = parseFloat((q/s).toFixed(2))
        console.log("koef=",koef)
        //console.log("initial2=",initial2)
        for(var i=0;i<listView.count+1;i++) //очень странный +1, тк должен выходить за пределы размера. НО РАБОТАЕТ!!!
        {
            listView.contentItem.children[i].totalPrice = (koef * listView.contentItem.children[i].oldweight).toFixed(0)

            console.log(listView.contentItem.children[i].totalPrice)
            console.log(listView.contentItem.children[i].name)
        }
    }
}
