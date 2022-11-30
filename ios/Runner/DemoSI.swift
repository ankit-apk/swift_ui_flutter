//
//  DemoSI.swift
//  Runner
//
//  Created by Ankit Srivastava on 30/11/22.
//

import UIKit
import SwiftUI

class DemoSI:UIHostingController<MySwiftUIView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: MySwiftUIView())
    }
}
struct MySwiftUIView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Image("Banana").resizable().frame(width: 100, height: 80).padding(.bottom, 15)
                Text("Organic Bananas").font(.system(size: 15, weight: .bold)).lineLimit(1).padding(.bottom, 1)
                Text("12 pcs").font(.system(size: 13, weight: .semibold)).lineLimit(1).foregroundColor(.black.opacity(0.5)).padding(.bottom, 20)
                HStack {
                    Text("$4.99").font(.system(size: 17, weight: .bold)).lineLimit(1)
                    Spacer().frame(width: geo.size.width * 0.14)
                    if #available(iOS 15.0, *) {
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)).foregroundColor(Color("AccentColor")).frame(width: 45, height: 45).overlay {
                            Image(systemName: "plus").foregroundColor(.white).font(.system(size: 20, weight: .bold))
                        }
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }.padding(20).overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.black.opacity(0.1), lineWidth: 2)
        ).padding(10)
        }
    }
}
