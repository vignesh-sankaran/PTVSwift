//
// V3Disruptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct V3Disruptions: Codable {

    /** Subset of disruption information applicable to multiple route_types */
    public var general: [V3Disruption]?
    /** Subset of disruption information applicable to metropolitan train */
    public var metroTrain: [V3Disruption]?
    /** Subset of disruption information applicable to metropolitan tram */
    public var metroTram: [V3Disruption]?
    /** Subset of disruption information applicable to metropolitan bus */
    public var metroBus: [V3Disruption]?
    /** Subset of disruption information applicable to V/Line train */
    public var regionalTrain: [V3Disruption]?
    /** Subset of disruption information applicable to V/Line coach */
    public var regionalCoach: [V3Disruption]?
    /** Subset of disruption information applicable to regional bus */
    public var regionalBus: [V3Disruption]?
    /** Subset of disruption information applicable to school bus */
    public var schoolBus: [V3Disruption]?
    /** Subset of disruption information applicable to telebus services */
    public var telebus: [V3Disruption]?
    /** Subset of disruption information applicable to night bus */
    public var nightBus: [V3Disruption]?
    /** Subset of disruption information applicable to ferry */
    public var ferry: [V3Disruption]?
    /** Subset of disruption information applicable to interstate train */
    public var interstateTrain: [V3Disruption]?
    /** Subset of disruption information applicable to skybus */
    public var skybus: [V3Disruption]?
    /** Subset of disruption information applicable to taxi */
    public var taxi: [V3Disruption]?

    public init(general: [V3Disruption]?, metroTrain: [V3Disruption]?, metroTram: [V3Disruption]?, metroBus: [V3Disruption]?, regionalTrain: [V3Disruption]?, regionalCoach: [V3Disruption]?, regionalBus: [V3Disruption]?, schoolBus: [V3Disruption]?, telebus: [V3Disruption]?, nightBus: [V3Disruption]?, ferry: [V3Disruption]?, interstateTrain: [V3Disruption]?, skybus: [V3Disruption]?, taxi: [V3Disruption]?) {
        self.general = general
        self.metroTrain = metroTrain
        self.metroTram = metroTram
        self.metroBus = metroBus
        self.regionalTrain = regionalTrain
        self.regionalCoach = regionalCoach
        self.regionalBus = regionalBus
        self.schoolBus = schoolBus
        self.telebus = telebus
        self.nightBus = nightBus
        self.ferry = ferry
        self.interstateTrain = interstateTrain
        self.skybus = skybus
        self.taxi = taxi
    }

    public enum CodingKeys: String, CodingKey { 
        case general
        case metroTrain = "metro_train"
        case metroTram = "metro_tram"
        case metroBus = "metro_bus"
        case regionalTrain = "regional_train"
        case regionalCoach = "regional_coach"
        case regionalBus = "regional_bus"
        case schoolBus = "school_bus"
        case telebus
        case nightBus = "night_bus"
        case ferry
        case interstateTrain = "interstate_train"
        case skybus
        case taxi
    }


}

