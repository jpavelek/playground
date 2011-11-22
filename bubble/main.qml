import QtQuick 1.1
import com.nokia.meego 1.0


PageStackWindow {
    id: appWindow
    initialPage: listOfBubbles

    Page {
        id: listOfBubbles

        ListModel {
            id: bubbleTestModel
            ListElement {
                message: "when you have newer Qt, it'll use hardware rendering when foregrounded, and software in the background, saving resources (like harmattan)"
                note: "Received | 10:05"
            }
            ListElement {
                message: " hmm.. where is the latest qt.. no update candidate for 'libqtcore4-4.8.0~rc1-1.1.armv7hl'. The highest available version is already installed."
                note: "Received | 10:08"
            }
            ListElement {
                message: "ehh"
                note: "Received | 10:09"
            }
            ListElement {
                message: "it should have been in the new mer release"
                note: "Received | 10:09"
            }
            ListElement {
                message: "but for now, you can probably take umm home:w00t:branches:Mer:fake:Core:i586"
                note: "Received | 10:10"
            }
        }

        ListView {
            anchors.fill: parent
            model: bubbleTestModel
            delegate: Bubble {}
        }
    }
}
