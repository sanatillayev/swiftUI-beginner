//
//  ViewModelBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 16/08/23.
//

import SwiftUI
struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits()  {
        let fruit1 = FruitModel(name: "Orange", count: 43)
        let fruit2 = FruitModel(name: "Watermelon", count: 19)
        let fruit3 = FruitModel(name: "Banana", count: 89)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}

struct ViewModelBootcamp: View {
    
    // @StateObject -> USE THIS ON CREATION / INIT (we use it when we would not change anything in fruitViewModel) Now it will not refresh fruitViewModel this viewModel
    // @ObservableObject -> USE THIS FOR SUBVIEWS/ 2nd view (if smth will change in viewModel)
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                }else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                NavigationLink(destination: SecondScreen(fruitViewModel: fruitViewModel)) {
                    Image(systemName: "arrow.right")
                        .font(.title)
                }
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    // sample of usage of observedObject in here if we use the variable of views in the second view just use observedOblect
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }

        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
//        SecondScreen()
        ViewModelBootcamp()
    }
}
