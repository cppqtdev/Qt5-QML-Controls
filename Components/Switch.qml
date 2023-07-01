import QtQuick 2.15
import QtQuick.Controls 2.5 as Control
import QtQuick.Layouts 1.3
import AppStyle 1.0
import "./"

Control.Switch {
    id: control

    indicator: Rectangle {
        implicitWidth: 56
        implicitHeight: 32
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: width/2
        color: control.checked ? AppStyle.appStyle : AppStyle.popupBackground
        border.width: control.activeFocus ? 2 : 1
        border.color: control.activeFocus ? AppStyle.appStyle : AppStyle.borderColor

        Rectangle {
            x: control.checked ? (parent.width - width ) - 2 : 2
            width: 28
            height: 28
            radius: width / 2
            color: control.checked ?  "#ffffff" : "#7a859b"
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    contentItem: Label {
        text: control.text
        font.pixelSize: FontStyle.h3
        verticalAlignment: Text.AlignVCenter
        leftPadding: control.indicator.width + control.spacing
    }
}
