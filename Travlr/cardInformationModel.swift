//
//  cardInformationModel.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-18.
//

import Foundation
import Firebase

class cardInfomrationModel: ObservableObject{
    @Published var list = [Card]()
    @Published var nameOfLocation: String = ""
    @Published var  categoryOfLocation: String = ""
    @Published var  description: String = ""
    @Published var  website: String = ""
    @Published var  address: String = ""
    @Published var  imageName: String = ""
    
    func addData(nameOfLocation: String, categoryOfLocation: String, description: String, website: String, address: String, imageName: String){
        //Reference To Collection
        let db = Firestore.firestore()
        
        //Add Document To Collection
        db.collection("cards").addDocument(data: ["nameOfLocation":nameOfLocation, "categoryOfLocation":categoryOfLocation, "description":description, "website":website, "address":address, "imageName":imageName])
    }
    
    func getData(){
        let db = Firestore.firestore()
        
        db.collection("cards").getDocuments { snapshot, error in
            if error == nil{
                if let snapshot = snapshot{
                    
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            return Card(nameOfLocation: d["nameOfLocation"] as? String ?? "", categoryOfLocation: d["categoryOfLocation"] as? String ?? "", description: d["description"] as? String ?? "", website: d["website"] as? String ?? "", address: d["address"] as? String ?? "", imageName: d["imageName"] as? String ?? "")
                        }
                    }
                    
                }
            } else{
                
            }
        }
    }
}
