import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3


Rectangle{
    id: myFirst
    anchors.fill: parent
    //color: myCheck1.checked === true ? "green" : "black"
    //color: myDelay.activate

    color: "green"
    signal myClick()
    Flickable {
        id: myFlick
        anchors.fill: parent
        flickableDirection: Flickable.AutoFlickIfNeeded
        contentHeight: pane.implicitHeight
        Pane{
            id: pane
            anchors.centerIn: parent
            Column{
                anchors.centerIn: parent
                spacing: 20
                Button{
                    //anchors.centerIn: parent
                    text: "Next >"
                    onClicked: myClick()
                    Material.elevation: 10
                }
                CheckBox{
                    id: myCheck1
                    text: "Green"
                    checked: true
                }
                ComboBox{
                    id: myComo
                    model: ["green","black","blue"]
                    editable: true
                    onAccepted: {
                        if(find(editText===-1)){
                            model.append({text: editText})
                        }
                    }

                }
                DelayButton{
                    id: myDelay
                    text: "Change to red"
                    property int cc: 0
                    onActivated: if(cc === 0){myFirst.color = "red"; cc = 1}else{myFirst.color = "green"; cc = 0}

                }
                Dial{
                    value: 0.2
                }
                SpinBox{
                    id: mySpinBox
                    value: 30
                    editable: false
                }
            }
        }
        ScrollBar.vertical: ScrollBar { }
    }

}

