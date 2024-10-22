//
//  Island.swift
//  WarFly
//
//  Created by Lera Savchenko on 19.09.24.
//

import SpriteKit
import GameplayKit

final class Island: SKSpriteNode, GameBackgroundSpritable {
    
    static func populate(at point: CGPoint?) -> Island {
        let islandName = configureName()
        let island = Island(imageNamed: islandName)
        island.setScale(randomScaleFactor)
        island.position = point ?? randomPoint()
        island.zPosition = 1
        island.run(rotateForRandomAngle())
        island.name = "sprite"
        island.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        island.run(move(from: island.position))
        
        return island
    }
    
    fileprivate static func configureName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randomNumber = distribution.nextInt()
        let islandName = "is" + "\(randomNumber)"
        return islandName
        
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNumber = CGFloat(distribution.nextInt()) / 10
        
        return randomNumber
    }
    
    fileprivate static func rotateForRandomAngle() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi / 180), duration: 0)
    }
    
    fileprivate static func move(from point: CGPoint) -> SKAction {
        
        let movePoint = CGPoint(x: point.x, y: -200)
        let moveDistance = point.y + 200
        let movementSpeed: CGFloat = 100.0
        let duration = moveDistance / movementSpeed
        return SKAction.move(to: movePoint, duration: duration)
    }

}
