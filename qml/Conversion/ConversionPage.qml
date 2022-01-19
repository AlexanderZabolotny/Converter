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
import QtQuick.Controls 2.3 as QQC2
import "../Style"

//Item {
//    QQC2.SwipeView {
//        id: svWatchContainer

//        anchors.fill: parent

//        ListModel {
//            id: placesList
//            ListElement {
//                cityName: "New York"
//                timeShift: -4
//            }
//            ListElement {
//                cityName: "London"
//                timeShift: 0
//            }
//            ListElement {
//                cityName: "Oslo"
//                timeShift: 1
//            }
//            ListElement {
//                cityName: "Mumbai"
//                timeShift: 5.5
//            }
//            ListElement {
//                cityName: "Tokyo"
//                timeShift: 9
//            }
//            ListElement {
//                cityName: "Brisbane"
//                timeShift: 10
//            }
//            ListElement {
//                cityName: "Los Angeles"
//                timeShift: -8
//            }
//        }

//        Repeater {
//            model: placesList
//            delegate: Clock {
//            }
//        }
//    }

//    QQC2.PageIndicator {
//        count: svWatchContainer.count
//        currentIndex: svWatchContainer.currentIndex

//        anchors.bottom: svWatchContainer.bottom
//        anchors.horizontalCenter: parent.horizontalCenter
//    }
//}
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.12


