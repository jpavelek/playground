import QtQuick 1.1
import com.nokia.meego 1.0


PageStackWindow {
    id: appWindow
    initialPage: listOfBubbles

    Page {
        id: listOfBubbles

        ListView {
            anchors.fill: parent
            cacheBuffer: 2 * height
            model: bubbleTestModel
            delegate: Bubble {}
        }

        ListModel {
            id: bubbleTestModel
            ListElement {
                text: "when you have newer Qt, it'll use hardware rendering when foregrounded, and software in the background, saving resources (like harmattan)"
                note: "Received | 10:05"
            }
            ListElement {
                text: " hmm.. where is the latest qt.. no update candidate for 'libqtcore4-4.8.0~rc1-1.1.armv7hl'. The highest available version is already installed."
                note: "Received | 10:08"
            }
            ListElement {
                text: "ehh"
                note: "Received | 10:09"
            }
            ListElement {
                text: "it should have been in the new mer release"
                note: "Received | 10:09"
            }
            ListElement {
                text: "but for now, you can probably take umm home:w00t:branches:Mer:fake:Core:i586"
                note: "Received | 10:10"
            }
        }

    }

}
