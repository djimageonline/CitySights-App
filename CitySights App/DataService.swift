//
//  DataService.swift
//  CitySights App
//
//  Created by Johnny Proano on 10/4/24.
//

import Foundation

struct DataService {
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String

    func businessSearch() async -> [Business] {
        
        //    Check id api exists
        guard apiKey != nil else {
            return [Business]()
        }
        //    create url
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=35.665517&longitude=139.770398&categories=restaurants&limit=10") {
            
            //    create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            //    sendrequest
            
            do {
                let (data, response) =  try await URLSession.shared.data(for: request)
                let decoder = JSONDecoder()
                let result = try decoder.decode(BusinessSearch.self, from: data)
                return result.businesses
            }
            catch {
                print(error)
            }
        }
        return [Business]()
    }
}
