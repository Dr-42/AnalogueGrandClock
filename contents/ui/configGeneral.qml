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
    property alias cfg_playSecondSound: playSecondSoundCheckBox.checked
    property alias cfg_secondVolumeSlider: secondVolumeSlider.value
    property alias cfg_dateOverlay: dateOverlayCheckBox.checked
    property alias cfg_datePosition: datePosition.currentText
    property alias cfg_dateFontSize: dateFontSize.value
    property alias cfg_dayFontSize: dayFontSize.value
    property alias cfg_dateDayOffset: dateDayOffset.value

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
            Kirigami.FormData.label: i18n("Gong Volume:")
        }
        CheckBox {
            id: playSecondSoundCheckBox
            text: i18n("Play the seconds sound every second")
        }
        Slider {
            id: secondVolumeSlider
            from: 0.0
            to: 1.0
            value: 0.5
            Kirigami.FormData.label: i18n("Seconds volume:")
        }
        CheckBox {
            id: dateOverlayCheckBox
            text: i18n("Show date")
        }
        ComboBox {
            id: datePosition
            model: ["6 o'clock", "9 o'clock", "12 o'clock", "3 o'clock"]
            Kirigami.FormData.label: i18n("Date position:")
        }
        SpinBox {
            id: dateFontSize
            implicitWidth: Kirigami.Units.gridUnit * 3
            from: 4
            to: 128
            textFromValue: function (value) {
                return i18n("%1pt", value)
            }
            valueFromText: function (text) {
                return parseInt(text)
            }

            Kirigami.FormData.label: i18n("Date font size:")
        }
        SpinBox {
            id: dayFontSize
            implicitWidth: Kirigami.Units.gridUnit * 3
            from: 4
            to: 128
            textFromValue: function (value) {
                return i18n("%1pt", value)
            }
            valueFromText: function (text) {
                return parseInt(text)
            }

            Kirigami.FormData.label: i18n("Day font size:")
        }
        Slider {
            id: dateDayOffset
            from: 0.0
            to: 0.5
            value: 0.15
            Kirigami.FormData.label: i18n("Date day offset:")
        }

    }
}
