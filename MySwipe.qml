import QtQuick 2.0
import QtQuick.Controls 2.5


SwipeView {
    id: view

    currentIndex: 1
    anchors.fill: parent

    Item {
        id: firstPage
    }
    Item {
        id: secondPage
    }
    Item {
        id: thirdPage
    }
}

PageIndicator {
    id: indicator

    count: view.count
    currentIndex: view.currentIndex

    anchors.bottom: view.bottom
    anchors.horizontalCenter: parent.horizontalCenter
}
