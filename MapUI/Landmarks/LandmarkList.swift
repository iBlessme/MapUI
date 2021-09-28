//
//  LandmarksList.swift
//  MapUI
//
//  Created by Blessme on 24.09.2021.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{landmark in
            (!showFavoriteOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView{
        List{
            Toggle(isOn: $showFavoriteOnly){
                Text("Favorites only")
            }
                ForEach(filteredLandmarks){ landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)){
            LandmarkRows(landmark: landmark)
                    }
                }
            }
        .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPod touch ((7th generation)", "iPhone 11"], id: \.self) { deviceName in
            LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(ModelData())
        }
    }
}
