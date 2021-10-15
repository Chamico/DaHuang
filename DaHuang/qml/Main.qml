import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "./basic_function"
import "./public_function"

ApplicationWindow {
    id:idApplicationWindow
    width: 900
    height: width * 0.618
    visible: true
    title: qsTr("大荒助手")



    RowLayout{
        Rectangle{
            id:good
            x: parent.x + 50
            y: parent.y + 5
            SerialPortSettings{
                id:idSPS
            }

            Text {
                id: name
                text: qsTr(good.x.toString())
            }


        }
        Rectangle{
            id: tese
            x: parent.x + idSPS.width + 50
            y: parent.y + 5
            width: 200
            height: 200


            PublicFunction{}

            Text {
                id: name1
                text: qsTr(tese.x.toString())
            }
        }
    }


    footer: Text {
        //id: name
        text: qsTr("footer")
    }
}

