//
//  ViewController.swift
//  firebase-app
//
//  Created by Juan Murillo on 4/10/17.
//  Copyright © 2017 Juan Murillo. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistList.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //getting the selected artist
        let artist  = artistList[indexPath.row]
        
        //building an alert
        let alertController = UIAlertController(title: artist.name, message: "Give new values to update ", preferredStyle: .alert)
        
        //the confirm action taking the inputs
        let confirmAction = UIAlertAction(title: "Enter", style: .default) { (_) in
            
            //getting artist id
            let id = artist.id
            
            //getting new values
            let name = alertController.textFields?[0].text
            let genre = alertController.textFields?[1].text
            
            //calling the update method to update artist
            self.updateArtist(id: id!, name: name!, genre: genre!)
        }
        
        //the cancel action doing nothing
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            //deleting artist
            self.deleteArtist(id: artist.id!)
        }
        
        //adding two textfields to alert
        alertController.addTextField { (textField) in
            textField.text = artist.name
        }
        alertController.addTextField { (textField) in
            textField.text = artist.genre
        }
        
        //adding action
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        //presenting dialog
        present(alertController, animated: true, completion: nil)
    }
    func updateArtist(id: String, name: String, genre: String){
        //creating artist with the new given values
        let artist = ["id":id,
                      "artistName": name,
                      "artistGenre": genre
        ]
        
        //updating the artist using the key of the artist
        refArtists.child(id).setValue(artist)
        
        //displaying message
        labelMessage.text = "Artist Updated"
        
    }
    func deleteArtist(id:String){
        refArtists.child(id).setValue(nil)
        
        //displaying message
        labelMessage.text = "Artist Deleted"
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableTableViewCell
        let artist: ArtistModel
        artist = artistList[indexPath.row]
        cell.labelGenre.text = artist.genre
        cell.labelName.text = artist.name
        self.view.endEditing(true)
        return cell

    }
    
    
    
    @IBOutlet weak var tableViewArtists: UITableView!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldGenre: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    //defining firebase reference var
    var refArtists: DatabaseReference!
    var artistList:[ArtistModel] = [ArtistModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirebaseApp.configure()
        refArtists = Database.database().reference().child("artists");
        refArtists.observe(DataEventType.value, with: {(snapshot) in
            if snapshot.childrenCount > 0 {
                self.artistList.removeAll()
                for artists in snapshot.children.allObjects as! [DataSnapshot]{
                    let artistObject = artists.value as? [String: AnyObject]
                    let artistName = artistObject?["artistName"]
                    let artistId =  artistObject?["id"]
                    let artistGenre = artistObject?["artistGenre"]
                    
                    let artist = ArtistModel(id: artistId as! String?, name: artistName as! String?, genre: artistGenre as! String?)
                    self.artistList.append(artist)
                    
                    
                }
                self.tableViewArtists.reloadData()
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addArtist(_ sender: Any) {
        //generating a new key inside artists node
        //and also getting the generated key
        let key = refArtists.childByAutoId().key
        
        //creating artist with the given values
        let artist = ["id":key,
                      "artistName": textFieldName.text! as String,
                      "artistGenre": textFieldGenre.text! as String
        ]
        
        //adding the artist inside the generated unique key
        refArtists.child(key).setValue(artist)
        
        //displaying message
        labelMessage.text = "Artist Added"
        textFieldName.text = ""
        textFieldGenre.text = ""
    }
    
    

}

