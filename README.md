# QtQML-Components
QtQML Components is a repository on GitHub that contains a collection of reusable user interface components designed for use with the Qt framework's QML language. QtQML Components is a valuable resource for developers looking to create beautiful and responsive user interfaces using Qt and QML.

## Label Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Label.png?raw=true)

    /*  How To Use Component*/
    ColumnLayout{
        anchors.centerIn: parent
        spacing: 20
        Label{
            text: "QML Components General Label"
            font.pixelSize: FontStyle.h1
        }

        Label{
            text: "QML Components General Label"
            font.pixelSize: FontStyle.h3
        }

        Label{
            text: "QML Components General Label"
            font.pixelSize: FontStyle.h2
        }
        Label{
            text: "QML Components General Label"
        }
    }


## Textfield Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/TextField.png?raw=true)

    /*  How To Use Component*/
    ColumnLayout{
        anchors.centerIn: parent
        spacing: 20
        TextField{
            text: "QML Components General TextField"
        }

        TextField{

        }

        TextField{
            echoMode: TextInput.Password
        }
    }


## URLS Textfield Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/urltextfield.png?raw=true)

    /*  How To Use Component*/
    ColumnLayout{
        anchors.centerIn: parent
        spacing: 20
        UrlTextField{
            text: "dabreha.blogspot.com"
        }

        UrlTextField{

        }

        UrlTextField{

        }
    }


## Tags Textfield Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/TagField.png?raw=true)

    /*  How To Use Component*/
    ColumnLayout{
        anchors.centerIn: parent
        spacing: 80
        TagTextField{
            allowMaxTags: 5
        }

        TagTextField{
            allowMaxTags: 10
        }

        TagTextField{
            allowMaxTags: 10
            tagList: ["Button" ,"TextField","Mini Button" ,"Tab Button"]
        }
    }

## Label Selector Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Label%20Selector.png?raw=true)

    /*  How To Use Component*/
    ColumnLayout{
        anchors.centerIn: parent
        spacing: 80

        LabelSelector{
            lableList: ["Web Developer","Software Developer"]
        }
        LabelSelector{
            lableList: ["Lable","Lable","Lable"]
        }
        LabelSelector{
            lableList:  ["Button" ,"TextField","Mini Button" ,"Tab Button"]
        }
    }

