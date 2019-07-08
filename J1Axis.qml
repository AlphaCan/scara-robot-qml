import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material //模型材质
    property real j1rotateangle:0

    Transform{
        id:j1material
        matrix: rotateAround(Qt.vector3d(5.35,0,-8.95),j1rotateangle,Qt.vector3d(0,1,0))

    }

    Mesh{//scara 一轴模型
        id:j1
        source: "qrc:/model/J1.obj"     

    }
    components: [j1,j1material,root.material]


}
