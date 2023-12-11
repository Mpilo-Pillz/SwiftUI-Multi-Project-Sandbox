//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Mpilo Pillz on 2023/12/23.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                }
            }
        }
    }
}
