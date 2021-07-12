//контент постов

import UIKit

struct ProfilePost {
    let author: String
    let description: String
    let image: String
    let likes: Int //MARK: - PLACEHOLDER
    let views: Int
}

var feed: [ProfilePost] = [
    
    ProfilePost(
        author: "Connor",
        description: "Ready to investigate",
        image: "partners.jpg",
        likes: 576,
        views: 1457
    ),
    
    ProfilePost(
        author: "Kara",
        description: "Met this nice guy today",
        image: "ralph.jpg",
        likes: 926,
        views: 6090
    ),
    
    ProfilePost(
        author: "Markus",
        description: "Let's go shopping to cyberlife store",
        image: "shopping.jpg",
        likes: 440,
        views: 2009
    ),
    
    ProfilePost(
        author: "North",
        description: "I'll take hatred over indifference",
        image: "burnt_park.jpg",
        likes: 949,
        views: 2745
    )
]

