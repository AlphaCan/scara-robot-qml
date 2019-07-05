import QtQuick 2.12
import QtQuick.Scene3D 2.12
import QtQuick.Controls 2.5

Item {



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
                j2angle: robotControl.gdl1value + robotControl.gdl2value
                j3angle: robotControl.gdl1value
            }

        }
        RobotControl {
            id: robotControl
            x: 0
            y: 0
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














/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
