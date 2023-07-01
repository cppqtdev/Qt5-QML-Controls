import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

import AppStyle 1.0
import "./"

Pane{
    id:control
    property real radius: 12.0
    property int allowMaxTags: 5
    property var lableList: ["Lable","Lable","Lable"]
    implicitWidth: layout.implicitWidth + 20
    implicitHeight: 55

    background: Rectangle{
        implicitHeight: control.implicitHeight
        implicitWidth: control.implicitWidth
        color: "#1c1d21"
        radius: control.radius
        border.width:  1
        border.color:  AppStyle.borderColor
    }

    RowLayout{
        id:layout
        spacing: 5
        anchors{
            verticalCenter: parent.verticalCenter
        }

        Repeater {
            id:rep
            width: parent.width + 20
            model: lableList

            delegate: RadioButton {
                id: labelIndicator
                checked: index === 0
                indicator: Item{ }

                contentItem: Rectangle{
                    id: tagBackground
                    implicitHeight: control.implicitHeight - 10
                    implicitWidth: tags.implicitWidth + 30
                    radius: control.radius - 2
                    border.width: 1
                    border.color: tagHovered.hovered ? AppStyle.appStyle :  "transparent"
                    color: labelIndicator.checked ? AppStyle.popupBackground : "transparent"

                    HoverHandler{
                        id: tagHovered
                    }

                    Label {
                        id:tags
                        text: modelData
                        font.pixelSize: FontStyle.h3
                        color: labelIndicator.checked ? AppStyle.textColor : AppStyle.placeholderColor
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
