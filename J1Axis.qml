import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material //模型材质

    Transform{
        id:j1material

    }

    Mesh{//scara 一轴模型
        id:j1
        source: "qrc:/model/J1.obj"
    }
    components: [j1,j1material,root.material]
}
