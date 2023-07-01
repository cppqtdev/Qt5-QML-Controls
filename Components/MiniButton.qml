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
    property string setIconLeft : ""
    property string setIconRight : ""
    property color buttonColor: generateRandomColor()
    property string style : lighterColor(buttonColor)//AppStyle.appStyle
    property real radius: setIcon && !control.text ? 8 :  width

    function generateRandomColor() {
        var red = Math.random()
        var green = Math.random()
        var blue = Math.random()
        var alpha = 1.0 // Set the alpha component to 1.0 for full opacity
        return Qt.rgba(red, green, blue, alpha)
    }

    function lighterColor(color) {
        var lighterFactor = 0.2; // Adjust this value to control the lightness
        var red = Math.min(color.r + lighterFactor, 1.0);
        var green = Math.min(color.g + lighterFactor, 1.0);
        var blue = Math.min(color.b + lighterFactor, 1.0);
        return Qt.rgba(red, green, blue, color.a);
    }

    implicitHeight: 46
    implicitWidth: setIcon && !control.text ? 46 : contentItem.implicitWidth + 25
    opacity: control.enabled ? 1 : 0.5

    contentItem: RowLayout {
        width: parent.width
        Layout.alignment: Qt.AlignVCenter
        Layout.fillWidth: true
        spacing: 0

        Item {
            visible: setIcon && !control.text ? false :  true
            width: 5;
        }

        Label {
            text: setIconLeft
            font.pixelSize: FontStyle.h4
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            visible: setIconLeft ? true : false
            scale: control.pressed ? 0.9 : 1.0
            Behavior on scale { NumberAnimation { duration: 200; } }
            color: isDefault ? Qt.darker(buttonColor,2.5) : AppStyle.textColor
        }

        Item {
            visible: setIconLeft ? true : false
            width: 5
        }

        Label {
            text: control.text ? control.text : control.setIcon
            visible: text
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: false
            font.pixelSize: FontStyle.h4
            color: isDefault ? Qt.darker(buttonColor,2.5) : AppStyle.textColor

            Behavior on color {
                ColorAnimation {
                    duration: 200;
                    easing.type: Easing.Linear;
                }
            }

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            scale: control.pressed ? 0.9 : 1.0
            Behavior on scale { NumberAnimation { duration: 200; } }
        }

        Item {
            visible: setIconRight ? true : false
            width: 5
        }

        Label {
            text: setIconRight
            font.pixelSize: FontStyle.h4
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            visible: setIconRight ? true : false
            scale: control.pressed ? 0.9 : 1.0
            color: isDefault ? Qt.darker(buttonColor,2.5) : AppStyle.textColor
            Behavior on scale { NumberAnimation { duration: 200; } }
        }

        Item {
            visible: setIcon && !control.text ? false :  true
            width: 5;
        }
    }

    background: Rectangle {
        implicitWidth: control.implicitWidth
        implicitHeight: control.implicitHeight
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
