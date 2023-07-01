import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5 as T

import AppStyle 1.0
import "./"
T.TabButton {
    id:control
    property string title
    property string description
    property string setIcon : ""
    text: title
    contentItem: RowLayout {
        Label {
            width: parent.width
            Layout.fillWidth: true;
            font.family: FontStyle.getContentFont.name
            font.pixelSize: FontStyle.h3
            font.weight:  Font.Bold
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            opacity: enabled ? 1.0 : 0.3
            color: control.checked ? AppStyle.textColor : AppStyle.popupBackground
            text: control.text
        }
    }

    background: Rectangle {
        anchors.bottom: parent.bottom
        height: 2
        implicitWidth: control.width
        radius: 5
        color: control.checked ? AppStyle.appStyle : AppStyle.popupBackground
        opacity: enabled ? 1 : 0.3
        Behavior on color {
            ColorAnimation {
                duration: 200;
                easing.type: Easing.Linear;
            }
        }
    }
}
