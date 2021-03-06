//
//  MainWindowController.swift
//  Thor
//
//  Created by AlvinZhu on 4/20/16.
//  Copyright © 2016 AlvinZhu. All rights reserved.
//

import Cocoa

class MainWindowController: TOLWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        window?.contentView?.layer?.masksToBounds = true
        
        let appItem = TitleViewItem(itemIdentifier: appsTitleItemIdentifier.rawValue)
        appItem.activeImage = NSImage(named: NSImage.Name(rawValue: "AppStore-active"))
        appItem.inactiveImage = NSImage(named: NSImage.Name(rawValue: "AppStore"))
        
        let settingsItem = TitleViewItem(itemIdentifier: settingsTitleItemIdentifier.rawValue)
        settingsItem.activeImage = NSImage(named: NSImage.Name(rawValue: "Settings-active"))
        settingsItem.inactiveImage = NSImage(named: NSImage.Name(rawValue: "Settings"))
        
        let shortcutListViewController = storyboard!.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: ShortcutListViewController.classString)) as! ShortcutListViewController
        insert(appItem, viewController: shortcutListViewController)
        
        let settingsViewController = storyboard!.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: SettingsViewController.classString)) as! SettingsViewController
        insert(settingsItem, viewController: settingsViewController)
    }

}
