import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3

Item {

    width: 200
    height: 300

    property bool robotstatusactive
    property real gdl1value: gdl1.value
    property real gdl2value: gdl2.value
    property real gdl3value: gdl3.value
    property real gdl4value: gdl4.value
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
            height: 24
            value: 0.0
            from: -90
            to:90
            stepSize: 0.1
            objectName: "gdl1"

        }

        Slider {
            id: gdl2
            width: 117
            height: 24
            value: 0.0
            from: -109
            to:109
            stepSize: 0.1
            objectName: "gdl2"
        }

        Slider {
            id: gdl3
            width: 117
            height: 24
            value: 0.0
            from:0
            to:-9
            stepSize: 0.1
            objectName: "gdl3"
        }

        Slider {
            id: gdl4
            width: 117
            height: 24
            value: 0.0
            from: -360
            to:360
            stepSize: 0.1
            objectName: "gdl4"
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


