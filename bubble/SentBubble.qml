import QtQuick 1.0
import com.nokia.meego 1.0
import "BubbleUiConstants.js" as UI

Item {
    id: sentBubble
    width: parent.width
    height: childrenRect.height

    BorderImage {
        id: sentBubbleBimage
        source: "bubble-sent.png"
        width: textMessage.paintedWidth + UI.MARGIN_LEFT_TEXT + UI.MARGIN_RIGHT_TEXT
        height: textMessage.paintedHeight + UI.MARGIN_TOP + UI.MARGIN_BOTTOM
        border.left: 45; border.top: 20
        border.right: 45; border.bottom: 36
        anchors { right: parent.right; rightMargin: UI.MARGIN_RIGHT_BUBBLE; top: parent.top }
    }
    Label {
        id: textNote
        color: UI.NOTE_FONT_COLOR
        //smooth: true
        font.pixelSize: UI.NOTE_FONT_SIZE
        text: note
        elide: Text.ElideRight
        anchors {left: sentBubbleBimage.left; leftMargin: UI.MARGIN_LEFT_TEXT; bottom: sentBubbleBimage.bottom; bottomMargin: UI.MARGIN_NOTE_BOTTOM }
    }
    Text {
        id: textMessage
        color: UI.MESSAGE_FONT_COLOR
        //smooth: true
        font.pixelSize: UI.MESSAGE_FONT_SIZE
        text: message
        wrapMode: Text.WordWrap
        width: parent.width - UI.MARGIN_LEFT_BUBBLE - UI.MARGIN_LEFT_TEXT - UI.MARGIN_RIGHT_TEXT
        anchors { left: sentBubbleBimage.left; leftMargin: UI.MARGIN_LEFT_TEXT; top: parent.top; topMargin: UI.MARGIN_TOP; }
    }
}
