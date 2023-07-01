import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
//C++ imports Library
import AppStyle 1.0

// Directory Import
import "./Components"

ApplicationWindow {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Aksh UI")
    color: AppStyle.background


    //    Label{
    //        x:100
    //        y:50
    //        text: "Adesh Singh"
    //    }

    //    Label{
    //        x:100
    //        y:300
    //        isBold: true
    //        text: "Kushwah"
    //    }

    //    TextField{
    //        anchors.centerIn: parent
    //    }

    //    UrlTextField{
    //        anchors.centerIn: parent
    //    }

    //    TagTextField{
    //       anchors.centerIn: parent
    //    }

    //    LabelSelector{
    //        lableList: ["Lable","Lable","Lable","Adesh Singh"]
    //        anchors.centerIn: parent
    //    }

    //    ColumnLayout{
    //        anchors.centerIn: parent
    //        CheckBox{
    //            text: "Label"
    //        }
    //        CheckBox{
    //            enabled: false
    //            indicatorIcon: "-"
    //            text: "Label"
    //        }
    //        CheckBox{
    //            checked: false
    //            text: "Label"
    //        }
    //    }
    //    ColumnLayout{
    //        anchors.centerIn: parent
    //        Switch{
    //            text: "Label"
    //        }
    //        Switch{
    //            enabled: false
    //            text: "Label"
    //        }
    //        Switch{
    //            checked: false
    //            text: "Label"
    //        }
    //    }

    //    ThemeSwitch{
    //        text: checked ? "Light" : "Dark"
    //        anchors.centerIn: parent
    //    }

    //        Stepper{
    //            anchors.centerIn: parent
    //        }


    //    ColumnLayout{
    //        spacing: 10
    //        anchors.centerIn: parent
    //        PrefsComboBox{
    //            model: ComboBoxListModel{}
    //        }
    //        ComboBox{
    //            model: ["Settings","Appearance","Advanced","Backups"]
    //        }
    //    }

    //    ColumnLayout{
    //        spacing: 10
    //        anchors.centerIn: parent

    //        TextField{
    //            placeholderText: "Enter Password"
    //            echoMode: TextInput.Password
    //        }

    //        TextField{
    //            placeholderText: "Enter Password"
    //            echoMode: TextInput.PasswordEchoOnEdit
    //        }
    //    }

    //        Button{
    //            text: "Click Me"
    //            setIcon: "⚙"
    //            anchors.centerIn: parent
    //        }

    //    RowLayout{
    //        spacing: 50
    //        anchors.centerIn: parent
    //        ColumnLayout{
    //            spacing: 20

    //            MiniButton{
    //                isDefault: true
    //                text: qsTr("Mini")
    //            }

    //            MiniButton{
    //                radius: 12
    //                text: "Adesh Singh"
    //                setIconLeft: "⚙"
    //            }

    //            MiniButton{
    //                text: "Adesh"
    //                setIconRight: "⚙️"
    //            }

    //            MiniButton{
    //                radius: 12
    //                text: qsTr("Adesh Singh Mini Button")
    //            }

    //            MiniButton{
    //                text: "Adesh Singh"
    //                setIconLeft: "⚙"
    //            }

    //            MiniButton{
    //                text: qsTr("Mini Button")
    //            }

    //            MiniButton{
    //                setIcon:"⚙"
    //            }
    //        }
    //        ColumnLayout{
    //            spacing: 20

    //            MiniButton{
    //                isDefault: false
    //                text: qsTr("Mini")
    //            }

    //            MiniButton{
    //                isDefault: false
    //                radius: 12
    //                text: "Adesh Singh"
    //                setIconLeft: "⚙"
    //            }

    //            MiniButton{
    //                isDefault: false
    //                text: "Adesh"
    //                setIconRight: "⚙️"
    //            }

    //            MiniButton{
    //                isDefault: false
    //                radius: 12
    //                text: qsTr("Adesh Singh Mini Button")
    //            }

    //            MiniButton{
    //                isDefault: false
    //                text: "Adesh Singh"
    //                setIconLeft: "⚙"
    //            }

    //            MiniButton{
    //                isDefault: false
    //                text: qsTr("Mini Button")
    //            }

    //            MiniButton{
    //                isDefault: false
    //                setIcon:"⚙"
    //            }
    //        }
    //    }

    //    ColumnLayout{
    //        anchors.centerIn: parent
    //        spacing: 30
    //        TextField{
    //            placeholderText: "Normal Text"
    //        }

    //        PasswordField{

    //        }

    //        PasswordField{

    //        }
    //    }
    function generateRandomColor() {
        var red = Math.random()
        var green = Math.random()
        var blue = Math.random()
        var alpha = 1.0 // Set the alpha component to 1.0 for full opacity
        return Qt.rgba(red, green, blue, alpha)
    }
    //    RowLayout{
    //        anchors.centerIn: parent
    //        spacing: 20
    //        IconButton{
    //            setIcon: "qrc:/Images/add.svg"
    //            style: generateRandomColor()
    //        }

    //        IconButton{
    //            setIcon: "qrc:/Images/airdrop.svg"
    //            style: generateRandomColor()
    //            isDefault: false
    //        }

    //        IconButton{
    //            setIcon: "qrc:/Images/archive-add.svg"
    //           style: generateRandomColor()
    //        }

    //        IconButton{
    //            setIcon: "qrc:/Images/moon.svg"
    //            style: generateRandomColor()
    //        }
    //        IconButton{
    //            style: generateRandomColor()
    //        }

    //        IconButton{
    //            setIcon: "qrc:/Images/sun.svg"
    //            style: generateRandomColor()
    //        }
    //    }
    //    RowLayout {
    //        spacing: 20
    //        anchors.centerIn: parent
    //        Item { Layout.fillWidth: true; }

    //        FooterButton {
    //            id: discover_button
    //            textIcon: "\uf015";
    //            checked: true
    //        }

    //        Item { Layout.fillWidth: true; }

    //        FooterButton {
    //            id:category_button
    //            textIcon: "\uf002";
    //        }

    //        Item { Layout.fillWidth: true; }

    //        FooterButton {
    //            id:create_button
    //            textIcon: "\uf055";
    //        }

    //        Item { Layout.fillWidth: true; }

    //        FooterButton {
    //            id:connection_button
    //            textIcon: "\uf004";
    //        }

    //        Item { Layout.fillWidth: true; }

    //        FooterButton {
    //            id: profile_button
    //            textIcon: "\uf406";
    //        }

    //        Item { Layout.fillWidth: true; }
    //    }

    //    ColumnLayout{
    //        spacing: 30
    //        width: parent.width
    //        anchors.centerIn: parent
    //        RowLayout {
    //            width: parent.width
    //            Layout.fillWidth: true

    //            TabButton {
    //                title: "Message"
    //                Layout.fillWidth: true
    //                setIcon: "\uf015"
    //                onClicked: {
    //                }

    //            }
    //            TabButton {
    //                title: "Call"
    //                Layout.fillWidth: true
    //                setIcon: "\uf87c"
    //                onClicked: {
    //                }
    //            }
    //            TabButton {
    //                title: "Whatsapp"
    //                Layout.fillWidth: true
    //                setIcon: "\uf2bb"
    //                onClicked: {
    //                }
    //            }
    //        }

    //        RowLayout {
    //            width: parent.width
    //            Layout.fillWidth: true

    //            TabButtonMini {
    //                title: "Message"
    //                Layout.fillWidth: true
    //                setIcon: "\uf015"
    //                onClicked: {
    //                }

    //            }
    //            TabButtonMini {
    //                title: "Call"
    //                Layout.fillWidth: true
    //                setIcon: "\uf87c"
    //                onClicked: {
    //                }
    //            }
    //            TabButtonMini {
    //                title: "Whatsapp"
    //                Layout.fillWidth: true
    //                setIcon: "\uf2bb"
    //                onClicked: {
    //                }
    //            }
    //        }
    //    }

    //    ColumnLayout{
    //        spacing: 50
    //        anchors.centerIn: parent
    //        PrefsSlider{
    //            backgroundHeight : 22
    //            backgroundRadius : 12
    //            implicitHeight: 20
    //            implicitWidth: 250
    //        }

    //        PrefsSlider{
    //            backgroundHeight : 5
    //            backgroundRadius : 12
    //            implicitHeight: 20
    //            implicitWidth: 250
    //        }
    //    }


}
