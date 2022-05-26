//
//  ContentView.swift
//  FacebookLoginPage
//
//  Created by Sévio on 26/05/22.
//

import SwiftUI

struct ContentView: View {
  
  @State var email: String = ""
  @State var senha: String = ""
  
  var body: some View {
    ZStack {
      
      Color("background").ignoresSafeArea()
      
      VStack {
        Image("logo")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 280)
        
        Spacer().frame(height: 64)
        
        VStack {
          TextField("Email", text: $email)
            .padding(.top, 24)
            .padding(.bottom, 12)
            .padding(.horizontal)
            .keyboardType(.emailAddress)
          Divider()
          SecureField("Senha", text: $senha)
            .padding(.top, 12)
            .padding(.bottom, 24)
            .padding(.horizontal)
        }.background(Color.white)
          .cornerRadius(5.0)
        
        Spacer().frame(height: 16)
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
          Text("Login")
            .font(.title3)
            .bold()
            .foregroundColor(.white)
            .padding(20)
            .frame(maxWidth: .infinity)
            .background(Color("ButtonColor"))
            .cornerRadius(5.0)
        }
        
        Spacer().frame(height: 64)
        
        VStack(spacing: 10) {
          Button(action: {}) {
            Text("Não tem uma conta?")
              .foregroundColor(.white)
              .bold()
          }
          
          Button(action: {}) {
            Text("Esqueceu sua senha?")
              .foregroundColor(Color("TextColor"))
          }
        }
        
        
        
        
      }.padding()
      
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
