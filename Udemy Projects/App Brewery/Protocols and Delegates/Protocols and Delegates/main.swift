//
//  main.swift
//  Protocols and Delegates
//
//  Created by Daniel on 2023/01/25.
//

protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

class Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        print("Singing staying alive by the BeeGees.")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}

let steve = EmergencyCallHandler()
let Dan = Paramedic(handler: steve)
let Jas = Surgeon(handler: steve)

steve.assessSituation()
steve.medicalEmergency()