## Checkbox Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/checkbox.png?raw=true)

      /*  How To Use Component*/
    ColumnLayout{
        spacing: 20
        anchors.centerIn: parent
        CheckBox{
            text: "Label"
        }
        CheckBox{
            enabled: false
            indicatorIcon: "-"
            text: "Label"
        }
        CheckBox{
            checked: false
            text: "Label"
        }
    }

 ## Switch Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/switch.png?raw=true)

     /*  How To Use Component*/
    ColumnLayout{
        spacing: 20
        anchors.centerIn: parent
        Switch{
            text: "Label"
        }
        Switch{
            enabled: false
            text: "Label"
        }
        Switch{
            checked: false
            text: "Label"
        }
    }

  ## Theme Switch Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/themeSwitch.png?raw=true)

  /*  How To Use Component*/
    ColumnLayout{
        spacing: 20
        anchors.centerIn: parent
        ThemeSwitch{
            text: checked ? "Light" : "Dark"
        }

        ThemeSwitch{
            text: checked ? "Light" : "Dark"
        }
    }
  ## Stepper (SpinBox) Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/stepper.png?raw=true)

     /*  How To Use Component*/
    ColumnLayout{
        spacing: 20
        anchors.centerIn: parent

        Stepper{ }

        Stepper{ }
    }

  ## Mini Button Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/MiniButton.png?raw=true)

     /*  How To Use Component*/
       RowLayout{
        spacing: 50
        anchors.centerIn: parent
        ColumnLayout{
            spacing: 20

            MiniButton{
                isDefault: true
                text: qsTr("Mini")
            }

            MiniButton{
                radius: 12
                text: "Adesh Singh"
                setIconLeft: "⚙"
            }

            MiniButton{
                text: "Adesh"
                setIconRight: "⚙️"
            }

            MiniButton{
                radius: 12
                text: qsTr("Adesh Singh Mini Button")
            }

            MiniButton{
                text: "Adesh Singh"
                setIconLeft: "⚙"
            }

            MiniButton{
                text: qsTr("Mini Button")
            }

            MiniButton{
                setIcon:"⚙"
            }
        }
        ColumnLayout{
            spacing: 20

            MiniButton{
                isDefault: false
                text: qsTr("Mini")
            }

            MiniButton{
                isDefault: false
                radius: 12
                text: "Adesh Singh"
                setIconLeft: "⚙"
            }

            MiniButton{
                isDefault: false
                text: "Adesh"
                setIconRight: "⚙️"
            }

            MiniButton{
                isDefault: false
                radius: 12
                text: qsTr("Adesh Singh Mini Button")
            }

            MiniButton{
                isDefault: false
                text: "Adesh Singh"
                setIconLeft: "⚙"
            }

            MiniButton{
                isDefault: false
                text: qsTr("Mini Button")
            }

            MiniButton{
                isDefault: false
                setIcon:"⚙"
            }
        }
    }

  ## ComboBox Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Combobox%201.png?raw=true)
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Combobox%202.png?raw=true)
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Combobox%203.png?raw=true)


     /*  How To Use Component*/
    ColumnLayout{
        spacing: 50
        anchors.centerIn: parent
        PrefsComboBox{
            model: ComboBoxListModel{}
        }
        ComboBox{
            model: ["Settings","Appearance","Advanced","Backups"]
        }
    }

  ## Button Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Button.png?raw=true)

     /*  How To Use Component*/
       ColumnLayout{
           spacing: 20
           Layout.fillWidth: true
           anchors.centerIn: parent
           Button{
               text: "Click Me"
               setIcon: "⚙"
           }
           Button{
               text: "Send Me"
           }
           Button{
               isDefault: false
               text: "Click Me"
           }
       }

  ## Password Field Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/PasswordField.png?raw=true)

     /*  How To Use Component*/
     ColumnLayout{
        anchors.centerIn: parent
        spacing: 30
        TextField{
            placeholderText: "Normal Text"
        }

        PasswordField{

        }

        PasswordField{

        }
    }
   
  ## Icon Button Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/IconButton.png?raw=true)

     /*  How To Use Component*/
       function generateRandomColor() {
        var red = Math.random()
        var green = Math.random()
        var blue = Math.random()
        var alpha = 1.0 // Set the alpha component to 1.0 for full opacity
        return Qt.rgba(red, green, blue, alpha)
    }
    RowLayout{
        anchors.centerIn: parent
        spacing: 20
        IconButton{
            setIcon: "qrc:/Images/add.svg"
            style: generateRandomColor()
        }

        IconButton{
            setIcon: "qrc:/Images/airdrop.svg"
            style: generateRandomColor()
            isDefault: false
        }

        IconButton{
            setIcon: "qrc:/Images/archive-add.svg"
            style: generateRandomColor()
        }

        IconButton{
            setIcon: "qrc:/Images/moon.svg"
            style: generateRandomColor()
        }
        IconButton{
            style: generateRandomColor()
        }

        IconButton{
            setIcon: "qrc:/Images/sun.svg"
            style: generateRandomColor()
        }
    }
  ## Footer Button Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/PageSelector_Footer_Button.png?raw=true)

     /*  How To Use Component*/
    
        RowLayout {
            spacing: 20
            anchors.centerIn: parent
            Item { Layout.fillWidth: true; }

            FooterButton {
                id: discover_button
                textIcon: "\uf015";
                checked: true
            }

            Item { Layout.fillWidth: true; }

            FooterButton {
                id:category_button
                textIcon: "\uf002";
            }

            Item { Layout.fillWidth: true; }

            FooterButton {
                id:create_button
                textIcon: "\uf055";
            }

            Item { Layout.fillWidth: true; }

            FooterButton {
                id:connection_button
                textIcon: "\uf004";
            }

            Item { Layout.fillWidth: true; }

            FooterButton {
                id: profile_button
                textIcon: "\uf406";
            }

            Item { Layout.fillWidth: true; }
        }

## Tab Button and Tab Button Mini Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/TabButton.png?raw=true)

     /*  How To Use Component*/
        ColumnLayout{
        spacing: 30
        width: parent.width
        anchors.centerIn: parent
        RowLayout {
            width: parent.width
            Layout.fillWidth: true

            TabButton {
                title: "Message"
                Layout.fillWidth: true
                setIcon: "\uf015"
                onClicked: {
                }

            }
            TabButton {
                title: "Call"
                Layout.fillWidth: true
                setIcon: "\uf87c"
                onClicked: {
                }
            }
            TabButton {
                title: "Whatsapp"
                Layout.fillWidth: true
                setIcon: "\uf2bb"
                onClicked: {
                }
            }
        }

        RowLayout {
            width: parent.width
            Layout.fillWidth: true

            TabButtonMini {
                title: "Message"
                Layout.fillWidth: true
                setIcon: "\uf015"
                onClicked: {
                }

            }
            TabButtonMini {
                title: "Call"
                Layout.fillWidth: true
                setIcon: "\uf87c"
                onClicked: {
                }
            }
            TabButtonMini {
                title: "Whatsapp"
                Layout.fillWidth: true
                setIcon: "\uf2bb"
                onClicked: {
                }
            }
        }
    }

## Slider Component :
![alt text](https://github.com/cppqtdev/QtQML-Components/blob/main/Screenshots/Slider.png?raw=true)

     /*  How To Use Component*/
         ColumnLayout{
        spacing: 50
        anchors.centerIn: parent
        PrefsSlider{
            backgroundHeight : 22
            backgroundRadius : 12
            implicitHeight: 20
            implicitWidth: 250
        }

        PrefsSlider{
            backgroundHeight : 5
            backgroundRadius : 12
            implicitHeight: 20
            implicitWidth: 250
        }
    }

