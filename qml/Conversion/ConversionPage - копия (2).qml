/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.12
//import QtQuick.Controls 2.3 as QQC2
import "../Style"

import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0
Item {
    id: container
    //width: parent.width; height: parent.height
    //color: "#343434"
    property int dpi: Screen.pixelDensity * 25.4
    //anchors.fill: parent   ???!!!
    Item {
        height: 40
        anchors {
            left: container.left
            right: container.right
            //horizontalCenter: parent.horizontalCenter;
            top: parent.top
            //bottom: parent.bottom
        }
        Row {
            //anchors.centerIn: parent
            //anchors.verticalCenter: item.top//anchors.fill: parent
            anchors { left: parent.left; right: parent.right; top: parent.top; margins: 5;
                      leftMargin: 40}
            spacing: 10
                Text {
                    id: first
                    color: UIStyle.themeColorQtGray1
                    text: "Название\nпродукта"
                    font.family: "Ubuntu"
                    //font.pointSize: 15
                    //anchors.left: parent.left
                    //anchors.leftMargin: 10
                    width: container.width / 5
                }
                Text {
                    id: second
                    color: UIStyle.themeColorQtGray1
                    text: "Масса в\nграммах"
                    font.family: "Ubuntu"
                    //font.pointSize: 15
                    anchors.left: first.right
                    anchors.leftMargin: 10
                    width: container.width / 5
                }
                Text {
                    id: third
                    color: UIStyle.themeColorQtGray1
                    text: "Цена за\nкилограмм"
                    font.family: "Ubuntu"
                    //font.pointSize: 15
                    anchors.left: second.right
                    anchors.leftMargin: 10
                    width: container.width / 5
                }
                Text {
                    id: forth
                    color: UIStyle.themeColorQtGray1
                    text: "Итого"
                    font.family: "Ubuntu"
                    //font.pointSize: 15
                    anchors.left: third.right
                    anchors.leftMargin: 15
                    width: container.width / 5
                }
}


    }
    // The model:
    ListModel {
        id: conversionModel

//        ListElement {
//        }
//        ListElement {
//        }
//        ListElement {
//        }

    }

    // The delegate for each fruit in the model:
    Component {
        id: listDelegate
//! [0]

        Item {
//! [0]
            id: delegateItem
            width: listView.width; height: 80
            clip: true
            property alias nameInput: textInput.text
            property alias weight: amountWeight.text
            property alias price: amountPrice.text
            property alias totalprice: total.text

            Item {
                id: itemDelegate
                anchors {
                    left: parent.left
                    right: parent.right
                    horizontalCenter: parent.horizontalCenter;
                    top: parent.verticalCenter
                    bottom: parent.bottom
                }

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
                                    width:container.width / 5
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
                                    width:container.width / 7
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
                                    width:container.width / 7
                                    height:40
                                    color: "black"
                                    font.family: "Ubuntu"
                                    font.pointSize: 14

                                }
                                Rectangle {//прямоугольник с закругленными углами
                                         id: roundRect
                                         radius: 15
                                         color: UIStyle.colorQtGray5
                                         width: container.width / 10
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
                                             //width: container.width / 10
                                             //elide: Text.ElideRight
                                             //maximumLineCount : 1
                                             //wrapMode: "WordWrap"
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
//                    Colorize {
//                            anchors.fill: closebut
//                            source: closebut
//                            hue: 0.4
//                            saturation: 0.5
//                            lightness: -0.2
//                        }
                }
            }

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
    function apply()
    {
        console.log("list.count=",listView.count)
        for(var i=0;i<listView.count+1;i++) //очень странный +1, тк должен выходить за пределы размера. НО РАБОТАЕТ!!!
        {
            listView.contentItem.children[i].totalprice = ((listView.contentItem.children[i].weight / 1000) * listView.contentItem.children[i].price).toFixed(2)

            console.log(listView.contentItem.children[i].totalprice)
            console.log(listView.contentItem.children[i].name)
        }
    }
    // The view:
    ListView {
        id: listView
        anchors {
            left: parent.left; top: parent.top;
            right: parent.right; bottom: buttons.top;
            margins: 20
        }
        model: conversionModel
        delegate: listDelegate
    }

    Row {
        id: buttons
        anchors { left: parent.left; right: parent.right; bottom: parent.bottom; margins: 20; bottomMargin: 100 }
        spacing: 10

        TextButton {
            id: addbut
            anchors.left: buttons.left      
            text: "Добавить\nстроку"
            onClicked: {
                conversionModel.append({})
            }
        }
        TextButton {
            anchors.horizontalCenter: buttons.horizontalCenter
            text: "Рассчитать"
            color: UIStyle.colorQtGray2
            onClicked: apply()
        }
        TextButton {
            anchors.right: buttons.right
            text: "Очистить"
            color: UIStyle.colorQtGray2
            onClicked: conversionModel.clear()
        }
    }
}
