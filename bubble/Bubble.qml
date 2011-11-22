import QtQuick 1.0

Item {
    id: bubble
    //Those are not properties, should go to constants
    property int w_left: 20
    property int w_right: 45
    property int h_top: 20
    property int h_bottom: 36
    width: parent.width


    property string text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique velit a massa cursus aliquam"
    property string note: "delivered | Tuesday 11:34"

    Image {
        id: img1
        source: "bubble-1.png"
        anchors {left: parent.left; top:parent.top }
    }
    Image {
        id: img2
        source: "bubble-2.png"
        width: parent.width - (w_left + w_right)
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
        height: textText.height - 20 //FIXME - no magic numbers
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
        width: parent.width - img9.width - w_left/2
        anchors {left: img1.left; leftMargin: w_left/2; top: img7.top; topMargin: 19 }
    }
    Text {
        id: textText
        color: "black"
        smooth: true
        font.pixelSize: 18
        text: bubble.text
        wrapMode: Text.WordWrap
        width: parent.width
        anchors { left: parent.left; leftMargin: 10; top: parent.top; topMargin: 10; right: parent.right; rightMargin: 10 }
    }
}
