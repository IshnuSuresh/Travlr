//
//  Card.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct Card: Identifiable{
    @ObservedObject var cardModel = cardInfomrationModel()
    
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
       [Card(nameOfLocation: "CN Tower", categoryOfLocation: "Landmark", description: "The CN Tower is a 553.3 m-high concrete communications and observation tower located in the downtown core of Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name CN originally referred to Canadian National, the railway company that built the tower.", website: "cntower.ca", address: "290 Bremmers Blvd, Toronto, Ontario", imageName: "CN Tower"), Card(nameOfLocation: "Royal Ontario Museum", categoryOfLocation: "Museum", description: "The Royal Ontario Museum is a museum of art, world culture and natural history in Toronto, Canada. It is one of the largest museums in North America, the largest in Canada, and attracts more than one million visitors every year, the second most for a Canadian art museum after the Montreal Museum of Fine Arts. The museum is north of Queen's Park, in the University of Toronto district, with its main entrance on Bloor Street West.", website: "rom.on.ca", address: "100 Queen's Park, Toronto, Ontario", imageName: "ROM"), Card(nameOfLocation: "Eggstatic Toronto", categoryOfLocation: "Restaurant (Breakfast)", description: "Trendy bistro serving up artisan breakfast & brunch, plus desserts, drinks & sidewalk seating.", website: "https://eggstatic.ca/home", address: "1568 Bayview Ave, Toronto, ON M4G 3B7", imageName: "eggstatic"), Card(nameOfLocation: "Victoria's Restaurant", categoryOfLocation: "Restaurant (Breakfast)", description: "Elegant, art-filled eatery in the Omni King Edward Hotel serving breakfast & afternoon tea.", website: "omnihotels.com/hotels/toronto-king-edward/dining/victorias-restaurant?utm_source=gmblisting&utm_medium=organic", address: "37 King St E, Toronto, ON M5C 1E9", imageName: "victoria"), Card(nameOfLocation: "Fran's Restaurant and Bakery", categoryOfLocation: "Restaurant (Breakfast)", description: "Serves sandwiches, steaks, & burgers at all hours.", website: "https://www.fransrestaurant.com/", address: "2890 Victoria St N, Breslau, ON N0B 1M0", imageName: "frannies"), Card(nameOfLocation: "Juicy Dumpling", categoryOfLocation: "Restaurant (Lunch)", description: "Compact counter serve offering Shanghai-style dumplings, wonton soups & fried chicken.", website: "http://www.juicydumpling.ca/", address: "280 Spadina Ave., Toronto, ON M5T 0A1", imageName: "JuicyDumpling"), Card(nameOfLocation: "Rain Forest Cafe", categoryOfLocation: "Restaurant (Lunch)", description: "Rainforest-like eatery in the Sheraton with an American menu, mushroom-shaped bar & jungle sounds.", website: "N/A", address: "3401 Dufferin St, North York, ON M6A 2T9", imageName: "RainForest"), Card(nameOfLocation: "Thai Basil", categoryOfLocation: "Restaurant (Lunch)", description: "Classic Thai dishes served in a contemporary dining room decorated with portraits & busts of Buddha.", website: "https://thaibasil.ca/", address: "467 Bloor St W, Toronto, ON M5S 1X9", imageName: "thaibasil"), Card(nameOfLocation: "Magic Noodles", categoryOfLocation: "Restaurant (Dinner)", description: "Handpulled chinese noodles in bowls and soups, plus grilled snacks.", website: "https://magicnoodle.ca/", address: "93 Harbord St, Toronto, ON M5S 1G4", imageName: "magicnoodle"), Card(nameOfLocation: "Yueh Tung", categoryOfLocation: "Restaurant (Dinner)", description: "Snug eatery specializing in Hakka cuisine, plus an extensive menu of traditional Chinese fare.", website: "https://yuehtungrestaurant.com/", address: "126 Elizabeth St, Toronto, ON M5G 1P5", imageName: "YeuhTung"), Card(nameOfLocation: "Eataly", categoryOfLocation: "Restaurant (Dinner)", description: "Sustainably sourced Italian market produce, 4 Italian restaurants & educational resources.", website: "https://www.eataly.ca/", address: "Manulife Centre, 55 Bloor St W, Toronto, ON M4W 1A6", imageName: "Eataly"), Card(nameOfLocation: "West Queen West Hotel - Toronto", categoryOfLocation: "Hotel", description: "N/A", website: "http://www.westqueenwesthoteltoronto.co/", address: "1521 Queen St W, Toronto, ON M6R 1A5", imageName: "west"), Card(nameOfLocation: "Colour Cube Guest House Toronto Downtown East", categoryOfLocation: "Hotel", description: "N/A", website: "https://www.booking.com/hotel/ca/colour-cube-guest-house-toronto-downtown-east.html", address: "Gerrard St E, Toronto, ON M4M 1Y3", imageName: "ColourCube")]
    }
}
