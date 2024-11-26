//
//  WeatherModel.swift
//  ios-weather-app
//
//  Created by Hridayan Phukan on 26/11/24.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var conditionName: String {
        getConditioName(weatherId: conditionId)
    }
    
    var temperatureString: String {
        String(format: "%.1f", temperature) + "°C"
    }
    
    func getConditioName(weatherId: Int) -> String {
        switch weatherId {
        case 200...232:
            return "cloud.fog"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.sleet"
            
        case 800:
            return "sun.max"
            
        case 801...804:
            return "cloud.bolt"
            
        default:
            return "cloud"
        }
    }
}
