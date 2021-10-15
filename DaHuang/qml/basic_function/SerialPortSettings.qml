import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
    x: 0
    y: 0
    height: idSPSLayout.height + 2
    width: idSPSLayout.width + 2
    color:"lightblue"
    border.color: "red"
    border.width: 3

    ColumnLayout{
        id:idSPSLayout
        spacing: 5
        Layout.leftMargin:3

        RowLayout{
            Layout.topMargin: 0
            Layout.bottomMargin: -3

            Text {text: qsTr("串口开关")}
            Switch {
                id:idSwitcher
                leftPadding: 8
                scale: 1.1
            }
        }
        RowLayout{
            Text {text: qsTr("端   口")}
            ComboBox {
                model: ["com1", "com2", "com3"]
            }
        }
        RowLayout{
            Text {text: qsTr("波特率")}
            ComboBox {
                model: ["9600", "115200", "4800"]
            }
        }
        RowLayout{
            Text {text: qsTr("数据位")}
            ComboBox {
                model: ["8", "4", "1"]
            }
        }
        RowLayout{
            Text {text: qsTr("校验位")}
            ComboBox {
                model: ["8", "4", "1"]
            }
        }
        RowLayout{
            Text {text: qsTr("停止位")}
            ComboBox {
                model: ["无", "", ""]
            }
        }

    }

}


