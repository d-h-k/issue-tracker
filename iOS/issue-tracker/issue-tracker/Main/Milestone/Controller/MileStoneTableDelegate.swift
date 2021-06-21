//
//  MileStoneTableDelegate.swift
//  issue-tracker
//
//  Created by jinseo park on 6/18/21.
//
import UIKit

class MileStoneTableDelegate: NSObject, UITableViewDelegate {
    
    typealias CellActionHandler = (Int, CellAction) -> Void
    private var cellActionHandler: CellActionHandler
    
    init(cellActionHandler: @escaping CellActionHandler) {
        self.cellActionHandler = cellActionHandler
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height * 0.233
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive,
                                              title: CellAction.delete.buttonTitle()) { [weak self] _, _, _ in
            self?.cellActionHandler(indexPath.row, .delete)
        }
        deleteAction.image = UIImage(systemName: "trash")
        
        let editAction = UIContextualAction(style: .normal,
                                            title: CellAction.edit.buttonTitle()) { [weak self] _, _, _ in
            self?.cellActionHandler(indexPath.row, .edit)
        }
        editAction.image = UIImage(systemName: "pencil")        
        return UISwipeActionsConfiguration(actions: [deleteAction,editAction])
    }
}
