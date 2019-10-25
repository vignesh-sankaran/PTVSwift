//
//  File.swift
//  
//
//  Created by Home on 25/10/19.
//

import Foundation

enum PTVSwiftError: Error {
    case noDevId
    case noSecurityKey
    case noQueryString
    case stringToDataConversionFailed(String)
    case conversionToURLFailed
}
