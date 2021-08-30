//
//  MVController.swift
//  Demo
//
//  Created by Rajvimal Arumugam on 24/02/21.
//

import UIKit

class MVController: UIViewController {
    

    override func viewWillLayoutSubviews() {
        let width = self.view.frame.width
              let navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: width, height: 44))
              self.view.addSubview(navigationBar);
              let navigationItem = UINavigationItem(title: "Simplr")
              let doneBtn = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: nil)
              navigationItem.leftBarButtonItem = doneBtn
              navigationBar.setItems([navigationItem], animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationController?.navigationBar.barTintColor = .cyan
        self.navigationItem.title = "First VC"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
//        let screenName = "Form-Dashboard"
//        let language = "English"
//        let Access = "1"
//
//
//        readActionConfig(screenName: screenName, Access: Access)
//        readMenuConfig(screenName: screenName, language: language, Access: Access);
//        readMessageConfig(screenName: screenName, language: language)
//
//        ///Main Content goes here
//
//        GlobVariable.formconfig  =  GlobVariable.da_formConfig.getFormConfig(ScreenName: screenName, Language: language, Access: Access)
//        print("PRINT RESULTANT FormConfig \(GlobVariable.formconfig)")
//
//        GlobVariable.queryFormConfig =  GlobVariable.da_queryConfig.getQueryConfig(ScreenName: screenName + "_FORM");
//        print(GlobVariable.queryFormConfig.OrderText )
//        //List config
//
//        GlobVariable.listconfig = GlobVariable.da_ListConfig.getListConfig(ScreenName: screenName, Language: language, Access: Access)
//
        
        
    }

    func readActionConfig(screenName : String, Access : String)-> Void {
        
        GlobVariable.actionconfig  =  GlobVariable.da_actionConfig.getActionConfig(ScreenName: screenName, Access:"NULL")
           print("PRINT RESULTANT ActionConfig \(GlobVariable.actionconfig)")
             for element in GlobVariable.actionconfig {
                print("ActionConfig- FieldName\(element.FieldName)")

             }
        
        GlobVariable.actionConfigQueries = GlobVariable.da_queryConfig.getActionConfigQueries(ScreenName: screenName, Access: Access)
        
    }
    func readMenuConfig(screenName : String, language : String, Access : String)-> Void {

       
        GlobVariable.menuconfig  =  GlobVariable.da_menuConfig.getMenuConfig(ScreenName: screenName, Language: language, Access: Access)
           print("PRINT RESULTANT MenuConfig \(GlobVariable.menuconfig)")
             for element in GlobVariable.menuconfig {
                print("MenuConfig- FieldName\(element.MenuCode)")

             }

    }
    
    func readMessageConfig(screenName : String, language : String)-> Void {
        
        GlobVariable.messageconfig  =  GlobVariable.da_messageConfig.getMessageConfig(ScreenName: screenName, Language: language)
           print("PRINT RESULTANT MessageConfig \(GlobVariable.messageconfig)")
             for element in GlobVariable.messageconfig {
                print("MessageConfig- FieldName\(element.MessageText)")

             }
        
    }
        
        // Do any additional setup after loading the view.
    
//func backAction() -> Void {
//    self.navigationController?.popViewController(animated: true)
//}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
