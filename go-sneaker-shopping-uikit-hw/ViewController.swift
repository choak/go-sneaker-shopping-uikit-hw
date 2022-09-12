//
//  ViewController.swift
//  go-sneaker-shopping-uikit-hw
//
//  Created by Andrew Cho on 9/11/22.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let sneakers = [
        Sneakers(brand: "Nike", name: "Air Force 1", gender: "Male", size: 9.0, color: "White", price: 100.0),
        Sneakers(brand: "Adidas", name: "Superstar", gender: "Female", size: 5.0, color: "Black", price: 70.0),
        Sneakers(brand: "New Balance", name: "990", gender: "Male", size: 9.0, color: "Gray", price: 200.0),
        Sneakers(brand: "Puma", name: "Slides", gender: "Female", size: 6.0, color: "Red", price: 30.0),
        Sneakers(brand: "On", name: "RF1", gender: "Male", size: 8.0, color: "Blue", price: 60.0)
    ]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sneakers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SneakerTableViewCell", for: indexPath)
        let sneaker = sneakers[indexPath.row]
        cell.textLabel?.text = sneaker.brand + " " + sneaker.name + " " + String(sneaker.size) + " " + "Price: $" + String(sneaker.price)
        

            return cell
    }
    @IBOutlet weak var sneakersTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        sneakersTable.delegate = self
        sneakersTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

