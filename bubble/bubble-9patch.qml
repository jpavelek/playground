import QtQuick 1.1


Rectangle {
    width: 480
    height: 800
    color: "#DDDDDD"
    Bubble {
        id: normal
        note: "Send | today at 12:50"
        text: "ah, it might have to do with /etc/zypp/repos.d not having the latest mer release in the urls... grep merproject /etc/zypp/repos.d/*"
        //anchors { top: parent.top; left: parent.left; right: parent.right}
        y: 10
    }

    Bubble {
        id: small
        note: "Sending failed!"
        text: "otherwise you'll get stuck with software rendering, which will indeed be slower :)"
        //anchors { top: normal.bottom; left: parent.left; right: parent.right }
        y: 130
    }
    Bubble {
        id: tall
        text: "Bullseye!"
        //anchors { top: small.bottom; left: parent.left; right: parent.right }
        y: 400
    }
}
