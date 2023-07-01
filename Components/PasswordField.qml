import QtQuick 2.15
import QtQuick.Controls 2.15 as Control
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import AppStyle 1.0

Control.TextField {
    id: control
    property bool isBold: false
    property real radius: 12.0

    echoMode: TextInput.Password
    focus: true
    implicitWidth: 300
    implicitHeight: 55
    rightPadding: 50
    placeholderText: qsTr("Echo Password")
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

        /*top right, bottom right rounded corners */
        RoundRectangle {
            width: control.rightPadding - 10 ; height: control.implicitHeight
            radius: control.radius
            color: "transparent"
            radiusCorners:  Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
            anchors.right: parent.right

            Image{
                id:eye
                anchors.centerIn: parent
                sourceSize: Qt.size(24,24)
                source: control.echoMode == TextInput.Normal ? "qrc:/Images/eye-on.svg" : "qrc:/Images/eye-off.svg"
                antialiasing: true
                visible: control.echoMode == TextInput.Normal
            }
            ColorOverlay{
                visible: control.echoMode == TextInput.Password
                anchors.fill: eye
                source: eye
                color: "#FFFFFF"
                transform:rotation
                antialiasing: true
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if(control.echoMode == TextInput.Password){
                        control.echoMode =  TextInput.Normal
                    }else{
                        control.echoMode =  TextInput.Password
                    }
                }
            }
        }
    }
}
