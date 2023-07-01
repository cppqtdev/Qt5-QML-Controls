import QtQuick 2.15
import QtQuick.Controls 2.15 as Control
import QtQuick.Layouts 1.3

import AppStyle 1.0
import"./"
Control.TextField {
    id: control
    property bool isBold: false
    property real radius: 12.0

    focus: true
    implicitWidth: 300
    implicitHeight: 55
    leftPadding: 90
    placeholderText: qsTr("dabreha.blogspot.com")
    placeholderTextColor: AppStyle.placeholderColor
    selectedTextColor: "#1ca254"
    selectionColor: "#305e4b"
    font.pixelSize: FontStyle.h3
    font.family: isBold ? FontStyle.getContentFontBold.name : FontStyle.getContentFont.name
    font.bold: isBold ? Font.Bold : Font.Normal
    font.weight: isBold ? Font.Bold : Font.Normal
    color: AppStyle.textColor

    background: Rectangle{
        implicitHeight: control.implicitHeight
        implicitWidth: control.implicitWidth
        color: AppStyle.popupBackground
        radius: control.radius
        border.width: control.activeFocus ? 2 : 1
        border.color: control.activeFocus ? AppStyle.appStyle : AppStyle.borderColor

        /* upper left, lower left rounded corners */
        RoundRectangle {
            width: control.leftPadding - 10 ; height: control.implicitHeight
            color: "transparent"
            radius: control.radius
            radiusCorners: Qt.AlignLeft | Qt.AlignTop | Qt.AlignBottom

            Label{
                color: AppStyle.placeholderColor
                text: "https://"
                font: control.font
                anchors{
                    centerIn: parent
                }
            }

            Rectangle{
                id:separator
                width: 1.5
                height: control.height
                color: AppStyle.borderColor
                anchors{
                    verticalCenter: parent.verticalCenter
                    right: parent.right
                }
            }
        }
    }
}
