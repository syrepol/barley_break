import QtQuick 2.0
import Game 1.0;

GridView {
    id: root
    model: GameBoardModel {

    }

    cellWidth: width / 4
    cellHeight: height / 4

    delegate: Item {
        id: _cellItem
        width: root.cellWidth
        height: root.cellHeight

        visible: index != 15

        Tile {
            anchors.fill: _cellItem
            anchors.margins: 5

            displayText: display
        }
    }
}
