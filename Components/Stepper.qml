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
    implicitWidth: 135
    implicitHeight: 55
    leftPadding: 50
    rightPadding: 50
    placeholderText: qsTr("100")
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
            Rectangle{
                width: parent.width / 2
                height: parent.height * 0.7
                color: "#474f5c"
                anchors.centerIn: parent
                radius: parent.radius / 2

                /* top left, top right rounded corners */
                RoundRectangle {
                    width: parent.width; height: parent.height / 2
                    color: "transparent"
                    radius: parent.radius
                    radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop
                    anchors.top: parent.top
                    Image{
                        anchors.centerIn: parent
                        sourceSize: Qt.size(24,24)
                        source: "qrc:/Images/arrow-up.svg"
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                             console.log("up Pressed")
                        }
                    }
                }
                /* bottom left, bottom right rounded corners */
                RoundRectangle {
                    width: parent.width; height: parent.height / 2
                    color: "transparent"
                    radius: parent.radius
                    radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignBottom
                    anchors.bottom: parent.bottom
                    Image{
                        anchors.centerIn: parent
                        sourceSize: Qt.size(24,24)
                        source: "qrc:/Images/arrow-down.svg"
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            console.log("down Pressed")
                        }
                    }
                }
            }
        }

        /*top right, bottom right rounded corners */
        RoundRectangle {
            width: control.rightPadding - 10 ; height: control.implicitHeight
            radius: control.radius
            color: "transparent"
            radiusCorners:  Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
            anchors.right: parent.right

            Label{
                font.pixelSize: FontStyle.h3
                text: "px"
                anchors.centerIn: parent
            }
        }
    }
}
