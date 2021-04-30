//
//  ContentView.swift
//  DragAndDropList
//
//  Created by Thaís Fernandes on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var items = PageViewModel().items
    @State var currentItem: Item?
    
    var body: some View {
        TabView {
            VerticalList(items: $items)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Vertical")
                }
            
            GridList(items: $items, currentItem: $currentItem)
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Grid")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
