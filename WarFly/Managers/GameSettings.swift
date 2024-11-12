//
//  GameSettings.swift
//  WarFly
//
//  Created by Lera Savchenko on 31.10.24.
//

import UIKit

class GameSettings: NSObject {
    
    let ud = UserDefaults.standard

    var isMusic = true
    var isSound = true
    
    let musicKey = "music"
    let soundKey = "sound"
    
    var highscores: [Int] = []
    var currentScore = 0
    let highscoreKey = "highscore"
    
    override init() {
        super.init()
        
        loadGameSettings()
        loadScores()
    }
    
    func saveScores() {
        highscores.append(currentScore)
        highscores = Array(highscores.sorted{ $0 > $1 }.prefix(3))
        
        ud.set(highscores, forKey: highscoreKey)
        ud.synchronize()
    }
    
    func loadScores() {
        guard ud.value(forKey: highscoreKey) != nil else { return }
        highscores = ud.array(forKey: highscoreKey) as! [Int]
    }
    
    func saveGameSettings() {
        ud.set(isMusic, forKey: musicKey)
        ud.set(isSound, forKey: soundKey)
    }
    
    func loadGameSettings() {
        guard ud.value(forKey: musicKey) != nil && ud.value(forKey: soundKey) != nil else { return }
        isMusic = ud.bool(forKey: musicKey)
        isSound = ud.bool(forKey: soundKey)
    }
}
