//
//  GlobalVariables.swift
//  Demo
//
//  Created by Rajvimal Arumugam on 24/02/21.
//

import Foundation

struct GlobalVariables {
    
    static var da_formConfig: DA_FormConfig = DA_FormConfig()
    static var da_ListConfig: DA_ListConfig = DA_ListConfig()
    static var  da_queryConfig: DA_QueryConfig = DA_QueryConfig()
    static var da_actionConfig: DA_ActionConfig = DA_ActionConfig()
    static var  da_menuConfig: DA_MenuConfig = DA_MenuConfig()
    static var da_messageConfig: DA_MessageConfig = DA_MessageConfig()
    
    
    static var agent: Array<BE_Agent> = Array<BE_Agent>()
    static var actionconfig: Array<BE_ActionConfig> = Array<BE_ActionConfig>()
    static var messageconfig: Array<BE_MessageConfig> = Array<BE_MessageConfig>()
    static var menuconfig: Array<BE_MenuConfig> = Array<BE_MenuConfig>()
    static var formconfig: Array<BE_FormConfig> = Array<BE_FormConfig>()
    static var listconfig: Array<BE_ListConfig> = Array<BE_ListConfig>()
    static var actionConfigQueries:Array<BE_QueryConfig> = Array<BE_QueryConfig>()
    static var queryFormConfig: BE_QueryConfig = BE_QueryConfig()
    static var defaults = UserDefaults.standard
    
}
