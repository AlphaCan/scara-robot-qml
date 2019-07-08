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

        //该方法3轴和4轴为一个单独个体，互不影响
//        translation: Qt.vector3d(0,root.j3distance,0)
//        matrix: rotateAround(Qt.vector3d(0.045,0,-0.015),root.j3rotateangle,Qt.vector3d(0,1,0))

        //该方法需要3轴与其他几个轴的原点相同，但是在旋转时还是能看到轻微的晃动，具体原因不明，猜测是旋转中心与几何中心线存在细微偏移
        matrix: {
            var m = Qt.matrix4x4()
            m = rotateAround(Qt.vector3d(5.295,0,-32.595),root.j3rotateangle,Qt.vector3d(0,1,0))
            m.translate(Qt.vector3d(0,root.j3distance,0))
            return m
        }
//改方法需要将3轴的原点设置在集合中心线上，缺点是旋转时会看到明显的画圆弧动作，即旋转中心与几何中心不在同一线上
//
//        matrix: {
//            var m = Qt.matrix4x4()
//            m.translate(Qt.vector3d(5.25,15.2,-32.61))
//            m.translate(Qt.vector3d(0,root.j3distance,0))
//            m.rotate(root.j3rotateangle,Qt.vector3d(0,1,0))
//            return m
//        }

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
