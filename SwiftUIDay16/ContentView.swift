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
    @State private var seciliOgrenci = "Ayşe" // bu değer her değiştiğinde View'a bilgi vermek için @State olarak işaretleriz.
    var body: some View {
        NavigationView {
            Form{
                Picker("Öğrenci Seçiniz", selection: $seciliOgrenci) {
                    /*Picker nesnesi seçili değerin ne olduğunu selection: ($değer) ile alır. $ işareti ile bu değerin iki yönlü (two way binding) çalışacağını bildirir.
                     Yani bu değer değişirse view'e bilgi vermeliyizki değerin kullanıldığı yerler, değer değiştiğinde bundan haberdar olabilsin.
                     */
                    
                    ForEach(ogrenciler, id:\.self){ogrenci in
                        /* Veriler bir veri kaynağından (burada öğrenciler dizisinden) geliyor. Hangi değerle ilgli işlem yapmamızı ayırt etmesi için id: bizden bunu belirtmemizi istiyor. /.self diyerek dizinin elemanlarını gösteriyoruz. Benzersiz oldukları için sorun yok. Başka veri kaynağımız olduğu zaman (diyelim ki veritabanı veya json dosyası) UUID gibi benzersiz bir değer de verebilirdik. */
                        
                        HStack { // picker in içini simge ve öğrenciler dizisinin elemanlarıyla for döngüsü yardımıyla dolduruyoruz.
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
