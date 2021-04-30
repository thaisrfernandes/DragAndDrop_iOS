//
//  VerticalList.swift
//  DragAndDropList
//
//  Created by Thaís Fernandes on 29/04/21.
//
import MobileCoreServices
import SwiftUI

struct VerticalList: View {
    @Binding var items: [Item]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                EditButton()
            }
            .padding(.horizontal)
            
            List {
                ForEach(items) { item in
                    Text(item.name)
                        .foregroundColor(item.color)
                }
                .onMove(perform: move)
                .onDelete(perform: delete)
            }
        }.padding(.vertical)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
