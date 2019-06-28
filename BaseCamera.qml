import Qt3D.Core 2.12
import Qt3D.Render 2.12

Camera{
    id:root
    projectionType: CameraLens.PerspectiveProjection
    fieldOfView: 45//视觉域
    aspectRatio: 16.0/9.0//分辨率 常规比例
    nearPlane: 1//近点
    farPlane: 500.0//远点 模型必须介于 近点和远点之间，否则显示不全
    upVector: Qt.vector3d(0.0,1.0,0.0)//规定相机上方为Y轴方向
    viewCenter: Qt.vector3d(0.0,10,-20)//相机初始化照射点
}



