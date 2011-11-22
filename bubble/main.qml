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
                received: true
            }
            ListElement {
                message: " hmm.. where is the latest qt.. no update candidate for 'libqtcore4-4.8.0~rc1-1.1.armv7hl'. The highest available version is already installed."
                note: "Received | 10:08"
                received: true
            }
            ListElement {
                message: "ehh"
                note: "Sent | 10:09"
                received: false
            }
            ListElement {
                message: "it should have been in the new mer release"
                note: "Sent | 10:09"
                received: false
            }
            ListElement {
                message: "but for now, you can probably take umm home:w00t:branches:Mer:fake:Core:i586"
                note: "Received | 10:10"
                received: true
            }
            ListElement {
                message: "Sage: No gprs on 950 with newer connman, wifi works."
                note: "Received | 10:14"
                received: true
            }
            ListElement {
                message: "does phonecalls etc work?"
                note: "Received | 10:14"
                received: true
            }
            ListElement {
                message: "pinquery works, will test phone/sms"
                note: "Received | 10:14"
                received: true
            }
            ListElement {
                message: "Sage: you ported the connman patches?"
                note: "Sent | 10:16"
                received: false
            }
            ListElement {
                message: "anybody got an idea on how to get signal strenght value which is sent to the UI and display it somewhere? terminal, or whatever"
                note: "Received | 10:16"
                received: true
            }
            ListElement {
                message: "want to know if removing the backplate will make my n950 somehow similar to my N9/N8 as in signal strenght"
                note: "Received | 10:16"
                received: true
            }
            ListElement {
                message: "i wonder if that's why our lockscreen doesn't always work on e.g. lenovo"
                note: "Sent | 10:16"
                received: false
            }
            ListElement {
                message: "Sage: ofono is only working in Nemo right?"
                note: "Received | 10:16"
                received: true
            }
            ListElement {
                message: "oh, one thing, w00t, have you already played with multiple views on opengl? with multiple shared contexts"
                note: "Sent | 10:19"
                received: false
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
