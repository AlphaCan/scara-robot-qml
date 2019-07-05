import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material
    property bool meshstatus:false
    property real j3rotateangle:0

    Transform{
        id:j3material
        matrix: rotateAround(Qt.vector3d(5.65,0,-9.65),j3rotateangle,Qt.vector3d(0,1,0))
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
