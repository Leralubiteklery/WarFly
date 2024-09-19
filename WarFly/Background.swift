//
//  Background.swift
//  WarFly
//
//  Created by Lera Savchenko on 19.09.24.
//

import SpriteKit

class Background: SKSpriteNode {

    static func populateBackground(at point: CGPoint) -> Background {
        
        let background = Background(imageNamed: "background")
        background.position = point
        background.zPosition = 0
        
        return background
    }
}
