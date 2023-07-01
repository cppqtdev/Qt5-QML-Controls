pragma Singleton
import QtQuick 2.9
import QtQuick.Controls 2.5


QtObject {
    readonly property int       h1 : 32
    readonly property int       h2 : 24
    readonly property double    h3 : 18.72
    readonly property int       h4 : 16
    readonly property double    h5 : 13.28
    readonly property double    h6 : 10.72

    readonly property int content : 14

    readonly property var getAwesomeBrand: fontAwesomeBrand
    readonly property var getAwesomeRegular: fontAwesomeRegular
    readonly property var getAwesomeLight: fontAwesomeLight
    readonly property var getAwesomeSolid: fontAwesomeSolid
    readonly property var getContentFont: contentFontMedium
    readonly property var getContentFontBold: contentFontBold
    readonly property var getContentFontMedium: contentFontMedium
    readonly property var getContentFontLight: contentFontLight

    readonly property var fontAwesomeBrand: FontLoader {
        source: "qrc:/fonts/Font Awesome 5 Brands-Regular-400.otf"
    }

    readonly property var fontAwesomeRegular: FontLoader {
        source: "qrc:/fonts/Font Awesome 5 Pro-Regular-400.otf"
    }

    readonly property var fontAwesomeLight: FontLoader {
        source: "qrc:/fonts/Font Awesome 5 Pro-Light-300.otf"
    }

    readonly property var fontAwesomeSolid: FontLoader {
        source: "qrc:/fonts/Font Awesome 5 Pro-Solid-900.otf"
    }

    readonly property var contentFontLight: FontLoader {
        source: "qrc:/fonts/Nunito-Light.ttf"
    }

    readonly property var contentFontBold: FontLoader {
        source: "qrc:/fonts/Nunito-Bold.ttf"
    }

    readonly property var contentFontMedium: FontLoader {
        source: "qrc:/fonts/Nunito-Medium.ttf"
    }
}


