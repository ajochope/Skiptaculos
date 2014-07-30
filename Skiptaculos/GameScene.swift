//
//  GameScene.swift
//  Skiptaculos
//
//  Created by Oscar Calles on 23/07/14.
//  Copyright (c) 2014 Oscar Calles. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let playButton = SKSpriteNode(imageNamed: "play")
    
    override func didMoveToView(view: SKView) {
        self.playButton.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(self.playButton)
        self.backgroundColor = UIColor(hex: 0x80D9FF)
        // voy por el minuto 12:07
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            if self.nodeAtPoint(location) == self.playButton{
                var scene = PlayScene(size: self.size)
                let skView = self.view as SKView
                skView.ignoresSiblingOrder = true
                scene.scaleMode = .ResizeFill
                scene.size = skView.bounds.size
                skView.presentScene(scene)
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
