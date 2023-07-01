import QtQuick 2.15
import QtQuick.Controls 2.15 as Control
import QtQuick.Layouts 1.3

import AppStyle 1.0

Control.TextField {
    id: control
    property bool isBold: false
    property real radius: 12.0

    focus: true
    implicitWidth: 300
    implicitHeight: 55
    placeholderText: qsTr("Placeholder")
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
    }
}
