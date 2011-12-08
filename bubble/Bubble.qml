import QtQuick 1.1
import com.nokia.meego 1.0
import "BubbleUiConstants.js" as UI


Item {
    id: bubble
    width: parent.width
    height: childrenRect.height
    property int messageFontSize: UI.MESSAGE_FONT_SIZE
    property int noteFontSize: UI.NOTE_FONT_SIZE

    BorderImage {
        id: bubbleBimage
        source: (received) ? "bubble-received.png" : "bubble-sent.png"
        width: textMessage.paintedWidth + UI.MARGIN_LEFT_TEXT + UI.MARGIN_RIGHT_TEXT
        height: textMessage.paintedHeight + UI.MARGIN_TOP + UI.MARGIN_BOTTOM
        border.left:  (received) ? 45 : 19;
        border.top: 19
        border.right: (received) ? 19 : 45;
        border.bottom: 36
        anchors {
            right: (received) ? undefined : parent.right;
            left: (received) ? parent.left : undefined;
            rightMargin: UI.MARGIN_RIGHT_BUBBLE;
            leftMargin: UI.MARGIN_LEFT_BUBBLE;
            top: parent.top }
    }
    Label {
        id: textNote
        color: UI.NOTE_FONT_COLOR
        font.pixelSize: UI.NOTE_FONT_SIZE
        text: note
        elide: Text.ElideRight
        anchors {
            right: (received) ? undefined : bubbleBimage.right;
            left:(received) ? bubbleBimage.left : undefined;
            rightMargin: UI.MARGIN_NOTE_RIGHT;
            leftMargin: 45;
            bottom: bubbleBimage.bottom;
            bottomMargin: UI.MARGIN_NOTE_BOTTOM }
    }
    Text {
        id: textMessage
        color: UI.MESSAGE_FONT_COLOR
        font.pixelSize: UI.MESSAGE_FONT_SIZE
        text: message
        wrapMode: Text.WordWrap
        width: parent.width - UI.MARGIN_LEFT_BUBBLE - UI.MARGIN_LEFT_TEXT - UI.MARGIN_RIGHT_TEXT
        anchors { left: bubbleBimage.left; leftMargin: UI.MARGIN_LEFT_TEXT; top: parent.top; topMargin: UI.MARGIN_TOP; }
    }
}
