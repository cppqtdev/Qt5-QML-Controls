import QtQuick 2.15
import QtQuick.Controls 2.5
//
// get All the unicode icon : https://emojiterra.com/satellite/
// https://iconduck.com/ --> duotone icons
// https://www.svgrepo.com/collection/iconsax-duotone-filled-icons/ --> best icons
//https://stackoverflow.com/questions/30266881/what-is-the-right-way-to-use-qquickimageprovider
ListModel {
    ListElement {
        iconName:"⚙️"
        iconColor:"#66cbff"
        name: "Settings"
    }
    ListElement {
        iconName:"🛠️"
        iconColor:"#fab6d7"
        name: "Appearance"
    }
    ListElement {
        iconName:"🔐"
        iconColor:"#ffd480"
        name: "Security"
    }
    ListElement {
        iconName:"🗝️"
        iconColor:"#6ae4a9"
        name: "Privacy"
    }
    ListElement {
        iconName:"🌐"
        iconColor:"#b9bdc2"
        name: "Browser"
    }
    ListElement {
        iconName:"🛰️"
        iconColor:"#91f4f9"
        name: "Advanced"
    }
    ListElement {
        iconName:"💻"
        iconColor:"#abfccb"
        name: "Developer"
    }
    ListElement {
        iconName:"🧑‍💻"
        iconColor:"#66cbff"
        name: "About"
    }

}
