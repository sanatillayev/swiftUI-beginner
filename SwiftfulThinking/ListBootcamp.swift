//
//  ListBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits : [String] = [
        "apple","banana", "orange","peach"
    ]
    @State var veggies : [String] = [
        "tomato","potato", "carrot"
    ]
    var body: some View {
        
        NavigationView {
            List {
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                }
                    .font(.headline)
                    .foregroundColor(.indigo)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.gray)
                            .padding(.vertical,8)

                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.orange)
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .onDelete { IndexSet in
                        veggies.remove(atOffsets: IndexSet)
                    }
                }
            }
            .accentColor(.black)
//            .listStyle(InsetListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        .accentColor(.green)
    }
    
    var addButton: some View{
        Button("Add", action: {
            add()
        })
    }
    func add(){
        fruits.append("Coconut")
    }
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset:Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
