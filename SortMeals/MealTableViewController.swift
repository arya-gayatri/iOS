//
//  MealTableViewController.swift
//  SortTable
//
//  Created by Mobileware on 12/4/17.
//  Copyright © 2017 Mobileware. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    
    var meals = [Meal]()

    @IBOutlet var mealsTable: UITableView!
    //@IBOutlet weak var sortNameButton: UIBarButtonItem!
    
    @IBOutlet weak var sortButton: UIBarButtonItem!
    //@IBOutlet weak var sortRankButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMeals()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MealTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell else{
            fatalError("not instance of meal cell")
        }
        
        let meal = meals[indexPath.row]
        cell.nameLabel.text = meal.name
        cell.ratingLabel.text = "Rating: "+String(meal.rating)

        // Configure the cell...
        
    

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func loadSampleMeals(){
        
        let meal1 = Meal.init(name: "Potato Salad", rating: 3)
        let meal2 = Meal.init(name: "Pasta", rating: 5)
        let meal3 = Meal.init(name: "Burrito", rating: 2)
        let meal4 = Meal.init(name: "Chicken", rating: 1)
        let meal5 = Meal.init(name: "Rice", rating: 4)
        meals+=[meal1, meal2, meal3, meal4, meal5]
        
        }
    /*
    @IBAction func sortByName(_ sender: UIBarButtonItem) {
        
        meals = meals.sorted(by: {$0.name < $1.name})
        self.mealsTable.reloadData()
        
    }
    
    @IBAction func sortByRank(_ sender: UIBarButtonItem) {
        
        meals = meals.sorted(by: {$0.rating > $1.rating})
        self.mealsTable.reloadData()
    }
    */
    
    @IBAction func sortMeals(_ sender: UIBarButtonItem) {
        
        let optionsMenu = UIAlertController(title: nil, message: "Sort By", preferredStyle: .actionSheet)
        
        let sortByName = UIAlertAction(title: "Name", style: .default, handler: {
            (alert : UIAlertAction!) -> Void in
            self.meals = self.meals.sorted(by: {$0.name < $1.name})
            self.mealsTable.reloadData()
            
        })
        
        let sortByRank = UIAlertAction(title: "Rank", style: .default, handler: {
            (alert : UIAlertAction!) -> Void in
            self.meals = self.meals.sorted(by: {$0.rating > $1.rating})
            self.mealsTable.reloadData()
            
        })
        
        optionsMenu.addAction(sortByName)
        optionsMenu.addAction(sortByRank)
        
        self.present(optionsMenu, animated: true, completion: nil)
        
    }
    
}
