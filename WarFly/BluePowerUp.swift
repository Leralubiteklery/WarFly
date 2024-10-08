//
//  BluePowerUp.swift
//  WarFly
//
//  Created by Lera Savchenko on 10.10.24.
//

import SpriteKit

class BluePowerUp: PowerUp {
    init() {
        let textureAtlas = SKTextureAtlas(named: "BluePowerUp")
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
