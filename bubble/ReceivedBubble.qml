import QtQuick 1.0
import com.nokia.meego 1.0
import "BubbleUiConstants.js" as UI

Item {
    id: receivedBubble
    height: childrenRect.height

    Image {
        id: img3
        source: "3r.png"
        anchors {right: parent.right; rightMargin: UI.MARGIN_POST_END; top: parent.top }
    }
    Image {
        id: img2
        source: "2r.png"
        property int neededWidth: textMessage.paintedWidth - (img1.width - UI.MARGIN_START) - (img3.width - UI.MARGIN_END) - UI.MARGIN_PRE_START
        width: (neededWidth > 0) ? neededWidth : 0
        anchors {right: img3.left; top: img3.top }
        }
    Image {
        id: img1
        source: "1r.png"
        anchors {right: img2.left; top:img3.top }
    }
    Image {
        id:img4
        source: "4r.png"
        height: textMessage.height - (img1.height - UI.MARGIN_TOP) - (img7.height - UI.MARGIN_BOTTOM)
        anchors { left: img1.left; top: img1.bottom }
    }
    Image {
        id:img5
        source: "5r.png"
        anchors {left:img4.right; top:img1.bottom}
        width: img2.width
        height: img4.height
    }
    Image {
        id:img6
        source: "6r.png"
        height: img4.height
        anchors {left: img5.right; top: img1.bottom }
    }
    Image {
        id:img7
        source: "7r.png"
        anchors {left: img1.left; top: img4.bottom }
    }
    Image {
        id:img8
        source: "8r.png"
        anchors {left: img7.right; top: img4.bottom }
        width: img2.width
        fillMode: Image.Tile
    }
    Image {
        id:img9
        source: "9r.png"
        anchors {left: img8.right; top: img4.bottom }
    }
    Label {
        id: textNote
        color: "black"
        //smooth: true
        font.pixelSize: noteFontSize
        text: note
        elide: Text.ElideRight
        anchors {right: img9.left; top: img7.top; topMargin: UI.MARGIN_NOTE_TOP }
    }
    Text {
        id: textMessage
        color: "black"
        //smooth: true
        font.pixelSize: messageFontSize
        text: message
        wrapMode: Text.WordWrap
        width: parent.width - UI.MARGIN_START - UI.MARGIN_END - UI.MARGIN_PRE_START - UI.MARGIN_POST_END
        anchors { left: img1.left; leftMargin: UI.MARGIN_START; top: parent.top; topMargin: UI.MARGIN_TOP; }
    }
}
