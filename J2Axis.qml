import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material
    property real j2rotateangle:0

    Transform{
        id:j2material
        matrix: rotateAround(Qt.vector3d(5.35,0,-20.73),j2rotateangle,Qt.vector3d(0,1,0))

    }

    Mesh{//scara 二轴模型
        id:j2
        source: "qrc:/model/J2.obj"

    }
    components: [j2,j2material,root.material]
}

