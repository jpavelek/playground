import QtQuick 1.0
import "KeyboardUiConstants.js" as UI

Image {
    visible: false
    source: "popper.png"
    property alias text: popperText.text
    Text {
        id: popperText
        text: ""
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "sans"
        font.pixelSize: UI.FONT_SIZE_POPPER
        font.bold: true
        color: UI.TEXT_COLOR_POPPER
    }
}
