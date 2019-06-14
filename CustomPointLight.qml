import Qt3D.Core 2.0
import Qt3D.Render 2.0
import QtQuick 2.1
Entity {
    id: root

    property color usercolor: "#fff2a3"
    property vector3d lightposition: Qt.vector3d(0.0, 90.0, 15.0)

    PointLight{
        id:light
        color: root.usercolor
        intensity: 0.6//光照强度
    }

    Transform{
        id:pointlighttransform
        translation: root.lightposition
    }

    components: [light,pointlighttransform]

}


