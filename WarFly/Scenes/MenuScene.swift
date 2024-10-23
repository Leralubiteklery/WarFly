//
//  MenuScene.swift
//  WarFly
//
//  Created by Lera Savchenko on 15.10.24.
//

import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        if !Assets.shared.isLoaded {
            Assets.shared.preloadAssets()
            Assets.shared.isLoaded = true
        }
        self.backgroundColor = SKColor(red: 0.15, green: 0.15, blue: 0.3, alpha: 0.1)
        
        let header = SKSpriteNode(imageNamed: "header1")
        header.position = CGPoint(x: self.frame.midX, y: self.frame.midY + 150)
        self.addChild(header)
        
        let button1 = ButtonNode(titled: "play", backgroundName: "button_background")
        button1.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        button1.name = "play"
        button1.label.name = "play"
        addChild(button1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: self)
        let node = self.atPoint(location)
        
        if node.name == "play" {
            let transition = SKTransition.crossFade(withDuration: 1.0)
            let gameScene = GameScene(size: self.size)
            gameScene.scaleMode = .aspectFill
            self.scene!.view?.presentScene(gameScene, transition: transition)
        }
    }
    
}
