import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Window 2.0
import QtQuick.Controls.Material 2.3

ApplicationWindow {
    id: root6
    visible: true
    width: screen.width/3
    height: screen.height/3
    title: qsTr("Sixth Window")
    Component.onCompleted: myLoader.sourceComponent = comp1

    Loader{
        id: myLoader
        anchors.fill: parent
        //source : "FirstPage.qml"
    }
    Component{
        id: comp1
        FirstPage{
            onMyClick: {
                myLoader.sourceComponent = comp2
                console.log("First Page")
            }

        }

    }
    Component{
        id: comp2
        SecondPage{
            onMyClick: {
                myLoader.sourceComponent = comp1
                console.log("Second Page")
            }

        }

    }

}
