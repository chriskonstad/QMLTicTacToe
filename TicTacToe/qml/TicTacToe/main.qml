// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: page
    width: 600
    height: 600
    color: "#343434"
    property bool player
    player: false

    Rectangle {
        id: upL
        x: 0
        y: 0
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.width: 5
        border.color: "#808080"
        property bool open: true

        MouseArea {
            id: mouse_area1
            anchors.fill: parent
            onClicked:
            {
                if(upL.open)
                {
                    page.player = !page.player
                    if(player)
                        upL.color = "red"
                    else
                        upL.color = "blue"
                }
                upL.open = false
            }
        }
    }

    Rectangle {
        id: upM
        x: (parent.width / 3) - 35
        y: 0
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.width: 5
        border.color: "#808080"
        property bool open: true

        MouseArea {
            id: mouse_area2
            anchors.fill: parent
            onClicked:
            {
                if(upM.open)
                {
                    page.player = !page.player
                    if(player)
                        upM.color = "red"
                    else
                        upM.color = "blue"
                }
                upM.open = false
            }
        }
    }

    Rectangle {
        id: upR
        x: (2 * parent.width / 3) - 70
        y: 0
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.width: 5
        border.color: "#808080"
        property bool open: true

        MouseArea {
            id: mouse_area3
            anchors.fill: parent
            onClicked:
            {
                if(upR.open)
                {
                    page.player = !page.player
                    if(player)
                        upR.color = "red"
                    else
                        upR.color = "blue"
                }
                upR.open = false
            }
        }
    }

    Rectangle {
        id: midL
        x: 0
        y: ( parent.height / 3) + 5
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.color: "#808080"
        border.width: 5
        property bool open: true

        MouseArea {
            id: mouse_area4
            anchors.fill: parent
            onClicked:
            {
                if(midL.open)
                {
                    page.player = !page.player
                    if(player)
                        midL.color = "red"
                    else
                        midL.color = "blue"
                }
                midL.open = false
            }
        }
    }

    Rectangle {
        id: midR
        x: (2 * parent.width / 3) - 70
        y: ( parent.height / 3) + 5
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.color: "#808080"
        border.width: 5
        property bool open: true

        MouseArea {
            id: mouse_area6
            anchors.fill: parent
            onClicked:
            {
                if(midR.open)
                {
                    page.player = !page.player
                    if(player)
                        midR.color = "red"
                    else
                        midR.color = "blue"
                }
                midR.open = false
            }
        }
    }

    Rectangle {
        id: midM
        x: (parent.width / 3) - 35
        y: ( parent.height / 3) + 5
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.color: "#808080"
        border.width: 5
        property bool open: true

        MouseArea {
            id: mouse_area5
            anchors.fill: parent
            onClicked:
            {
                if(midM.open)
                {
                    page.player = !page.player
                    if(player)
                        midM.color = "red"
                    else
                        midM.color = "blue"
                }
                midM.open = false
            }
        }
    }

    Rectangle {
        id: lowL
        x: 0
        y: (2 * parent.height / 3) + 10
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.color: "#808080"
        border.width: 5
        property bool open: true

        MouseArea {
            id: mouse_area7
            anchors.fill: parent
            onClicked:
            {
                if(lowL.open)
                {
                    page.player = !page.player
                    if(player)
                        lowL.color = "red"
                    else
                        lowL.color = "blue"
                }
                lowL.open = false
            }
        }
    }

    Rectangle {
        id: lowR
        x: (2 * parent.width / 3) - 70
        y: (2 * parent.height / 3) + 10
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.color: "#808080"
        border.width: 5
        property bool open: true

        MouseArea {
            id: mouse_area9
            anchors.fill: parent
            onClicked:
            {
                if(lowR.open)
                {
                    page.player = !page.player
                    if(player)
                        lowR.color = "red"
                    else
                        lowR.color = "blue"
                }
                lowR.open = false
            }
        }
    }

    Rectangle {
        id: lowM
        x: (parent.width / 3) - 35
        y: (2 * parent.height / 3) + 10
        width: ( parent.width / 3 ) - 50
        height: ( parent.height / 3 ) - 10
        color: "#00000000"
        radius: 5
        border.color: "#808080"
        border.width: 5
        property bool open: true

        MouseArea {
            id: mouse_area8
            anchors.fill: parent
            onClicked:
            {
                if(lowM.open)
                {
                    page.player = !page.player
                    if(player)
                        lowM.color = "red"
                    else
                        lowM.color = "blue"
                }
                lowM.open = false
            }
        }
    }

    Rectangle {
        id: butReset
        x: 488
        width: 105
        color: "#00000000"
        radius: 5
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        border.width: 5
        border.color: "#808080"

        MouseArea {
            id: mouse_area10
            anchors.fill: parent
            onClicked:
            {
                upL.color = "#00000000"
                upM.color = "#00000000"
                upR.color = "#00000000"
                midL.color = "#00000000"
                midM.color = "#00000000"
                midR.color = "#00000000"
                lowL.color = "#00000000"
                lowM.color = "#00000000"
                lowR.color = "#00000000"

                upL.open = true
                upM.open = true
                upR.open = true
                midL.open = true
                midM.open = true
                midR.open = true
                lowL.open = true
                lowM.open = true
                lowR.open = true
            }
        }
    }
}
