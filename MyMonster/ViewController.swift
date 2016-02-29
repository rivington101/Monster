//
//  ViewController.swift
//  MyMonster
//
//  Created by Peter Rule on 25/02/2016.
//  Copyright © 2016 Peter Rule. All rights reserved.
//
// Learnt
// Size classes
// moving stacks depending on portrait or landscape
// making a stack horiz in portrait & vertical in landscape
// moving objects around screen

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImg.droptarget = monsterImg
        heartImg.droptarget = monsterImg
        
        //NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter", name: "onTargetDropped", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter", name: "onTargetDropped", object: nil)
            }

    func itemDroppedOnCharacter(notif: AnyObject) {
        print("ITEM DROPPED ON CHARACTER")
    }


}

