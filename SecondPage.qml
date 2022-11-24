import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    signal myClick()
    Rectangle{
        anchors.fill: parent
        color: "white"
        //signal myClick()
        Column{
            spacing: 5
            anchors.centerIn: parent
            Button{
                //anchors.centerIn: parent
                text: "< Previous"
                onClicked: myClick()
            }
            Button{
                text: "Message"
                onClicked: myDialog1.open()
                Dialog{
                    anchors.centerIn: parent
                    id: myDialog1
                    title: "Message"
                    Label{
                        text: "sample subtitle text"
                    }
                }
            }
            Button{
                text: "Confirmation"
                onClicked: myDialog2.open()
                Dialog{
                    anchors.centerIn: parent
                    id: myDialog2
                    title: "Confirmation"
                    parent: ApplicationWindow.overlay
                    modal: true
                    standardButtons: Dialog.Yes | Dialog.No
                    Column{
                        spacing: 10
                        anchors.centerIn: parent
                        Label{
                            text: "sample subtitle text ............"
                        }
                        CheckBox{
                            text: "do not ask again"
                            anchors.right: parent.right
                        }
                    }


                }
            }
            ProgressBar{
                indeterminate: true
                //value: 0.5
            }
        }
        ScrollBar.vertical: ScrollBar { }



    }
}

