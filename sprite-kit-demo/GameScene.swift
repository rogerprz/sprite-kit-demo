//
//  GameScene.swift
//  sprite-kit-demo
//
//  Created by Roger Perez on 7/27/20.
//  Copyright © 2020 Roger Perez. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        print("update 1")
    }
    
    override func didEvaluateActions() {
        print("did Evaluate Actions 2")
    }
    
    override func didSimulatePhysics() {
        print("did Simulate Physics: 3")
    }
    
    override func didApplyConstraints() {
        print("did Apply Constraints: 4")
    }
    
    override func didFinishUpdate() {
        print("did Finish Update: 5")
        isPaused = true
    }
    
//    let dogSpriteNode = SKSpriteNode(imageNamed: "Run0")
//    var dogFrames = [SKTexture]()
   
//    override func didMove(to view: SKView) {
//        dogSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
//        addChild(dogSpriteNode)
//        
//        let texturedAtlas = SKTextureAtlas(named: "Dog Frames")
//        
//        for index in 0..<texturedAtlas.textureNames.count {
//            let textureName = "Run" + String(index)
//            dogFrames.append(texturedAtlas.textureNamed((textureName)))
//        }
//       
//    }
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if (dogSpriteNode.hasActions()){
//            dogSpriteNode.removeAllActions()
//        } else {
//            dogSpriteNode.run(SKAction.repeatForever(SKAction.animate(with: dogFrames, timePerFrame: 0.1)))
//        }
//        
//        
//    }
    

    
    
}
