//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by CHIEN on 1/3/26.
//

import SwiftUI





struct ContentView: View {
    
    @State private var imgNumbers = 1
    
    
    var body: some View {
        
        // modifier cơ bản. Xử lý hình ảnh
        
        VStack {
            
            Text("LỚP HỌC SWIFT0009")
                .foregroundStyle(.red)
                .font(.title)
                .fontWeight(.heavy)
                .opacity(0.8)
            // khám phá modifier cơ bản của text
            // sysname - icon đã có sẵn
            Image("meoden-\(imgNumbers)")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            // bươc 1 - 3- 5 hình để thay đổi
            // Tạo ra cái gì đó ví

            Button("Click Me"){
                // xử lý logic ở đây
                // Hint -- tạo biến - 0. Lúc sau click +1
                
                imgNumbers += 1
                print(imgNumbers)
                
                if imgNumbers < 4{
                    imgNumbers = 1
                }
           
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
            
            
            
            
        }
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}
// yêu cầu tạo dự án mới swiftui --> tạo xong nhắn mục chat
// 2. Github -- Liên kết được với github sau đó gửi lại đường link
// dự án hôm nay
// Bước 1. Liên kết nó trước
