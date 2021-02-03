//
//  ContentView.swift
//  SepedaUi
//
//  Created by MacBook on 03/02/21.
//

import SwiftUI

// Model Data
struct ProductModel: Identifiable {
    let id: Int
    let namaProduk: String
    let fotoProduk: String
    let hargaProduk: Int
    let lokasi: String
    let Rating: Int
    let jumlahRating: Int
    
    init(id: Int, namaProduk: String,fotoProduk: String, hargaProduk: Int, lokasi: String, Rating: Int, jumlahRating: Int) {
        
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi = lokasi
        self.Rating = Rating
        self.jumlahRating = jumlahRating
    }
}

struct ContentView: View {
    var body: some View {
       Product()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product: View {
    var body : some View{
        VStack(alignment: .leading){
            // foto
            ZStack(alignment:  .topTrailing){
                Image("foto1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(height: 250)
                    .clipped()
                
                Button(action: {print("liked")}) {
                    Image(systemName: "heart")
                    .padding()
                        .foregroundColor(.red)
                }
                
            }
            
            Text("Sepeda Polygon")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            Text("Rp. 12.000.000")
                .font(.title)
                .bold()
                .foregroundColor(.red)
                .padding(.leading)
                .padding(.trailing)
            HStack{
                Image(systemName: "mappin.circle")
                Text("Kabupaten Banyumas")
            }.padding(.leading)
            .padding(.trailing)
            
            HStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top, 4)
            
            Button(action: {print("ditambahkan")}){
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Add To Cart")
                            .font(.callout)
                            .padding()
                    }
                    Spacer()
                }
            }
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding()
        }
        .background(Color("warna"))
        .cornerRadius(15)
    }
}
