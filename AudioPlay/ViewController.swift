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
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
         super.viewDidLoad()
                // 音楽を流し始める
                playSound(name: "Good_Morning")
            }
        }
        // 以下、コピペ
        extension ViewController: AVAudioPlayerDelegate {
            func playSound(name: String) {
                guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
                    print("音源ファイルが見つかりません")
                    return
                }
                do {
                    // AVAudioPlayerのインスタンス化
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                    // AVAudioPlayerのデリゲートをセット
                    audioPlayer.delegate = self
                    // 音声の再生
                    audioPlayer.play()
                } catch {
                }
            }
        }
