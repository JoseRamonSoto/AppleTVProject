//
//  WeatherViewController.swift
//  AppleTVKit
//
//  Created by Jose Ramon Soto on 1/18/17.
//  Copyright © 2017 Jose Ramon Soto. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController
{
    @IBOutlet weak var currentTemperature: UILabel!
    @IBOutlet weak var summary: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let url = URL(string: "https://api.forecast.io/forecast/d3250bf407f0579c8355cd39cdd4f9e1/37.7833,122.4167")
        {
            if let data = try? Data(contentsOf: url)
            {
                do
                {
                    let parsed = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
                    
                    var newDict = parsed as? NSDictionary
                    print(newDict!["currently"], ["summary"])
                    
                    self.currentTemperature.text = "\(summary)"
                    self.summary.text = "\(currentTemperature)"
                    
                }
                catch let error as NSError
                {
                    print("A JSON parsithng error occurred, here are the details:\n \(error)")
                }
            }
        }
    }
    
    func parse(json: JSON)
    {
        for data in json["data"].arrayValue
        {
            let time = data["time"].intValue
            let summary = data["summary"].stringValue
            let icon = data["icon"].stringValue
            let temperature = data["temperature"].intValue
            let apparentTemperature = data["apparentTemperature"].intValue
        }

    }

}
