import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity{
    id:root

    property Material material
    property bool meshstatus:false
    property real j3rotateangle:0
    property real j3distance: 0


    Transform{
        id:j3material
//        translation: Qt.vector3d(0,root.j3distance,0)
//        matrix: rotateAround(Qt.vector3d(5.52,0,-33.168),root.j3rotateangle,Qt.vector3d(0,1,0))

        matrix: {

            var m = Qt.matrix4x4()

            m.translate(Qt.vector3d(5.25,15.2,-32.61))
            m.translate(Qt.vector3d(0,root.j3distance,0))
            m.rotate(root.j3rotateangle,Qt.vector3d(0,1,0))

            return m
        }

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
