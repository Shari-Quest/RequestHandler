//
//  ViewController.swift
//  RequestHandler
//
//  Created by Sharvari H V on 7/24/19.
//  Copyright © 2019 Sharvari H V. All rights reserved.
//

import UIKit
import MyPackage

class ViewController: UIViewController {

    var url = "http://www.mocky.io/v2/5d394eaa9f0000aa4e9b4288"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       makeServiceCall()
    }
    
    func makeServiceCall(){
        let request = ServiceClass.init(url: url, httpMethod: .get)
        request.prepareHTTPRequest(data: nil)
        request.serviceRequest { (result) in
            switch result{
            case .success(let data): guard  data != nil else{ print("Corrupted")
                return }
            do {
                let decoder = JSONDecoder()
                let output = try decoder.decode(Welcome.self, from: data!)
                print(output)
            }
            catch let err{
                print(err)
                }
            case .failure(let error): print(error)
            }
        }
    }

}
