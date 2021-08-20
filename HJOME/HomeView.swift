//
//  HomeView.swift
//  HJOME
//
//  Created by Lin Yu Shan on 2021/8/5.
//

import SwiftUI



struct Activity: Identifiable{
    var id = UUID()
    var title : String
    var content : String
    }

class Model : ObservableObject{
    @Published var activity = [Activity]()
}

struct HomeView: View {
    
    @ObservedObject var model = Model()
    @EnvironmentObject var todoArr : Model
    @State private var title = ""
    @State private var description = ""
    @State var showNewToDo = false

    var body: some View {
       NavigationView {

               
           VStack {
                    Spacer()
                   
                    Button(action: { showNewToDo.toggle() }) {
                        Image(systemName: "plus")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("GreenGrass"))
                            .clipShape(Circle())
                    }
                    Spacer()
                        .frame(height: 30)
                }
               
            }
            .navigationTitle("Todo")
            .sheet(isPresented: $showNewToDo, content: {
                // pass todo list
                NewActView().environmentObject(self.todoArr)
            })
       }
       
    }
    
    func deleteTodo(indexSet: IndexSet){
        print("Deleted item at \(indexSet)")
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        // inject the environment object
        HomeView().environmentObject(Model())
    }
}


struct LabelTextField : View {
   @State private var name = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("label")
                .font(.headline)
            TextField("name", text: $name)
                .padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0).cornerRadius(5))
        }
        .padding(.horizontal, 15)
    }
}


