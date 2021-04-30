//
//  DropViewDelegate.swift
//  DragAndDropList
//
//  Created by Thaís Fernandes on 29/04/21.
//

import SwiftUI

struct DropViewDelegate: DropDelegate {
    var item: Item
    @Binding var items: [Item]
    var currentItem: Item?
    
    func performDrop(info: DropInfo) -> Bool {
        return true
    }
    
    func dropEntered(info: DropInfo) {
        let fromIndex = items.firstIndex{ item -> Bool in
            return item.id == currentItem?.id
        } ?? 0
        
        let toIndex = items.firstIndex{ item -> Bool in
            return item.id == self.item.id
        } ?? 0
        
        if fromIndex != toIndex {
            withAnimation {
                let fromItem = items[fromIndex]
                items[fromIndex] = items[toIndex]
                items[toIndex] = fromItem
            }
        }
    }
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
}
