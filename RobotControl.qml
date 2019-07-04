import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3

Item {

    width: 200
    height: 300

    property bool robotstatusactive

    ColumnLayout{
        objectName: "sliders"
        width: 202
        height: 300
        Slider {
            id: v_gdl1
            width: 117
            height: 24
            value: 0.5
            objectName: "v_gdl1"
        }

        Slider {
            id: gdl1
            width: 117
            height: 21
            value: 0.5
            objectName: "gdl1"
        }

        Slider {
            id: gdl2
            width: 117
            height: 20
            value: 0.5
            objectName: "gdl2"
        }

        Slider {
            id: gdl3
            width: 117
            height: 23
            value: 0.5
            objectName: "gdl3"
        }

        Slider {
            id: j4_slider
            width: 117
            height: 21
            value: 0.5
        }

        StatusIndicator {
            id: indicator
            objectName: "indicator"
            Layout.minimumHeight: 50
            Layout.minimumWidth: 50
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            active: robotstatusactive

        }
    }

}


