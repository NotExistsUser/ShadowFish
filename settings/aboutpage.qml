import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
id: aboutPage
    allowedOrientations: Orientation.Landscape | Orientation.Portrait | Orientation.LandscapeInverted

    SilicaFlickable {
        id: about
        anchors.fill: parent
        contentHeight: aboutRectangle.height

        VerticalScrollDecorator { flickable: about }

        Column {
            id: aboutRectangle
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            spacing: Theme.paddingSmall

            PageHeader {
                title: qsTr("About")
            }

            Image {
                source: "./v2ray.png"
                sourceSize.width: parent.width/4
                sourceSize.height: parent.width/4
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                text: "ShadowFish"
                horizontalAlignment: Text.Center
                width: parent.width - Theme.paddingLarge * 2
                anchors.horizontalCenter: parent.horizontalCenter
            }

            SectionHeader {
                text: qsTr("How to use")
            }

            Label {
                textFormat: Text.RichText;
                text: '<style>a:link { color: ' + Theme.highlightColor + '; }</style>' +
                      qsTr('This app is based on ') + ' <a href="https://www.v2ray.com/">v2ray-core</a>, ' +
                      qsTr('before start, take a look at how to use v2ray.' +
                      'Recommend server side config is %1 , the '+
                      'default by v2ray is OK too.').arg("<a href='https://paste.ubuntu.com/p/DqpB54MrRG/'>https://paste.ubuntu.com/p/DqpB54MrRG</a> ") +
                      qsTr('The template file is ') + '/home/nemo/.config/v2ray/config.json.template, ' +
                      qsTr('Default socks port is 1080, and a dokodemo-door port 12345')
                      ;
                width: parent.width - Theme.paddingLarge * 2
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                font.pixelSize: Theme.fontSizeSmall
            }

        }
    }
}
