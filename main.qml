import QtQuick 2.12
import QtQuick.Scene3D 2.12
import QtQuick.Controls 2.5

Item {
    width: 800
    height: 600


    Frame{

        anchors.fill: parent
        Scene3D {
            id: scene3d
            anchors.fill: parent

            focus: true
            aspects: ["input", "logic"]
            cameraAspectRatioMode: Scene3D.AutomaticAspectRatio

            SceneRoot {
                id: model
                j1angle: robotControl.gdl1value
                j2angle: robotControl.gdl2value
                j3angle: robotControl.gdl4value
                j3length: robotControl.gdl3value
            }

        }

        RobotStatus{
            id:robotstatus
            anchors.top: parent.top
            anchors.right: parent.right
            j1dgree: robotControl.gdl1value
            j2dgree: robotControl.gdl2value
            j3dgree: robotControl.gdl3value
            j4dgree: robotControl.gdl4value
        }


        RobotControl {
            id: robotControl
            visible: robotstatus.manual_switch
            anchors.top: parent.top
            anchors.left: parent.left
            robotstatusactive: model.loadstatus//机器人状态
        }



        Column {
            visible: !model.loadstatus// 隐藏繁忙加载图标
            anchors.centerIn: parent

            BusyIndicator {
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {

                text: "Loading 3D Model ..."
                font.pointSize: 14
                font.family: "Times New Roman"

            }

        }

    }
}

















