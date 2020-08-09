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
    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100.0, height: 100.0))
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        myFirstSpriteNode.anchorPoint = CGPoint.zero
        addChild(myFirstSpriteNode)
        
        myFirstTexturedSpriteNode.zPosition = 1
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)
        
        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width/2, y: myFirstSpriteNode.size.width/2)
        blueBox.zPosition = 2
        myFirstSpriteNode.addChild(blueBox)
        
        
        physicsWorld.gravity = CGVector(dx: -1.0, dy: -2.0)
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        myFirstTexturedSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: myFirstTexturedSpriteNode.size.width/2)
        myFirstTexturedSpriteNode.physicsBody!.allowsRotation = false
        myFirstTexturedSpriteNode.physicsBody!.restitution = 1.0
        
        blueBox.physicsBody = SKPhysicsBody(rectangleOf: blueBox.size)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
////        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0))
////        Roates half and then stops
////        blueBox.run(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0))
////        Never stops
////        if !blueBox.hasActions(){
//////            blueBox.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1.0)))
//////            blueBox.run(SKAction.group([SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1.0), SKAction.scale(by:0.7, duration: 1.0)]))
////            blueBox.run(SKAction.sequence([SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1.0), SKAction.scale(by:0.7, duration: 1.0)]))
////        } else {
////            blueBox.removeAllActions()
////        }
////
////
////        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0)){
////            self.myFirstTexturedSpriteNode.position = CGPoint.zero
////        }
//        if let _ = myFirstTexturedSpriteNode.action(forKey: "Rotation"){
//            myFirstTexturedSpriteNode.removeAction(forKey: "Rotation")
//        } else {
//            myFirstTexturedSpriteNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1.0)),withKey: "Rotation")
//        }
//
//    }
    
    
}
