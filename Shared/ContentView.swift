//
//  ContentView.swift
//  Shared
//
//  Created by ナルセ　ユウキ on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            //背景画像
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            HStack {
                Button(action: {
                    //ボタン押した時の反応
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                }){
                    //画像を表示する
                    ButtonImageView_(imageName: "cymbal")
                } //シンバルボタンここまで
                
                Button(action: {
                    //ボタン押した時の反応
                    //ギターの音を鳴らす
                    soundPlayer.guitarPlay()
                }){
                    ButtonImageView_(imageName: "guitar")
                } //ギターボタンここまで
            } //HStack
        } //ZStack
    } //body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
