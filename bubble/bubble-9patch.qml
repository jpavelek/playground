import QtQuick 1.0


Rectangle {
    width: 480
    height: 800
    color: "#DDDDDD"
    Bubble {
        id: normal
        width: 400
        x: 10
        note: "Send | today at 12:50"
    }
    Bubble {
        id: small
        width: 120
        x: 10
        y: 100
        note: "Sending failed!"
    }
    Bubble {
        id: tall
        width: 230
        height: 150
        x: 10
        y: 200

    }
}
