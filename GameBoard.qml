import QtQuick 2.0
import Game 1.0;

GridView {
    id: root
    model: GameBoardModel {

    }

    cellWidth: width / root.model.dimension
    cellHeight: height / root.model.dimension

    delegate: Item {
        id: _cellItem
        width: root.cellWidth
        height: root.cellHeight

        visible: display !== root.model.hiddenElementValue

        Tile {
            anchors.fill: _cellItem
            anchors.margins: 5

            displayText: display

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    root.model.move(index);
                }
            }
        }
    }
}
