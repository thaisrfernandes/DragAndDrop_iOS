//
//  GridList.swift
//  DragAndDropList
//
//  Created by Thaís Fernandes on 29/04/21.
//

import SwiftUI

struct GridList: View {
    @Binding var items: [Item]
    @Binding var currentItem: Item?
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 20, content: {
                ForEach(self.items) { item in
                    ZStack {
                        Rectangle()
                            .fill(item.color)
                            .frame(width: 150, height: 150)
                            .cornerRadius(15)
                        
                        Text(item.name)
                    }
                    .onDrag({
                        self.currentItem = item
                        return NSItemProvider(contentsOf: URL(string: "\(item.id)")!)!
                    })
                    .onDrop(of: [.url], delegate: DropViewDelegate(item: item, items: $items, currentItem: self.currentItem))
                }
            })
        }
        .padding()
        .padding(.top)
    }
}

