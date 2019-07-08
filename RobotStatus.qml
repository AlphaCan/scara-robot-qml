import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3

Item {

    width: 115
    height: 155

    property bool manual_switch:manual.checked
    property real j1dgree: 0.00
    property real j2dgree: 0.00
    property real j3dgree: 0.00
    property real j4dgree: 0.00

    ColumnLayout {
        id: columnLayout
        x: 8
        y: 8
        width: 110
        height: 150

        Switch {
            id: manual
            text: qsTr("Manual")
            checked: true
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100

            Text {
                id: j1_dgree_text
                text: qsTr("Joint1:")
                font.pixelSize: 12
            }

            TextEdit {
                id: j1_dgree
                width: 80
                height: 20
                text: qsTr(j1dgree.toString())
                font.bold: true
                readOnly: true
                font.pixelSize: 12

            }
        }

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100
            Text {
                id: j2_dgree_text
                text: qsTr("Joint2:")
                font.pixelSize: 12
            }

            TextEdit {
                id: j2_dgree
                width: 80
                height: 20
                text: qsTr(j2dgree.toString())
                font.bold: true
                readOnly: true
                font.pixelSize: 12
            }
        }

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Text {
                id: j3_dgree_text
                text: qsTr("Joint3:")
                font.pixelSize: 12
            }

            TextEdit {
                id: j3_dgree
                width: 80
                height: 20
                text: qsTr((j3dgree*20.0).toString())
                font.bold: true
                readOnly: true
                font.pixelSize: 12
            }
        }

        RowLayout {
            id: rowLayout3
            width: 100
            height: 100
            Text {
                id: j4_dgree_text
                text: qsTr("Joint4:")
                font.pixelSize: 12
            }

            TextEdit {
                id: j4_dgree3
                width: 80
                height: 20
                text: qsTr(j4dgree.toString())
                font.bold: true
                readOnly: true
                font.pixelSize: 12
            }
        }
    }

}
