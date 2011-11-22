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
            ListElement {
                message: "Sage: No gprs on 950 with newer connman, wifi works."
                note: "Received | "
            }
            ListElement {
                message: "does phonecalls etc work?"
                note: "Received | "
            }
            ListElement {
                message: "pinquery works, will test phone/sms"
                note: "Received | "
            }
            ListElement {
                message: "Sage: you ported the connman patches?"
                note: "Received | "
            }
            ListElement {
                message: "anybody got an idea on how to get signal strenght value which is sent to the UI and display it somewhere? terminal, or whatever"
                note: "Received | "
            }
            ListElement {
                message: "want to know if removing the backplate will make my n950 somehow similar to my N9/N8 as in signal strenght"
                note: "Received | "
            }
            ListElement {
                message: "i wonder if that's why our lockscreen doesn't always work on e.g. lenovo"
                note: "Received | "
            }
            ListElement {
                message: "Sage: ofono is only working in Nemo right?"
                note: "Received | "
            }
            ListElement {
                message: "oh, one thing, w00t, have you already played with multiple views on opengl? with multiple shared contexts"
                note: "Received | "
            }
        }

        ListView {
            id: listView
            anchors.fill: parent
            model: bubbleTestModel
            cacheBuffer: height*2
            spacing: 10
            delegate: Bubble {}

        }
        ScrollDecorator {
            flickableItem: listView
        }
    }
}
