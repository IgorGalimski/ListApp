//
//  DataModel.swift
//  MyList
//
//  Created by IgorGalimski on 24/12/2021.
//

import Foundation

struct DataModel: Codable, Hashable, Identifiable
{
    let id: Int
    let countryName: String
    let capitalCity: String
    let flagName: String
    let population: Double
}

func shouldDecodeData() -> [DataModel]
{
    guard let fileUrl = Bundle.main.url(forResource: "listData", withExtension: "json") else { fatalError("Could not find file") }
    let data: Data
    
    do
    {
        data = try Data(contentsOf: fileUrl)
    } catch let error
    {
        fatalError("\(error)")
    }
    
    let decoder = JSONDecoder()
    
    do
    {
        return try decoder.decode([DataModel].self, from: data)
    } catch let error
    {
        fatalError("\(error)")
    }
}
