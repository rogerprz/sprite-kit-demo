//
//  GameScene.swift
//  sprite-kit-demo
//
//  Created by Roger Perez on 7/27/20.
//  Copyright © 2020 Roger Perez. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
    let blueSpriteNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100.0, height: 100.0))
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        myFirstSpriteNode.anchorPoint = CGPoint.zero
        addChild(myFirstSpriteNode)
        
        myFirstTexturedSpriteNode.zPosition = 1
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)
        
        blueSpriteNode.position = CGPoint(x: myFirstSpriteNode.size.width/2, y: myFirstSpriteNode.size.width/2)
        blueSpriteNode.zPosition = 2
        myFirstSpriteNode.addChild(blueSpriteNode)
    }
}
