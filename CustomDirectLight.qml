import Qt3D.Core 2.0
import Qt3D.Render 2.0

Entity {
    id: root

    property color usercolor: "#fff2a3"// 方向灯默认颜色
    property vector3d lightposition: Qt.vector3d(0.0, -50.0, 60.0)//变换方向

    DirectionalLight{
        id:directlight
        worldDirection: Qt.vector3d(0.3, -1.0, 5.0).normalized();//方向灯世界方向
        color: root.usercolor
        intensity: 0.7
    }

    Transform{
        id:directlighttransform
        translation: root.lightposition
    }

    components: [directlight,directlighttransform]

}
