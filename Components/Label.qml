import QtQuick 2.15
import QtQuick.Controls 2.5 as Control
import AppStyle 1.0

Control.Label{
    property bool isBold: false
    text: AppStyle.textColor
    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    font.pixelSize: FontStyle.content
    font.family: isBold ? FontStyle.getContentFontBold.name : FontStyle.getContentFont.name
    font.bold: isBold ? Font.Bold : Font.Normal
    font.weight: isBold ? Font.Bold : Font.Normal
    color: enabled ? AppStyle.textColor : "#555864"
    elide: Text.ElideRight
    Behavior on scale { NumberAnimation { duration: 200; } }
}
