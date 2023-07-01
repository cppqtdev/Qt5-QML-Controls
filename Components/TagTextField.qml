import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

import AppStyle 1.0
import "./"
ColumnLayout {
    property int allowMaxTags: 5
    property var tagList: []
    spacing: 10

    Flow{
        spacing: 5
        Layout.maximumWidth: control.width
        Repeater {
            id:rep
            width: parent.width + 20
            model: tagList

            function removeTag(tag) {
                var index = tagList.indexOf(tag);
                if (index !== -1) {
                    tagList.splice(index, 1);
                }
            }

            function removeAndRefresh(tag){
                removeTag(tag)
                rep.model = []
                rep.model = tagList
                control.placeholderText = "Enter tag"
            }

            Rectangle{
                id: tagBackground
                property color tagColor: generateRandomColor()
                implicitHeight: control.implicitHeight - 25
                implicitWidth: tags.implicitWidth + 20 + cross.width
                radius: control.radius - 2
                border.width: tagHovered.hovered ? 1 : 0
                border.color: tagHovered.hovered ? AppStyle.appStyle : AppStyle.borderColor

                color: Qt.lighter(tagBackground.tagColor)

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

                HoverHandler{
                    id: tagHovered
                }

                RowLayout {
                    anchors.centerIn: parent
                    spacing: 5
                    Label {
                        id:tags
                        text: modelData
                        color:Qt.darker(tagBackground.tagColor,2.5)
                        Layout.leftMargin: 5
                        Layout.alignment: Qt.AlignVCenter
                    }

                    Rectangle{
                        id:cross
                        Layout.alignment: Qt.AlignVCenter
                        Layout.rightMargin: 5
                        width: 18
                        height: 18
                        color: tagBackground.tagColor
                        radius: width / 2

                        Label {
                            text: "🗙"
                            font.pixelSize: 12
                            color: Qt.lighter(tagBackground.tagColor)
                            anchors.centerIn: parent
                            bottomPadding: 2
                            scale: clickArea.pressed ? 0.9 : 1.0
                        }

                        MouseArea{
                            id:clickArea
                            anchors.fill: parent
                            onClicked: {
                                rep.removeAndRefresh(modelData)
                            }
                        }
                    }
                }
            }
        }
    }
    TextField {
        id: control
        width: 200
        placeholderText: "Enter tag"
        onAccepted: {
            var enteredTag = control.text.toLowerCase(); // Convert entered tag to lowercase
            if (enteredTag !== "" && !isTagInList(enteredTag) && tagList.length < allowMaxTags) {
                tagList.push(control.text)
                rep.model = []
                rep.model = tagList
                control.text = ""
            }else if(isTagInList(enteredTag)){
                control.text = ""
            }else if(tagList.length >= allowMaxTags){
               control.text = ""
               control.placeholderText = "Maximum tag limit reached!"
            }
        }

        function isTagInList(tag) {
            var lowercaseTags = tagList.map(function(item) { return item.toLowerCase() });
            return lowercaseTags.includes(tag.toLowerCase());
        }
    }
}
