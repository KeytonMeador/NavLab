//
//  MovieEnum.swift
//  NavLab
//
//  Created by MEADOR, KEYTON A. on 4/15/26.
//

enum Movie: String, CaseIterable, Identifiable {
    case bolt, homeontherange, theblackcauldron, treasureplanet, meettherobinsons

    var id: String { self.rawValue }

    
    
    var symbol: String {
        switch self {
            case .bolt: return "bolt.fill"
                   case .homeontherange: return "house.fill"
                   case .theblackcauldron: return "figure.run"
                   case .treasureplanet: return "bitcoinsign.circle.fill"
                   case .meettherobinsons: return "r.circle.fill"
        }
    }

    var message: String {
        switch self {
        case .bolt: return "90% Certified Fresh"
        case .homeontherange: return "51% Rotten"
        case .theblackcauldron: return "56% Rotten"
        case .treasureplanet: return "68% Fresh"
        case .meettherobinsons: return "68% Fresh"
        }
    }
}
