import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3

Item {

    width: 200
    height: 300

    property bool robotstatusactive

    ColumnLayout{
        width: 202
        height: 300
        Slider {
            id: base_slider
            x: 20
            y: 19
            width: 117
            height: 24
            value: 0.5
        }

        Slider {
            id: j1_slider
            x: 20
            y: 60
            width: 117
            height: 21
            value: 0.5
        }

        Slider {
            id: j2_slider
            x: 20
            y: 98
            width: 117
            height: 20
            value: 0.5
        }

        Slider {
            id: j3_slider
            x: 20
            y: 130
            width: 117
            height: 23
            value: 0.5
        }

        Slider {
            id: j4_slider
            x: 20
            y: 165
            width: 117
            height: 21
            value: 0.5
        }

        StatusIndicator {
            id: statusIndicator
            Layout.minimumHeight: 50
            Layout.minimumWidth: 50
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            active: robotstatusactive
        }
    }

}


