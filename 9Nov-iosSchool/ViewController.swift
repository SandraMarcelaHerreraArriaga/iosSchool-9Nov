//
//  ViewController.swift
//  9Nov-iosSchool
//
//  Created by Sandra Herrera on 11/9/19.
//  Copyright © 2019 Sandra Herrera. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var places : [Place] = []
    override func viewDidLoad() {
        var place = Place(name: "AlexanderPlatz", type: "Plaza", location: "Alexanderplatz 110178 Berlin Germany", image: #imageLiteral(resourceName: "alexanderplatz"))
        places.append(place)
        place = Place(name: "Atomium", type: "Museo", location: "Place de l'Atomium 11020 Brussels Belgium", image: #imageLiteral(resourceName: "atomium"))
        places.append(place)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let place =  places[indexPath.row]
        let cellID = "placeCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! PlaceTableViewCell
        cell.imageViewPlace.image = place.image
        cell.nameLabel.text = place.name
        cell.typeLabel.text = place.type
        cell.locationLabel.text = place.location
        
        return cell
    }
}



