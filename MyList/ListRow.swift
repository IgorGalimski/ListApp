//
//  ListRow.swift
//  MyList
//
//  Created by Yasser Farahi on 17/03/2021.
//

import SwiftUI

struct ListRow: View {
    
    var country = DataModel(id: 0, countryName: "The Netherlands", capitalCity: "Amsterdam", flagName: "nl", population: 1800000)
    
    var body: some View {
        
        HStack {
            
            Image(country.flagName)
                .resizable()
                .frame(width: 70, height: 70, alignment: .center)
                .clipShape(Circle())
                .padding(EdgeInsets(top: .zero, leading: .zero, bottom: .zero, trailing: 20))
            
            VStack(alignment: .leading, spacing: nil, content: {
                Text(country.countryName)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.1361204324, green: 0.1361204324, blue: 0.1361204324, alpha: 1)))
                
                Text(country.capitalCity)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.1361204324, green: 0.1361204324, blue: 0.1361204324, alpha: 1)))
                
                Text("\(Int(country.population))")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(Color(#colorLiteral(red: 0.1361204324, green: 0.1361204324, blue: 0.1361204324, alpha: 1)))
                
            })
            
            Spacer()
        }
        
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}
