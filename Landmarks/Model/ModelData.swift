//
//  ModelData.swift
//  Landmarks
//
//  Created by Urbenson Laurent on 6/1/25.
//

import Foundation

//  you’ll first store the landmark data using the Observable() macro.With Observation, a view in SwiftUI can support data changes without using property wrappers or bindings.
@Observable
class ModelData {
    // Create an array of landmarks that you initialize from landmarkData.json
    var landmarks: [Landmark] = load("landmarkData.json")
}


//Create a load(_:) method that fetches JSON data with a given name from the app’s main bundle.
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