Item {
    property int number_of_button: 0
id:window
anchors.fill: parent


ColumnLayout
{   id: row
    spacing: 10
    anchors.top: window.top
    //height: window.height
    width: window.width
    //width: parent.width
    //        height: implicitHeight
    //        RowLayout {
    //            anchors.top: parent.top
    //            anchors.left: parent.left
    //            anchors.right: parent.right
    RowLayout {
//        anchors.top: parent.top
//        anchors.left: parent.left
//        anchors.right: parent.right
////        anchors.left: window.left
////        anchors.right: window.right

//        //width: window.width
//        anchors.horizontalCenter: parent.horizontalCenter
//        Layout.alignment: Qt.AlignHCenter
        anchors.fill: parent
        width: row.width
            spacing: 5
                Text {
                    id: first
                    color: UIStyle.themeColorQtGray1
                    text: "Название\nпродукта"
                    font.family: "Ubuntu"
                    font.pointSize: Math.min(window.width,window.height)/25
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                }
                Text {
                    id: second
                    color: UIStyle.themeColorQtGray1
                    text: "Масса в\nграммах"
                    font.family: "Ubuntu"
                    font.pointSize: Math.min(window.width,window.height)/25
                    anchors.left: first.right
                    anchors.leftMargin: 5
                }
                Text {
                    id: third
                    color: UIStyle.themeColorQtGray1
                    text: "Цена за\nкилограмм"
                    font.family: "Ubuntu"
                    font.pointSize: Math.min(window.width,window.height)/25
                    anchors.left: second.right
                    anchors.leftMargin: 5
                }
                Text {
                    id: forth
                    color: UIStyle.themeColorQtGray1
                    text: "Итого"
                    font.family: "Ubuntu"
                    font.pointSize: Math.min(window.width,window.height)/25
                    anchors.left: third.right
                    anchors.leftMargin: 5
                }
  //}
    // Строка с полем где отображается индекс нажатой кнопки
  //Row {
      //id: row
      //height: 50
      //anchors.top: parent.top
      //anchors.left: parent.left
      //anchors.right: parent.right

      //Задаём размещение поля с индексом кнопки
//      Rectangle {
//          width: ( parent.width / 5)
//          height: 50

//          // Установливаем текстовое поле для размещения индекса кнопки
//          Text {
//              id: textField_For_Button_Id
//              anchors.fill: parent
//              text: ""
//              verticalAlignment: Text.AlignVCenter
//              horizontalAlignment: Text.AlignHCenter
//          }
//      }

      // Кнопка для создания динамических кнопок
      Button {
          id: button_Creation
          text: qsTr("+")
          //width: (parent.width / 10)//40
          //height: 40
          Layout.fillWidth: true
                  Layout.minimumWidth: 40
                  Layout.maximumWidth: 40
                  Layout.preferredWidth: 40
                  Layout.preferredHeight: 40
                  anchors.left: forth.right
                  anchors.leftMargin: 5
          // По клику на эту кнопку
          // в модель
          // добавляется объект
          // с заданными параметрами
          onClicked: {
              model_id.append({property_Text_Of_New_Number: ( ++number_of_button)})
          }
      }

      // Кнопка для удаления динамических кнопок
      Button {
          id: button_Deletion
          text: qsTr("-")
          //width: (parent.width / 10)//40
          //height: 40
          Layout.fillWidth: true
                  Layout.minimumWidth: 40
                  Layout.maximumWidth: 40
                  Layout.preferredWidth: 40
                  Layout.preferredHeight: 40
                  anchors.left: button_Creation.right
                  anchors.leftMargin: 5
          // Удаляем кнопку по её индексу в ListView
          onClicked: {
              //if(textField_For_Button_Id.text != "Button " + number_of_button)
              //{
              if(number_of_button>0)
                  model_id.remove(--number_of_button)
              //}
          }
      }

  }

}
       // Наша модель, которая используется и для ListView
       // и для qml flow type
       ListModel {
           id: model_id
       }

       // ListView это список
       ListView {
           id: listView_id
           model: model_id // Модель прописана тут!
           anchors.top: row.bottom
           anchors.topMargin: 5
           anchors.bottom: parent.bottom
           anchors.left: parent.left
           anchors.right: parent.right

           // Можно было прописать Item тут.
           // Вынесли в component и ссылаемся на его id.
           delegate: component_id
       }

       Component {
           // Вёрстка ОДНОГО объекта
           // который отображается в СПИСКЕ
           // в качестве одного ЭЛЕМЕНТА списка
           id: component_id
           Item {
               id: item_id
               anchors.left: parent.left
               anchors.right: parent.right
               height: 40
               RowLayout {
                   id: rl
                   Text {
                       id: qualifier
                       color: UIStyle.themeColorQtGray1
                       text: property_Text_Of_New_Number
                       font.family: "Ubuntu"
                       font.pointSize: Math.min(window.width,window.height)/25
                   }
                   Rectangle{
                       width: first.width-10
                       height: 20
                       radius: 45
                   TextInput  {
                       id: textInput
                       width: 80
                       height: 20
                       //placeholderText: "Наименование"
                       color: "black"
                       font.family: "Ubuntu"
                       font.pointSize: Math.min(window.width,window.height)/25
                   }
                   }
                   Rectangle {
                       width: second.width
                       height: 20
                       radius: 45
                   TextInput  {
                       id: amountWeight
                       width: 50
                       height: 20
                       color: "black"
                       font.family: "Ubuntu"
                       font.pointSize: Math.min(window.width,window.height)/25
                       }
                   }
                   Rectangle {
                       width: third.width
                       height: 20
                       radius: 45
                   TextInput  {
                       id: amountPrice
                       width: 50
                       height: 20
                       color: "black"
                       font.family: "Ubuntu"
                       font.pointSize: Math.min(window.width,window.height)/25
                       }
                   }
                   Rectangle {//прямоугольник с закругленными углами
                            id: roundRect
                            radius: 45
                            color: "#827676"
                            width: forth.width
                            height: 20
                            Text {
                                id: total
                                color: "black"
                                font.family: "Ubuntu"
                                font.pointSize: Math.min(window.width,window.height)/25
                                text: ""
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                          }
                   Rectangle {
                       width: first.width-10
                       height: 20
                       radius: 45
                       color: "white"
                       Text {
                           id: unit
                           color: "black"
                           font.family: "Ubuntu"
                           font.pointSize: Math.min(window.width,window.height)/25
                           text: "rub"
                           anchors.verticalCenter: parent.verticalCenter
                           anchors.horizontalCenter: parent.horizontalCenter
                       }
                   }
               }
//               Ingredient{
//                               Layout.alignment: Qt.AlignHCenter
//                               width: item_id.width
//                               ingredientText: property_Text_Of_New_Number; ingredientName: ; ingredientWeight: ;ingredientTotal : ;ingredientUnit: "rub"
//               }
           }
       }
//       Rectangle {
//                   id: button

//                   width: 100
//                   height: 40
//                   //anchors.top: row.bottom
//                   anchors.bottom: parent.bottom
//                   anchors.horizontalCenter: parent.horizontalCenter
//                   border {
//                       color: "black"
//                       width: 1
//                   }

//                   Text {
//                       anchors.centerIn: parent
//                       renderType: Text.NativeRendering
//                       text: "Add"
//                   }

//                   MouseArea {
//                       anchors.fill: parent
//                       onClicked: dataModel.append({})
//                   }
//               }
}

//Item {
//    property int number_of_name: 0

//    ColumnLayout{
//        width: parent.width
//        height: implicitHeight
//        RowLayout {
//            anchors.top: parent.top
//            anchors.left: parent.left
//            anchors.right: parent.right

//            Layout.alignment: Qt.AlignHCenter
//            Text {
//                color: "black"
//                text: "Название\nпродукта"
//                font.family: "Ubuntu"
//                font.pixelSize: 14
//            }
//            Text {
//                color: "black"
//                text: "Масса в\nграммах"
//                font.family: "Ubuntu"
//                font.pixelSize: 14
//            }
//            Text {
//                color: "black"
//                text: "Цена за\nкилограмм"
//                font.family: "Ubuntu"
//                font.pixelSize: 14
//            }
//            Text {
//                color: "black"
//                text: "Итого"
//                font.family: "Ubuntu"
//                font.pixelSize: 14
//            }
//        }


//            Ingredient{
//                Layout.alignment: Qt.AlignHCenter
//                ingredientWeight: 100; ingredientText: "1"; ingredientName: ; ingredientTotal : ;ingredientUnit: "rub"
//            }
//            Ingredient{
//                Layout.alignment: Qt.AlignHCenter
//                ingredientWeight: 100; ingredientText: "2"; ingredientName: ; ingredientUnit: "rub"
//            }
//            Ingredient{
//                Layout.alignment: Qt.AlignHCenter
//                ingredientWeight: 100; ingredientText: "3"; ingredientName: ; ingredientUnit: "rub"
//            }
//        }
//}
