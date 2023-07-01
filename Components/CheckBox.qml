import QtQuick 2.15
import QtQuick.Controls 2.5 as Control
import QtQuick.Layouts 1.3
import AppStyle 1.0
import "./"
Control.CheckBox {
    id: control
    property string indicatorIcon: "+"

    checked: true
    spacing: 15

    contentItem:Label{
        enabled: control.enabled
        width: control.width
        text: control.text
        font.pixelSize: FontStyle.h3
        leftPadding: indicatorRect.implicitWidth + control.spacing
        verticalAlignment: Text.AlignVCenter
    }

    indicator: Rectangle {
        id:indicatorRect
        implicitWidth: 28
        implicitHeight: 28
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: 6
        color: control.enabled ? (control.checked ? AppStyle.appStyle : checkBoxHover.hovered ? "#22356c" : "#333742" ) : "#21356c"
        border.width: control.activeFocus ? 2 : 1
        border.color: control.enabled ? (control.checked ? AppStyle.appStyle : control.activeFocus ? AppStyle.appStyle : "#424650") : "#21356c"

        HoverHandler{
            id:checkBoxHover
        }

        Label{
            enabled: control.enabled
            text: indicatorIcon
            padding: 0
            isBold: true
            font.pixelSize: FontStyle.h2
            bottomPadding: 4
            visible:control.checked
            anchors.centerIn: parent
        }
    }
}
