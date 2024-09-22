//
//  Island.swift
//  WarFly
//
//  Created by Lera Savchenko on 19.09.24.
//

import SpriteKit
import GameplayKit

final class Island: SKSpriteNode, GameBackgroundSpritable {
    
    static func populateSprite(at point: CGPoint) -> Island {
        let islandName = configureName()
        let island = Island(imageNamed: islandName)
        island.setScale(randomScaleFactor)
        island.position = point
        island.zPosition = 1
        island.run(rotateForRandomAngle())
        
        return island
    }
    
    static func configureName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randomNumber = distribution.nextInt()
        let islandName = "is" + "\(randomNumber)"
        return islandName
        
    }
    
    static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNumber = CGFloat(distribution.nextInt()) / 10
        
        return randomNumber
    }
    
    static func rotateForRandomAngle() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi / 180), duration: 0)
    }

}
