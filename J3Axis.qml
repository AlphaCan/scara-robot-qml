import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material
    property bool meshstatus:false


    Transform{
        id:j3material

    }

    Mesh{//Scara 三轴模型
        id:j3
        source: "qrc:/model/J3.obj"
        onStatusChanged: {

            if(j3.status === 2)
                meshstatus=true

//            console.info("j3"+meshstatus)
//            console.info(j3.status)

        }
    }
    components: [j3,j3material,root.material]


}
