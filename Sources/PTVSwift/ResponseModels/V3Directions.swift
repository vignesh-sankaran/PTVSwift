//
//  File.swift
//  
//
//  Created by Vignesh Sankaran on 28/11/19.
//

import Foundation

public struct V3Directions: Decodable {
    public let directions: [V3Direction]
    public let status: V3Status
}

public struct V3Direction: Decodable {
    public let routeDirectionDescription: String
    public let directionId: Int
    public let directionName: String
    public let routeId: Int
    public let routeType: Int
}
