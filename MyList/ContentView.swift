//
//  ContentView.swift
//  MyList
//
//  Created by Yasser Farahi.
//

import SwiftUI

struct ContentView: View {
    
    @State var dataModel: [DataModel] = shouldDecodeData()
    
    var body: some View
    {
        ZStack
        {
            List
            {
                ForEach(dataModel, id: \.self) {
                    country in
                    ListRow(country: country)
                }.onDelete(perform:
                            { indexSet in
                    delete(at: indexSet)
                })
            }
        }
    }
    
    private func delete(at offset: IndexSet) {
        guard let index = offset.first else { return }
        
        if dataModel.count > index
        {
            dataModel.remove(at: index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View
    {
        ContentView()
    }
}
