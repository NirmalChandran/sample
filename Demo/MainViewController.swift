//
//  SecondViewController.swift
//  Demo
//
//  Created by Rajvimal Arumugam on 22/02/21.
//

import UIKit
import MaterialComponents

class SecondViewController: UIViewController {

    
    /// Reference for Toolbar.
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavBar()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     
     
     
     
    */
    /// Prepares the toolbar
    private func prepareToolbar() {
       
        self.navigationController?.isToolbarHidden = false

        var items = [UIBarButtonItem]()

        items.append( UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil) )
       // items.append( UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add)) ) // replace add with your function

        self.toolbarItems = items // this made the difference. setting the items to the controller, not the navigationcontroller
        
        
        
    }
    func setUpNavBar(){
        //For title in navigation bar
        self.navigationController?.view.backgroundColor = UIColor.white
        self.navigationController?.view.tintColor = UIColor.orange
        self.navigationItem.title = "Simplr"

        //For back button in navigation bar
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }

}
