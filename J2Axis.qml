import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material


    Transform{
        id:j2material

    }

    Mesh{//scara 二轴模型
        id:j2
        source: "qrc:/model/J2.obj"

    }
    components: [j2,j2material,root.material]
}

