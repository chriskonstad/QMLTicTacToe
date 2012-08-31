// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: page
    width: 600
    height: 600
    color: "#343434"
    property bool player
    player: false

    Connections
    {
        target: Logic;
        onPlayerWon:
        {
            if(winner == "#ff0000")
                page.state = "winnerRed"
            else if(winner == "#0000ff")
                page.state = "winnerBlue"
        }
    }

    Rectangle {
        id: upL
        x: 0
        y: 0
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(0, upL.color)
            }
        }
    }

    Rectangle {
        id: upM
        x: (parent.width / 3) - 15
        y: 0
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(1, upM.color)
            }
        }
    }

    Rectangle {
        id: upR
        x: (2 * parent.width / 3) - 30
        y: 0
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(2, upR.color)
            }
        }
    }

    Rectangle {
        id: midL
        x: 0
        y: ( parent.height / 3) + 5
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(3, midL.color)
            }
        }
    }

    Rectangle {
        id: midR
        x: (2 * parent.width / 3) - 30
        y: ( parent.height / 3) + 5
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(5, midR.color)
            }
        }
    }

    Rectangle {
        id: midM
        x: (parent.width / 3) - 15
        y: ( parent.height / 3) + 5
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(4, midM.color)
            }
        }
    }

    Rectangle {
        id: lowL
        x: 0
        y: (2 * parent.height / 3) + 10
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(6, lowL.color)
            }
        }
    }

    Rectangle {
        id: lowR
        x: (2 * parent.width / 3) - 30
        y: (2 * parent.height / 3) + 10
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(8, lowR.color)
            }
        }
    }

    Rectangle {
        id: lowM
        x: (parent.width / 3) - 15
        y: (2 * parent.height / 3) + 10
        width: ( parent.width / 3 ) - 30
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
                Logic.squareChosen(7, lowM.color)
            }
        }
    }

    Rectangle {
        id: butReset
        x: 488
        width: 45
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

                Logic.resetSquares()
                page.state = ""
            }
        }
    }

    Rectangle {
        id: winnerBox
        width: winnerBox.height * 8
        height: page.height / 10
        x: (page.width / 2) - (winnerBox.width / 2)
        y: (page.height / 2) - (winnerBox.height / 2)
        color: "#ffffff"
        radius: 5
        visible: false
        border.color: "#808080"
        border.width: 5
        z: 1
        opacity: 0

        Text {
            id: winnerText
            text: qsTr("")
            anchors.fill: parent
            anchors.centerIn: parent
            font.pixelSize: parent.width / 10
            verticalAlignment: Text.AlignBottom
            horizontalAlignment: "AlignHCenter"
        }
    }
    states: [
        State {
            name: "winnerBlue"

            PropertyChanges {
                target: winnerBox
                color: "#343434"
                z: 2
                visible: true
                opacity: 1
            }

            PropertyChanges {
                target: winnerText
                opacity: 1
                color: "blue"
                text: qsTr("Blue has won!")
            }
        },
        State {
            name: "winnerRed"

            PropertyChanges {
                target: winnerBox
                color: "#343434"
                z: 2
                visible: true
                opacity: 1
            }

            PropertyChanges {
                target: winnerText
                color: "red"
                text: qsTr("Red has won!")
            }
        }
    ]
}
