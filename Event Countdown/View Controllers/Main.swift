
//                                                     //
//  MainVC.swift                                       //
//  Event Countdown                                    //
//                                                     //
//  Created by Delta Vel on 3/26/19.                   //
//  Copyright © 2019 Delta Vel. All rights reserved.   //
//                                                     //

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Variables
    
    
    // MARK: UI Elements
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    // MARK: Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let src = segue.source
        let dst = segue.destination
        // Pass Data From src -> dst
    }
}
