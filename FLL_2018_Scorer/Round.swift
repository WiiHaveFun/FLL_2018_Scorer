//
//  Round.swift
//  FLL 2018 Scorer
//
//  Created by Michael Chen on 10/7/18.
//  Copyright © 2018 Michael Chen. All rights reserved.
//

import Foundation

struct Round {
    
    let constants = Constants()
    
    private var totalScore = 0
    
    enum Position {
        case no
        case partially
        case completely
    }
    
    enum Color {
        case none
        case gray
        case white
        case orange
    }
    
    enum LanderPosition {
        case none
        case base
        case northeastPlanetArea
        case targetCircle
    }
    
    //M01 - Space Travel
    var isM01_01Done = false {
        didSet {
            if isM01_01Done == true {
                M01_01Score = constants.M01_01Score
            } else {
                M01_01Score = 0
            }
        }
    }
    var isM01_02Done = false {
        didSet {
            if isM01_02Done == true {
                M01_02Score = constants.M01_02Score
            } else {
                M01_02Score = 0
            }
        }
    }
    var isM01_03Done = false {
        didSet {
            if isM01_03Done == true {
                M01_03Score = constants.M01_03Score
            } else {
                M01_03Score = 0
            }
        }
    }
    var M01_01Score = 0
    var M01_02Score = 0
    var M01_03Score = 0
    
    
    
    //M02 - Solar Panel Array
    var isM02_01Done = false {
        didSet {
            if isM02_01Done == true {
                M02_01Score = constants.M02_01Score
            } else {
                M02_01Score = 0
            }
        }
    }
    var isM02_02Done = false {
        didSet {
            if isM02_02Done == true {
                M02_02Score = constants.M02_02Score
            } else {
                M02_02Score = 0
            }
        }
    }
    var M02_01Score = 0
    var M02_02Score = 0
    
    //M03 - 3D Printing
    var isM03_01Done = false {
        didSet {
            if isM03_01Done == true {
                if isM03_02Done == false {
                M03_01Score = constants.M03_01Score
                isM03_02Done = false
                } else if isM03_02Done == true {
                    M03_02Score = constants.M03_02Score
                    M03_01Score = 0
                }
            } else {
                M03_01Score = 0
            }
        }
    }
    var isM03_02Done = false {
        didSet {
            if (isM03_02Done == true) && (isM03_01Done == true) {
                M03_02Score = constants.M03_02Score
                M03_01Score = 0
            } else if isM03_01Done == true {
                M03_01Score = constants.M03_01Score
                M03_02Score = 0
            } else {
                M03_02Score = 0
            }
        }
    }
    var M03_01Score = 0
    var M03_02Score = 0
    
    //M04 - Crater Crossing
    var isM04_01Done = false {
        didSet {
            if isM04_01Done == true {
                if isM04_02Done == true {
                    M04_01Score = constants.M04_01Score
                }
            } else {
                M04_01Score = 0
            }
        }
    }
    var isM04_02Done = false {
        didSet {
            if isM04_02Done == true {
                if isM04_01Done == true {
                    M04_01Score = constants.M04_01Score
                }
            } else {
                M04_01Score = 0
            }
        }
    }
    var M04_01Score = 0
    
    //M05 - Extraction
    var isM05_01Done = false {
        didSet {
            if isM05_01Done == true {
                M05_01Score = constants.M05_01Score
            } else {
                M05_01Score = 0
            }
        }
    }
    var isM05_02Done = false {
        didSet {
            if isM05_02Done == true {
                M05_02Score = constants.M05_02Score
                isM05_03Done = false
            } else {
                M05_02Score = 0
            }
        }
    }
    var isM05_03Done = false {
        didSet {
            if isM05_03Done == true {
                M05_03Score = constants.M05_03Score
                isM05_02Done = false
            } else {
                M05_03Score = 0
            }
        }
    }
    var isM05_04Done = false {
        didSet {
            if isM05_04Done == true {
                M05_04Score = constants.M05_04Score
            } else {
                M05_04Score = 0
            }
        }
    }
    var M05_01Score = 0
    var M05_02Score = 0
    var M05_03Score = 0
    var M05_04Score = 0
    
