//
//  ContentView.swift
//  LeftDrawerTest
//
//  Created by Mahmudur Rahman on 1/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
            
            Color.white
            
            SlideMenu()
        }
    }
}


struct SlideMenu: View{
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View{
        HStack(spacing: 0){
            VStack(alignment: .leading){
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .clipShape(Circle())
                HStack(alignment: .top, spacing: 12){
                    VStack(alignment: .leading, spacing: 12){
                        Text("Kavsoft")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("@_OctaEdge")
                            .foregroundColor(.gray)
                        
                        //Follow Counts ...
                        HStack(spacing: 20){
                            FollowView(count: 8, title: "Following")
                                .onTapGesture {
                                    
                                }
                            
                            FollowView(count: 108, title: "Following")
                                .onTapGesture {
                                    // do something here ...
                                }
                        }
                        .padding(.top, 10)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}){
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color("twitter"))
                    }
                }
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 20)
            .padding(.top, edges!.top == 0 ? 15 : edges?.top)
            .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
            //default width ...
            .frame(width: UIScreen.main.bounds.width - 90)
            .background(Color.white)
            .ignoresSafeArea(.all, edges: .vertical)
            
            Spacer(minLength: 0)
        }
        .background(Color.black.opacity(0.5)).ignoresSafeArea(.all, edges: .vertical)
    }
}


struct FollowView: View {
    
    var count: Int
    var title: String
    
    var body: some View{
        HStack{
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}
