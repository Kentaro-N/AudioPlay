//
//  ViewController.swift
//  AudioPlay
//
//  Created by 西方健太郎 on 2021/02/11.
//  Copyright © 2021 idea. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    // 音楽鳴らす用のインスタンスを複数生成
    var player:AVAudioPlayer!

        
        func tapBtn() {
                if let sound = NSDataAsset(name: "Good_Morning") {
                    player = try? AVAudioPlayer(data: sound.data)
                    player?.play() // → これで音が鳴る
                }
            }
}
