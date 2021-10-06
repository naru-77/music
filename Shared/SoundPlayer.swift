//
//  SoundPlayer.swift
//  mymusic
//
//  Created by ナルセ　ユウキ on 2021/09/29.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    
    //シンバルプレイヤー用の変数
    var cymbalPlayer: AVAudioPlayer!
    
    //ギターの音源データの読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    //ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do{
            //シンバル用のプレイヤーに音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            //シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
//        //シンバル用のプレイヤーに音源データを指定
//        cymbalPlayer = AVAudioPlayer(data: cymbalData)
//
//        //シンバルの音源再生
//        cymbalPlayer.play()
    } //cymbalここまで
    func guitarPlay() {
        do {
            //ギター用のプレイヤーに音源ファイルを指定
            self.guitarPlayer = try AVAudioPlayer(data: self.guitarData)
            self.guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }// guitarPlayここまで
}
