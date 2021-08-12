//
//  ViewController.swift
//  1
//
//  Created by Tania on 03.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var jon: JsonModel?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let data = getJSON(urlToRequest: "https://api.plos.org/search?q=title:%22Drosophila%22%20and%20body:%22RNA%22&fl=id&start=1&rows=100")
        
        do {
            let jsonResult = try JSONDecoder().decode(JsonModel.self, from: data)
            
        } catch {
            print(error)
        }
        
        
        if let jsonResult = try? JSONDecoder().decode(JsonModel.self, from: data) {
            
            self.jon = jsonResult
            print(jon)
        } else {
            
        }
        
    }
    
    func getJSON(urlToRequest: String) -> Data {
        let url = URL(string: urlToRequest)!
        return try! Data(contentsOf: url)
    }
}

