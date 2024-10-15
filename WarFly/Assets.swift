//
//  Assets.swift
//  WarFly
//
//  Created by Lera Savchenko on 14.10.24.
//

import SpriteKit

class Assets {
    
    static let shared = Assets()
    let yellowAmmoAtlas = SKTextureAtlas(named: "YellowAmmo")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    
    func preloadAssets() {
        yellowAmmoAtlas.preload { print("yellowAmmoAtlas preloaded")}
        bluePowerUpAtlas.preload { print("bluePowerUpAtlas preloaded")}
        greenPowerUpAtlas.preload { print("greenPowerUpAtlas preloaded")}
        playerPlaneAtlas.preload { print("playerPlaneAtlas preloaded")}
        enemy_2Atlas.preload { print("enemy_2Atlas preloaded")}
        enemy_1Atlas.preload { print("enemy_1Atlas preloaded")}
    }
}
