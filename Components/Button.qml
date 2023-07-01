import QtQuick 2.9
import QtQuick.Controls 2.5 as T
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15

import AppStyle 1.0
import "./"
T.Button {
    id: control
    property bool isDefault : true
    property string setIcon : ""
    property string style : AppStyle.appStyle

    width: setIcon ? 110 * 1.5 : 110
    implicitHeight: 46
    Layout.fillWidth: true
    implicitWidth: 110
    opacity: control.enabled ? 1 : 0.5

    contentItem: RowLayout {
        width: parent.width
        Layout.fillWidth: true
        spacing: 0

        Item { width: 5; }

        Label {
            text: control.text
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: false
            font.pixelSize: FontStyle.h3

            Behavior on color {
                ColorAnimation {
                    duration: 200;
                    easing.type: Easing.Linear;
                }
            }

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
            scale: control.pressed ? 0.9 : 1.0
            Behavior on scale { NumberAnimation { duration: 200; } }
        }

        Item { visible: setIcon ? true : false }

        Label {
            text: setIcon
            font.pixelSize: FontStyle.h3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
            visible: setIcon ? true : false
            scale: control.pressed ? 0.9 : 1.0
            Behavior on scale { NumberAnimation { duration: 200; } }
        }

        Item { width: 5; }
    }

    background: Rectangle {
        implicitWidth: control.width
        implicitHeight: control.height
        Layout.fillWidth: true
        radius: width
        color: isDefault ? style : "transparent";
        border.width: isDefault ? 0 : 1
        border.color: isDefault ? "transparent" : style

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
            radius: width / 2
            color: Qt.lighter(style)
        }
    }

    Rectangle {
        id: mask
        radius: width
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
