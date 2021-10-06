//
//  ButtonImageView .swift
//  mymusic
//
//  Created by ナルセ　ユウキ on 2021/10/06.
//

import SwiftUI

struct ButtonImageView_: View {
    //画像ファイル名
    let imageName: String
    var body: some View {
        //画像を表示する
        Image(imageName)
            //ボタン内の画像をカラー画像となるように指定する
            .renderingMode(.original)
    }
}

struct ButtonImageView__Previews: PreviewProvider {
    static var previews: some View {
        ButtonImageView_(imageName: "cymbal")
    }
}
