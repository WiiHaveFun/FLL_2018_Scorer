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
        case No
        case Partially
        case Completely
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
    var isM05_01Done = false
    var isM05_02Done = false
    var isM05_03Done = false
    var isM05_04Done = false
    var M05_01Score = 0
    var M05_02Score = 0
    var M05_03Score = 0
    var M05_04Score = 0
    
    //M06 - Space Station Modules: 0
    var M06_01Score = 0
    var M06_02Score = 0
    var M06_03Score = 0
    
    //M07 - Space Walk Emergency
    var M07_01Status = Position.No
    var M07_01Score = 0
    
    //M08 - Aerobic Exercise
    var isM08_01Done = false
    var isM08_02Done = false
    var isM08_03Done = false
    var M08_01Score = 0
    var M08_02Score = 0
    var M08_03Score = 0
    
    //M09 - Strength Exercise
    var isM09_01Done = false
    var M09_01Score = 0
    
    //M10 - Food Production
    var isM10_01Done = false
    var M10_01Score = 0
    
    //M11 - Escape Velocity
    var isM11_01Done = false
    var M11_01Score = 0
    
    //M12 - Satellite Orbits
    var M12_01NumberOfSatellites = 0
    var M12_01Score = 0
    
    //M13 - Observatory
    var isM13_01Done = false
    var isM13_02Done = false
    var isM13_03Done = false
    var M13_01Score = 0
    var M13_02Score = 0
    var M13_03Score = 0
    
    //M14 - Meteoroid Deflection
    var M14MeteoroidsInCenter = 0
    var M14MeteoroidsInSide = 0
    var M14MeteoroidsInCenterScore = 0
    var M14MeteoroidsInSideScore = 0
    
    //M15 - Lander Touch-Down
    var isM15_01Done = false
    var isM15_02Done = false
    var isM15_03Done = false
    var M15_01Score = 0
    var M15_02Score = 0
    var M15_03Score = 0
    
    //P01 - Penalty
    let deductionsPerPenalty = -3
    var numberOfPenalties = 0
    var penaltiesScore = 0
    
    func calculatePenalties(by penalties: Int) -> Int {
        return deductionsPerPenalty * penalties
    }
    
    mutating func calculateTotalScore() {
        totalScore = M01_01Score + M01_02Score + M01_03Score + M02_01Score + M02_02Score + M03_01Score + M03_02Score + M04_01Score + M05_01Score + M05_02Score + M05_03Score + M05_04Score + M06_01Score + M06_02Score + M06_03Score + M07_01Score + M08_01Score + M08_02Score + M08_03Score + M09_01Score + M10_01Score + M11_01Score + M12_01Score + M13_01Score + M13_02Score + M13_03Score + M14MeteoroidsInSideScore + M14MeteoroidsInCenterScore + M15_01Score + M15_02Score + M15_03Score + calculatePenalties(by: numberOfPenalties)
    }
    
    mutating func getTotalScore() -> Int {
        calculateTotalScore()
        return totalScore
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
}