    //M06 - Space Station Modules
    var isM06_01Done = false {
        didSet {
            if isM06_01Done == true {
                M06_01Score = constants.M06_01Score
            } else {
                M06_01Score = 0
            }
        }
    }
    var isM06_02Done = false {
        didSet {
            if isM06_02Done == true {
                M06_02Score = constants.M06_02Score
            } else {
                M06_02Score = 0
            }
        }
    }
    var isM06_03Done = false {
        didSet {
            if isM06_03Done == true {
                M06_03Score = constants.M06_03Score
            } else {
                M06_03Score = 0
            }
        }
    }
    var M06_01Score = 0
    var M06_02Score = 0
    var M06_03Score = 0
    
    //M07 - Space Walk Emergency
    var M07_01Status = Position.no {
        didSet {
            if M07_01Status == Position.partially {
                M07_01Score = constants.M07PartiallyScore
            } else if M07_01Status == Position.completely {
                M07_01Score = constants.M07CompletelyScore
            } else {
                M07_01Score = 0
            }
        }
    }
    var M07_01Score = 0
    
    //M08 - Aerobic Exercise
    var M08_01Status = Color.none {
        didSet {
            if M08_01Status == Color.gray {
                M08_01Score = constants.M08GrayScore
            } else if M08_01Status == Color.white {
                M08_01Score = constants.M08WhiteScore
            } else if M08_01Status == Color.orange {
                M08_01Score = constants.M08OrangeScore
            } else {
                M08_01Score = 0
            }
        }
    }
    var M08_01Score = 0
    
    //M09 - Strength Exercise
    var isM09_01Done = false {
        didSet {
            if isM09_01Done == true {
                M09_01Score = constants.M09_01Score
            } else {
                M09_01Score = 0
            }
        }
    }
    var M09_01Score = 0
    
    //M10 - Food Production
    var isM10_01Done = false {
        didSet {
            if isM10_01Done == true {
                M10_01Score = constants.M10_01Score
            } else {
                M10_01Score = 0
            }
        }
    }
    var M10_01Score = 0
    
    //M11 - Escape Velocity
    var isM11_01Done = false {
        didSet {
            if isM11_01Done == true {
                M11_01Score = constants.M11_01Score
            } else {
                M11_01Score = 0
            }
        }
    }
    var M11_01Score = 0
    
    //M12 - Satellite Orbits
    var M12_01NumberOfSatellites = 0 {
        didSet {
            if M12_01NumberOfSatellites == 1 {
                M12_01Score = constants.M12OneSatelliteScore
            } else if M12_01NumberOfSatellites == 2 {
                M12_01Score = constants.M12TwoSatelliteScore
            } else if M12_01NumberOfSatellites == 3 {
                M12_01Score = constants.M12ThreeSatelliteScore
            } else {
                M12_01Score = 0
            }
        }
    }
    var M12_01Score = 0
    
    //M13 - Observatory
    var M13_01Status = Color.none {
        didSet {
            if M13_01Status == Color.gray {
                M13_01Score = constants.M13GrayScore
            } else if M13_01Status == Color.white {
                M13_01Score = constants.M13WhiteScore
            } else if M13_01Status == Color.orange {
                M13_01Score = constants.M13OrangeScore
            } else {
                M13_01Score = 0
            }
        }
    }
    var M13_01Score = 0
    
    //M14 - Meteoroid Deflection
    var M14MeteoroidsInCenter = 0 {
        didSet {
            if M14MeteoroidsInCenter == 1 {
                M14MeteoroidsInCenterScore = constants.M14InCenterScorePerMeteor
            } else if M14MeteoroidsInCenter == 2 {
                M14MeteoroidsInCenterScore = constants.M14InCenterScorePerMeteor * 2
            } else {
                M14MeteoroidsInCenterScore = 0
            }
        }
    }
    var M14MeteoroidsInSide = 1 {
        didSet {
            if M14MeteoroidsInSide == 1 {
                M14MeteoroidsInSideScore = constants.M14InSideScorePerMeteor
            } else if M14MeteoroidsInSide == 2 {
                M14MeteoroidsInSideScore = constants.M14InSideScorePerMeteor * 2
            } else {
                M14MeteoroidsInSideScore = 0
            }
        }
    }
    var M14MeteoroidsInCenterScore = 0
    var M14MeteoroidsInSideScore = 0
    
