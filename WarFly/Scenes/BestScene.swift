//
//  BestScene.swift
//  WarFly
//
//  Created by Lera Savchenko on 28.10.24.
//

import SpriteKit

class BestScene: ParentScene {
    
    override func didMove(to view: SKView) {
        
        setHeader(withName: "best score", andBackground: "header_background")
        
        let bestScore = ButtonNode(titled: nil, backgroundName: "scores")
        bestScore.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        bestScore.name = "best score"
        bestScore.label.name = "best score"
        addChild(bestScore)
        
        let back = ButtonNode(titled: "back", backgroundName: "button_background")
        back.position = CGPoint(x: self.frame.midX, y: self.frame.midY - 100)
        back.name = "back"
        back.label.name = "back"
        addChild(back)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: self)
        let node = self.atPoint(location)
        
        if node.name == "back" {
            let transition = SKTransition.crossFade(withDuration: 1.0)
            guard let backScene = backScene else { return }
            backScene.scaleMode = .aspectFill
            self.scene!.view?.presentScene(backScene, transition: transition)
        }
    }

}
