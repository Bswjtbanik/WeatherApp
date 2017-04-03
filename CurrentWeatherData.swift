//
//  CurrentWeatherData.swift
//  WeatherApp
//
//  Created by Muhaimin Habib on 4/3/17.
//  Copyright © 2017 Biswajit banik. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather{
    
    var _cityname : String!
    var _Date : String!
    var _weatherType : String!
    var _currentTemp : Double!
    


var cityname : String {
    if _cityname == nil{
      _cityname = ""
    }
    return _cityname
}

var date : String {
    if _Date == nil{
        
        
        let dateformater = DateFormatter()
        dateformater.dateStyle = .long
        dateformater.timeStyle =  .none
        let currentdate = dateformater.string(from: Date())
        self._Date = "Today,\(currentdate)"
        
        
        _Date = ""
    }
    return _Date
}

var weatherType : String {
    if _weatherType == nil{
        
        _weatherType = ""
    }
    return _weatherType
}

var currentTemp : Double {
    if _currentTemp == nil{
        
        _currentTemp = 0.0
    }
    return _currentTemp
}

}
