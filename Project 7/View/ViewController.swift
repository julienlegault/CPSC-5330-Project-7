//
//  ViewController.swift
//  Project 7
//
//  Created by Julien on 2/15/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cards = [
        Card("Lightning Bolt", "R", "Deal 3 damage to any target"),
        Card("Lava Spike", "R", "Deal 3 damage to target player"),
        Card("Skullcrack", "1R", "Players can't gain life this turn. Damage can't be prevented this turn. Skullcrack deals 3 damage to target player or planeswalker"),
        Card("Skewer the Critics", "2R", "Spectacle - R. Skewer the Critics deals 3 damage to any target"),
        Card("Rift Bolt", "2R", "Rift Bolt deals 3 damage to any target. Suspend 1 - R"),
        Card("Shard Volley", "R", "As an additional cost to play Shard Volley, sacrifice a land. Shard Volley deals 3 damage to target creature or player"),
        Card("Searing Blaze", "RR", "Searing Blaze deals 1 damage to target player and 1 damage to target creature that player controls. Landfall - If you had a land enter the battlefield under your control this turn, Searing Blaze deals 3 damage to that player and 3 damage to that creature instead"),
        Card("Searing Blood", "RR", "Searing Blood deals 2 damage to target creature. When that creature dies this turn, Searing Blood deals 3 damage to the creature's controller"),
        Card("Smash to Smithereens", "1R", "Destroy target artifact. Smash to Smithereens deals 3 damage to that artifact's controller"),
        Card("Flame Rift", "1R", "Flame Rift deals 4 damage to each player")
    ]
    var clickedCardText = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = cards[indexPath.row].name
        content.secondaryText = cards[indexPath.row].cost
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedCardText = cards[indexPath.row].text
        
        self.performSegue(withIdentifier: "toDetails", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toDetails" {
            let navigation = segue.destination as! CardTextView
            navigation.cardText = clickedCardText
        }
    }


}

