//
//  PlaylistModel.swift
//  YoutubeClone
//
//  Created by Mac Mini on 2022-11-09.
//

import Foundation

struct PlaylistModel: Decodable{
    let kind : String
    let etag : String
    let pageInfo :  PageInfo
    let items : [Items]
    
    struct Items : Decodable{
        let kind : String
        let etang : String
        let id : String
        let snippet : Snippet
        let contentDetails : ContentDetails
        
        struct Snippet: Decodable{
            let publishedAt : String
            let channelId : String
            let title : String
            let description : String
            let thumbnails : Thumbnails
            let channelTitle : String
            let localized : Localized
            
            struct Thumbnails : Decodable{
                let  medium : Medium
                
                struct Medium : Decodable{
                    let ulr : String
                    let width: Int
                    let height: Int
                }
            }
            
            struct Localized : Decodable{
                let title : String
                let description : String
            }
        }//Snnipets
        
        struct ContentDetails: Decodable {
            let itemCount: Int
        }
    }//Items
    
    struct PageInfo : Decodable{
        let totalResults : Int
        let resultsPerPage : Int
    }
}
