import QtQuick 1.1
import com.nokia.meego 1.0
import "BubbleUiConstants.js" as UI


Loader {
    id: bubble
    width: parent.width
    height: childrenRect.height
    property int messageFontSize: UI.MESSAGE_FONT_SIZE
    property int noteFontSize: UI.NOTE_FONT_SIZE
    source: (received) ? "ReceivedBubble.qml" : "SentBubble.qml"
}
