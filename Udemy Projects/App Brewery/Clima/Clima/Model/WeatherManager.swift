//
//  WeatherManager.swift
//  Clima
//
//  Created by Daniel Lee on 2023/01/28.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=b5f0acc57876e593b4b21162b3c5bbd4"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
    
    func performRequest(urlString: String) {
        // 1. Create a URL
        if let url = URL(string: urlString) {
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)    // Creates URLSession
            // 3. Give the sission a task
            let task  = session.dataTask(with: url, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        
    }
}
