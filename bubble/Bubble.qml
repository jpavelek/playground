import QtQuick 1.0
import "BubbleUiConstants.js" as UI

Item {
    id: bubble
    width: parent.width

    property string text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique velit a massa cursus aliquam"
    property string note: "Delivered | Tuesday 11:34"

    Image {
        id: img1
        source: "bubble-1.png"
        anchors {left: parent.left; top:parent.top }
    }
    Image {
        id: img2
        source: "bubble-2.png"
        width: parent.width - (UI.W_LEFT + UI.W_RIGHT)
        anchors {left: img1.right; top: img1.top }
    }
    Image {
        id: img3
        source: "bubble-3.png"
        anchors {left: img2.right; top: img1.top }
    }
    Image {
        id:img4
        source: "bubble-4.png"
        height: textText.height - (img1.height - UI.MARGIN_TOP) - (img7.height - UI.MARGIN_BOTTOM)
        anchors { left: img1.left; top: img1.bottom }
    }
    Image {
        id:img5
        source: "bubble-5.png"
        anchors {left:img4.right; top:img1.bottom}
        width: img2.width
        height: img4.height
    }
    Image {
        id:img6
        source: "bubble-6.png"
        height: img4.height
        anchors {left: img5.right; top: img1.bottom }
    }
    Image {
        id:img7
        source: "bubble-7.png"
        anchors {left: img1.left; top: img4.bottom }
    }
    Image {
        id:img8
        source: "bubble-8.png"
        anchors {left: img7.right; top: img4.bottom }
        width: img2.width
    }
    Image {
        id:img9
        source: "bubble-9.png"
        anchors {left: img8.right; top: img4.bottom }
    }
    Text {
        id: textNote
        color: "black"
        smooth: true
        font.pixelSize: 10
        text: bubble.note
        elide: Text.ElideRight
        width: parent.width - img9.width - UI.MARGIN_START
        anchors {left: img1.left; leftMargin: UI.MARGIN_START; top: img7.top; topMargin: UI.MARGIN_NOTE_TOP }
    }
    Text {
        id: textText
        color: "black"
        smooth: true
        font.pixelSize: 18
        text: bubble.text
        wrapMode: Text.WordWrap
        width: parent.width
        anchors { left: parent.left; leftMargin: UI.MARGIN_START; top: parent.top; topMargin: UI.MARGIN_TOP; right: parent.right; rightMargin: UI.MARGIN_END }
    }
}
