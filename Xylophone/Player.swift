//
//  Player.swift
//  Xylophone
//
//  Created by Eduardo Ribeiro da Silva on 27/06/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
import AVFoundation

class Player {
    
    var player: AVAudioPlayer?
    
    func play(_ filename: String, withExtension: String = "wav") {
        let url = Bundle.main.url(forResource: "\(filename)", withExtension: withExtension)!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            //player.prepareToPlay()
            player.play()
        } catch {
            print(error)
        }
    }
}