    //M15 - Lander Touch-Down
    var isM15_01Done = false {
        didSet {
            if M15_02Status == LanderPosition.base {
                M15_02Score = constants.M15InBase
            } else if (M15_02Status == LanderPosition.northeastPlanetArea) && (isM15_01Done == true) {
                M15_02Score = constants.M15InNortheastPlanetArea
            } else if (M15_02Status == LanderPosition.targetCircle) && (isM15_01Done == true) {
                M15_02Score = constants.M15InTargetCircle
            } else {
                M15_02Score = 0
            }
        }
    }
    var M15_02Status = LanderPosition.none {
        didSet {
            if M15_02Status == LanderPosition.base {
                M15_02Score = constants.M15InBase
            } else if (M15_02Status == LanderPosition.northeastPlanetArea) && (isM15_01Done == true) {
                M15_02Score = constants.M15InNortheastPlanetArea
            } else if (M15_02Status == LanderPosition.targetCircle) && (isM15_01Done == true) {
                M15_02Score = constants.M15InTargetCircle
            } else {
                M15_02Score = 0
            }
        }
    }
    var M15_02Score = 0
    
    //P01 - Penalties
    let deductionsPerPenalty = -3
    var numberOfPenalties = 0 {
        didSet {
            penaltiesScore = calculatePenalties(by: numberOfPenalties)
        }
    }
    var penaltiesScore = 0
    
    func calculatePenalties(by penalties: Int) -> Int {
        return deductionsPerPenalty * penalties
    }
    
    mutating func calculateTotalScore() {
        totalScore = M01_01Score + M01_02Score + M01_03Score + M02_01Score + M02_02Score + M03_01Score + M03_02Score + M04_01Score + M05_01Score + M05_02Score + M05_03Score + M05_04Score + M06_01Score + M06_02Score + M06_03Score + M07_01Score + M08_01Score + M09_01Score + M10_01Score + M11_01Score + M12_01Score + M13_01Score + M14MeteoroidsInSideScore + M14MeteoroidsInCenterScore + M15_02Score
            + calculatePenalties(by: numberOfPenalties)
    }
    
    mutating func getTotalScore() -> Int {
        calculateTotalScore()
        return totalScore
    }
    
    mutating func reset() {
        M01_01Score = 0
        M01_02Score = 0
        M01_03Score = 0
        
        M02_01Score = 0
        M02_02Score = 0
        
        M03_01Score = 0
        M03_02Score = 0
        
        M04_01Score = 0
        
        M05_01Score = 0
        
        M05_02Score = 0
        
        M05_03Score = 0
        
        M05_04Score = 0
        
        M06_01Score = 0
        M06_02Score = 0
        M06_03Score = 0
        
        M07_01Score = 0
        
        M08_01Score = 0
        
        M09_01Score = 0
        
        M10_01Score = 0
        
        M11_01Score = 0
        
        M12_01Score = 0
        
        M13_01Score = 0
        
        M14MeteoroidsInSideScore = 0
        M14MeteoroidsInCenterScore = 0
        
        M15_02Score = 0
        
        penaltiesScore = 0
    }
}

struct Constants {
    let M01_01Score = 22
    let M01_02Score = 14
    let M01_03Score = 10
    
    let M02_01Score = 22
    let M02_02Score = 18
    
    let M03_01Score = 18
    let M03_02Score = 22
    
    let M04_01Score = 20
    
    let M05_01Score = 16
    let M05_02Score = 12
    let M05_03Score = 10
    let M05_04Score = 8
    
    let M06_01Score = 16
    let M06_02Score = 16
    let M06_03Score = 14
    
    let M07PartiallyScore = 18
    let M07CompletelyScore = 22
    
    let M08GrayScore = 18
    let M08WhiteScore = 20
    let M08OrangeScore = 22
    
    let M09_01Score = 16
    
    let M10_01Score = 16
    
    let M11_01Score = 24
    
    let M12OneSatelliteScore = 8
    let M12TwoSatelliteScore = 16
    let M12ThreeSatelliteScore = 24
    
    let M13GrayScore = 16
    let M13WhiteScore = 18
    let M13OrangeScore = 20
    
    let M14InCenterScorePerMeteor = 12
    let M14InSideScorePerMeteor = 8
    
    let M15InBase = 16
    let M15InNortheastPlanetArea = 20
    let M15InTargetCircle = 22
}

