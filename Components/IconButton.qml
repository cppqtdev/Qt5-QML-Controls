import QtQuick 2.9
import QtQuick.Controls 2.5 as T
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15

import AppStyle 1.0
import "./"
T.Button {
    id: control
    property real radius: 8
    property bool isDefault : true
    property string setIcon : "qrc:/Images/eye-on.svg"
    property string style : AppStyle.appStyle

    implicitHeight: 46
    implicitWidth: 46
    opacity: control.enabled ? 1 : 0.5

    contentItem:Image{
        sourceSize: Qt.size(control.implicitWidth,control.implicitHeight)
        source: setIcon
    }

    background: Rectangle {
        implicitWidth: control.width
        implicitHeight: control.height
        Layout.fillWidth: true
        radius: control.radius
        color: isDefault ? style : "transparent";
        border.width: isDefault ? 0 : 1
        border.color: isDefault ? "transparent" : AppStyle.popupBackground

        visible: false

        Behavior on color {
            ColorAnimation {
                duration: 200;
                easing.type: Easing.Linear;
            }
        }

        Rectangle {
            id: indicator
            property int mx
            property int my
            x: mx - width / 2
            y: my - height / 2
            height: width
            radius: control.radius
            color: Qt.lighter(style)
        }
    }

    Rectangle {
        id: mask
        radius: control.radius
        anchors.fill: parent
        visible: false
    }

    OpacityMask {
        anchors.fill: background
        source: background
        maskSource: mask
    }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        acceptedButtons: Qt.NoButton
        cursorShape: Qt.PointingHandCursor
        anchors.fill: parent
    }

    ParallelAnimation {
        id: anim
        NumberAnimation {
            target: indicator
            property: 'width'
            from: 0
            to: control.width * 2.5
            duration: 200
        }
        NumberAnimation {
            target: indicator;
            property: 'opacity'
            from: 0.9
            to: 0
            duration: 200
        }
    }

    onPressed: {
        indicator.mx = mouseArea.mouseX
        indicator.my = mouseArea.mouseY
        anim.restart();
    }
}
