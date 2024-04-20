/*
    SPDX-FileCopyrightText: 2013 David Edmundson <davidedmundson@kde.org>

    SPDX-License-Identifier: GPL-2.0-or-later
*/

import QtQuick 2.0
import QtQuick.Controls 2.0
import org.kde.kirigami 2.5 as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    property alias cfg_showSecondHand: showSecondHandCheckBox.checked
    property alias cfg_showTimezoneString: showTimezoneCheckBox.checked
    property alias cfg_playHourGong: playHourGongCheckBox.checked
    property alias cfg_volumeSlider: volumeSlider.value
    property alias cfg_dateOverlay: dateOverlayCheckBox.checked

    Kirigami.FormLayout {
        CheckBox {
            id: showSecondHandCheckBox
            text: i18n("Show seconds hand")
            Kirigami.FormData.label: i18n("General:")
        }
        CheckBox {
            id: showTimezoneCheckBox
            text: i18n("Show time zone")
        }
        CheckBox {
            id: playHourGongCheckBox
            text: i18n("Play the gong sound every hour")
        }
        Slider {
            id: volumeSlider
            from: 0.0
            to: 1.0
            value: 0.5
            Kirigami.FormData.label: i18n("Volume:")
        }
        CheckBox {
            id: dateOverlayCheckBox
            text: i18n("Show date")
        }
    }
}
