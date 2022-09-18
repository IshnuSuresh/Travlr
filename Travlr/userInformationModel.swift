//
//  userInformationModel.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-18.
//

import Foundation
import Firebase

class userInformationModel: ObservableObject{
    @Published var emailAddress: String = ""
    @Published var password: String = ""
    @Published var age: String = ""
    @Published var sex: String = ""
    @Published var ethnicity: String = ""
    @Published var favouriteAttraction: String = ""
    @Published var favouriteBreakfastSpot: String = ""
    @Published var favouriteCity: String = ""
    @Published var favouriteCuisine: String = ""
    @Published var favouriteDinnerSpot: String = ""
    @Published var favouriteLunchSpot: String = ""
    
    @Published var City: String = ""
    @Published var hotelPriceRange: String = ""
    
    
    func addData(emailAddress: String, password: String, age: String, sex: String, ethnicity: String, favouriteAttraction: String, favouriteBreakfastSpot: String, favouriteCity: String, favouriteCuisine: String, favouriteDinnerSpot: String, favouriteLunchSpot: String){
        //Reference To Collection
        let db = Firestore.firestore()
        
        //Add Document To Collection
        db.collection("users").addDocument(data: ["emailAddress":emailAddress,"password": password, "age": age, "sex": sex, "ethnicity": ethnicity, "favouriteAttraction": favouriteAttraction, "favouriteBreakfastSpot":favouriteBreakfastSpot, "favouriteCity":favouriteCity, "favouriteCuisine":favouriteCuisine, "favouriteDinnerSpot":favouriteDinnerSpot, "favouriteLunchSpot":favouriteLunchSpot])
    }
    
    func getData(){
        let db = Firestore.firestore()
        
        db.collection("users").getDocuments { snapshot, error in
            if error == nil{
                if let snapshot = snapshot{
                    snapshot.documents.map { d in
                        return User(id: d.documentID, age: d["age"] as? String ?? "", emailAddress: d["emailAddress"] as? String ?? "", ethnicity: d["ethnicity"] as? String ?? "", favouriteAttraction: d["favouriteAttraction"] as? String ?? "", favouriteBreakfastSpot: d["favouriteBreakfastSpot"] as? String ?? "", favouriteCity: d["favouriteCity"] as? String ?? "", favouriteCuisine: d["favouriteCuisine"] as? String ?? "", favouriteDinnerSpot: d["favouriteDinnerSpot"] as? String ?? "", favouriteLunchSpot: d["favouriteLunchSpot"] as? String ?? "", password: d["password"] as? String ?? "", sex: d["sex"] as? String ?? "")
                    }
                }
            } else{
                
            }
        }
    }
    
    func updateData(userToUpdate: User){
        let db = Firestore.firestore()
        db.collection("users").document(userToUpdate.id).setData(["emailAddress": emailAddress,"password": password, "age": age, "sex": sex, "ethnicity": ethnicity, "favouriteAttraction": favouriteAttraction, "favouriteBreakfastSpot":favouriteBreakfastSpot, "favouriteCity":favouriteCity, "favouriteCuisine":favouriteCuisine, "favouriteDinnerSpot":favouriteDinnerSpot, "favouriteLunchSpot":favouriteLunchSpot])
    }
}
