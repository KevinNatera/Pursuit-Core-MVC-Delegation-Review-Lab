//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource ,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movie.allMovies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableOutlet.dequeueReusableCell(withIdentifier: "movies", for: indexPath)
        
        cell.textLabel?.text = Movie.allMovies[indexPath.row].name
        cell.detailTextLabel?.text = String(Movie.allMovies[indexPath.row].year)
        cell.textLabel?.font = cell.textLabel?.font.withSize(fontSize)
        cell.detailTextLabel?.font = cell.detailTextLabel?.font.withSize(fontSize - 5)
        
        return cell
    }
    

    
    @IBOutlet weak var tableOutlet: UITableView!
    
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { fatalError() }
        
        fontSize = CGFloat(settingsVC.sliderOutlet.value)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableOutlet.dataSource = self
        tableOutlet.delegate = self
        tableOutlet.rowHeight = 150
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        
        tableOutlet.reloadData()
    }


}

