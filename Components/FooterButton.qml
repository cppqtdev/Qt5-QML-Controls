import QtQuick 2.9
import QtQuick.Controls 2.5 as T
import QtQuick.Layouts 1.3

import AppStyle 1.0
import "./"

T.RadioButton{
    id: control
    property string textIcon : ""
    hoverEnabled: true
    implicitWidth: 46
    implicitHeight: 46

    indicator: Item{}

    contentItem: Item {
        ColumnLayout {
            id: rowLayout
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            spacing: 10

            Item { Layout.fillHeight: true; }

            Label {
                Layout.fillWidth: true
                font.family: FontStyle.getAwesomeLight.name
                font.pixelSize: FontStyle.h3
                font.weight: Font.ExtraLight
                font.bold: control.checked ? true : false
                font.styleName: control.checked ? "Bold" : "Light"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                color: control.checked ? "#ffffff" : "#BEC0C8"
                text: control.textIcon

                Behavior on scale {
                    NumberAnimation {
                        duration: 200;
                        easing.type: Easing.InOutQuad;
                    }
                }

                scale : control.pressed ? 1.3 : 1.0
            }

            Rectangle {
                visible: control.checked ? true : false
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.preferredWidth: 10
                Layout.preferredHeight: 2
            }

            Item { Layout.fillHeight: true; }
        }
    }
}
