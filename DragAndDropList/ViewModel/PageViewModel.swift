//
//  PageViewModel.swift
//  DragAndDropList
//
//  Created by Thaís Fernandes on 29/04/21.
//

import Foundation
import SwiftUI

public struct Item: Identifiable {
    let name: String
    let color: Color
    public let id = UUID()
}

public class PageViewModel {
        
    public var items = [
        Item(name: "Item 1", color: .pink),
        Item(name: "Item 2", color: .orange),
        Item(name: "Item 3", color: .green),
        Item(name: "Item 4", color: .purple),
        Item(name: "Item 5", color: .red),
        Item(name: "Item 6", color: .green),
        Item(name: "Item 7", color: .yellow),
        Item(name: "Item 8", color: .gray),
        Item(name: "Item 9", color: .pink),
        Item(name: "Item 10", color: .orange),
    ]
    
}
