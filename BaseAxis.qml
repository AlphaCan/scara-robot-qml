import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material//材质

    Transform{//变换 细节后面再增加
        id:baseform
    }

    Mesh{//模型
        id:base
        source: "qrc:/model/base.obj"
    }
    components: [base,baseform,root.material]
}
