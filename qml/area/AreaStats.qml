import QtQuick 2.7
import rolevax.sakilogy 1.0
import "../js/nettrans.js" as NetTrans
import "../widget"

Column {
    spacing: global.size.space

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: global.size.middleFont
        text: PClient.user.Username
    }

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: global.size.middleFont
        text: NetTrans.level(PClient.user.Level) + " "
              + NetTrans.points(PClient.user.Level, PClient.user.Pt) + " "
              + NetTrans.rating(PClient.user.Rating)
    }

    Item { width:1; height: global.size.gap }

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        text: PClient.playCt + " 战"
    }

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "1位 " + _rankPercent(0);
    }

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "2位 " + _rankPercent(1);
    }

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "3位 " + _rankPercent(2);
    }

    Texd {
        anchors.horizontalCenter: parent.horizontalCenter
        text: "4位 " + _rankPercent(3);
    }
}