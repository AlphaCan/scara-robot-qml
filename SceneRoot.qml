import Qt3D.Core 2.12
import Qt3D.Render 2.12
import Qt3D.Input 2.12
import Qt3D.Extras 2.12
import QtQuick 2.12

Entity{
    id:root

    BaseCamera{
        id:maincamera
        position: Qt.vector3d(-145,50,-10)//相机位置
    }

    OrbitCameraController{//添加控制轨道路径的场景相机，允许控制3D旋转 缩放
        camera: maincamera
    }

    CustomDirectLight{//方向光源
        id:userdirectlight
//        usercolor: "white"
    }

    CustomPointLight{//点光源
        id:userpointlight
//        usercolor: "white"
    }

    components: [
        RenderSettings {//指定渲染策略和拾取设置
        activeFrameGraph: ForwardRenderer {
            clearColor: Qt.rgba(0.8, 0.8, 0.8, 1)//前景颜色
            camera: maincamera
            }
        },
        InputSettings{}//输入类处理的输入事件源 例如，Window实例可以是事件源
    ]

    PhongMaterial{
        id:material
    }


    BaseAxis{
        id:base
        material: material
    }

    J1Axis{
        id:j1
        material: material
    }

    J2Axis{
        id:j2
        material: material
    }

    J3Axis{
        id:j3
        material: material
    }

    Rectangle{
        width: 50
        height: 100
        color: "red"
    }
}

