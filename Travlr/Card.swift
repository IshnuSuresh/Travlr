//
//  Card.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct Card: Identifiable{
    let id = UUID()
    let nameOfLocation: String
    let categoryOfLocation: String
    let description: String
    let website: String
    let address: String
    let imageName: String
    
    //X Position of the Card
    var x: CGFloat = 0.0
    //Y Position of the Card
    var y: CGFloat = 0.0
    //Degree of the Card
    var degree: CGFloat = 0.0
    
    static var data: [Card]{
        [Card(nameOfLocation: "CN Tower", categoryOfLocation: "Landmark", description: "The CN Tower is a 553.3 m-high concrete communications and observation tower located in the downtown core of Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name CN originally referred to Canadian National, the railway company that built the tower.", website: "cntower.ca", address: "290 Bremmers Blvd, Toronto, Ontario", imageName: "CN Tower"), Card(nameOfLocation: "Royal Ontario Museum", categoryOfLocation: "Museum", description: "The Royal Ontario Museum is a museum of art, world culture and natural history in Toronto, Canada. It is one of the largest museums in North America, the largest in Canada, and attracts more than one million visitors every year, the second most for a Canadian art museum after the Montreal Museum of Fine Arts. The museum is north of Queen's Park, in the University of Toronto district, with its main entrance on Bloor Street West.", website: "rom.on.ca", address: "100 Queen's Park, Toronto, Ontario", imageName: "ROM")]
    }
    
}
