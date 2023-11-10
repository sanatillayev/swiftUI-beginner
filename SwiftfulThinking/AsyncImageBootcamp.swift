//
//  AsyncImageBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 17/08/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    /*
     case empty          -> No image is loaded.
     case success(Image) -> An image successfully loaded.
     case failure(Error) -> An image failed to load with an error.
     */
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        
        AsyncImage(url: url) // 1st type
        
        // 2nd type
        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 320)
                .cornerRadius(20)
        } placeholder: {
            ProgressView()
        }
        
        // 3rd type
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 320)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline )
            default:
                Image(systemName: "questionmark")
                    .font(.headline )
            }
        }

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
