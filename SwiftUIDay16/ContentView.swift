//
//  ContentView.swift
//  SwiftUIDay16
//
//  Created by Fatih Durmaz on 12.01.2023.
//  #100DaysofSwiftUI 
//

import SwiftUI

struct ContentView: View {
    
    let ogrenciler = ["Ali", "Ayşe", "Ahmet"]
    @State private var seciliOgrenci = "Harry"
    var body: some View {
        NavigationView {
            Form{
                    Picker("Öğrenci Seçiniz", selection: $seciliOgrenci) {
                        ForEach(ogrenciler, id:\.self){ogrenci in
                            HStack {
                                Text(ogrenci)
                                Image(systemName: "person")
                            }
                        }
                    }
            }
            .navigationTitle("Picker, Form ve Two-Way Binding")
            .navigationBarTitleDisplayMode(.inline)
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
