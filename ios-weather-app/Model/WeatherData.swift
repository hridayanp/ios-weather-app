//
//  WeatherData.swift
//  ios-weather-app
//
//  Created by Hridayan Phukan on 26/11/24.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
