import QtQuick 2.9
import QtQuick.Controls 2.5 as Control
import QtQuick.Layouts 1.3

import "./"
import AppStyle 1.0

Control.ComboBox {
    id: root
    implicitWidth: 300
    implicitHeight: 55
    property real radius: 12.0
    property string backgroundColor: "#2a2d36"
    property color checkedColor: AppStyle.popupBackground

    delegate: Control.ItemDelegate {
        id:itemDelegate
        width: root.implicitWidth * 1.2
        height: root.implicitHeight
        hoverEnabled: true
        focus: true

        background: Rectangle{
            color: itemDelegate.hovered ? backgroundColor/*AppStyle.appStyle*/ : "transparent"
            anchors.fill: parent
            radius: 8
        }

        RowLayout {
            Layout.alignment: Qt.AlignVCenter
            width: parent.width
            height: parent.height
            anchors.fill: parent
            spacing: 10
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            Label {
                opacity: 0.87
                text: modelData
                font.pixelSize: FontStyle.h3
                color: itemDelegate.hovered ? "white" : AppStyle.textColor
                Layout.fillWidth: true
                verticalAlignment: Image.AlignVCenter
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: 10
            }

            Image{
                source: "qrc:/Images/tick.svg"
                sourceSize: Qt.size(24,24)
                visible: root.currentIndex === index
                verticalAlignment: Image.AlignVCenter
                horizontalAlignment: Image.AlignRight
                Layout.alignment: Qt.AlignVCenter
                Layout.rightMargin: 10
            }
        }

    }

    indicator: Canvas {
        id: canvas
        x: root.width - width - 10
        y: (root.availableHeight - height) / 2
        width: 12
        height: 8
        contextType: "2d"

        Connections {
            target: root
            function onPressedChanged(){
                canvas.requestPaint()
            }
        }

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = "white"
            context.fill();
        }
    }

    contentItem: Item {
        width: root.background.width - root.indicator.width - 10
        height: root.background.height

        RowLayout {
            anchors.fill: parent
            spacing: 10

            Label {
                opacity: 0.87
                font.pixelSize: FontStyle.h3
                text: root.displayText
                Layout.fillWidth: true
                verticalAlignment: Image.AlignVCenter
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: 10
            }
        }

    }

    background: Rectangle {
        implicitWidth: root.implicitWidth
        implicitHeight: root.implicitHeight
        color: root.down ? Qt.darker(root.checkedColor, 1.2) : root.checkedColor
        radius: root.radius
        border.width: root.activeFocus ? 2 : 0.6
        border.color: root.activeFocus ? AppStyle.appStyle : AppStyle.borderColor
    }

    popup: Control.Popup {
        y: root.height + 2
        width: root.implicitWidth * 1.26
        implicitHeight: contentItem.implicitHeight > 250 ? 250 : contentItem.implicitHeight
        padding: 4
        contentItem: ListView {
            leftMargin: 5
            implicitHeight: contentHeight
            keyNavigationEnabled: true
            model: root.popup.visible ? root.delegateModel : null
            clip: true
            focus: true
            currentIndex: root.highlightedIndex
        }

        background: Rectangle {
            anchors.fill: parent
            color: AppStyle.popupBackground
            radius: 6
            border.width: 0.6
            border.color: AppStyle.borderColor
            clip: true
        }
    }
}
