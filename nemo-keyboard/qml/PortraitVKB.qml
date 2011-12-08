/*
 * This file is part of Maliit plugins
 *
 * Copyright (C) Jakub Pavelek <jpavelek@live.com>
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list
 * of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 * Neither the name of Nokia Corporation nor the names of its contributors may be
 * used to endorse or promote products derived from this software without specific
 * prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
 * THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

import Qt 4.7
import "KeyboardUiConstants.js" as UI
import "DevStub.js" as MInputMethodQuick

Rectangle {
    id: vkb
    color: UI.BG_COLOR
    z: 100
    width: UI.PORTRAIT_WIDTH
    height: UI.PORTRAIT_HEIGHT

    property string currentLayoutName: "Whatever"
    property int index : 1;
    function nextLayout() {
        //FIXME this is superugly
        if (index == 2)
        {
            eng.visible = true;
            rus.visible = false;
            currentLayoutName = eng.layoutName;
            index = 1;
        } else if (index == 1) {
            eng.visible = false;
            rus.visible = true;
            currentLayoutName = rus.layoutName;
            index++;
        }
    }

    Flickable {
        id: flickable
        anchors.fill: parent
        flickableDirection: Flickable.VerticalFlick
        onFlickStarted: {
            if (Math.abs(contentY) > UI.FLICK_CLOSE_DISTANCE) {
                //Long enough to care
                if (contentY < 0) {
                    MInputMethodQuick.userHide();
                } else {
                    nextLayout();
                    layoutLabel.visible = true;
                    timerLabelShow.start();
                 }
            }
        }

        //TODO - move this all to manager
        RussianPortrait { id: rus; visible: false; }
        EnglishPortrait { id: eng; visible: true; }

    }

    Text {
        id: layoutLabel
        text: currentLayoutName
        font.pixelSize: 72
        color: UI.TEXT_COLOR
        visible: false
        anchors { horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter }
    }

    Timer {
        id: timerLabelShow
        interval: 750
        running: false
        repeat: false
        onTriggered: layoutLabel.visible = false
    }
}
