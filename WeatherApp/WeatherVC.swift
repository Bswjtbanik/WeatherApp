//
//  ViewController.swift
//  WeatherApp
//
//  Created by Muhaimin Habib on 4/3/17.
//  Copyright © 2017 Biswajit banik. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTemperature: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    
    @IBOutlet weak var currentTempType: UILabel!
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.delegate = self
        tableview.dataSource = self
        print(Current_Weather_url)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Weathercell", for: indexPath)
        
        return cell
        
    }


}

