//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Igor Denisiuk on 16/03/2021.
//  Copyright © 2021 Igor Denisiuk. All rights reserved.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
    
}

struct Weather: Codable {
    let id: Int
}
