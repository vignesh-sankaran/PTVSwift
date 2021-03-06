//
//  File.swift
//  
//
//  Created by Home on 25/10/19.
//

import Foundation

public enum PTVSwiftError: Error {
    case noDevId
    case noSecurityKey
    case noQueryString
    case signURLError
    case stringToDataConversionFailed(String)
    case conversionToURLError
    case clientError(Error)
    case requestError(statusCode: Int)
    case decodeResponseModelError(Error)
}
