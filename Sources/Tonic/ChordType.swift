// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/Tonic/

import Foundation

/// Chord type as defined by a set of intervals from a root note class
/// We use abreviated descriptions with extensions seperated by underscores
/// We don't like usiing underscores for enum cases any more than you do, however is a nice visual speration of extensions
public enum ChordType: String, CaseIterable, Codable {

	//MARK: - Triads
    /// Major Triad: Major Third, Perfect Fifth, e.g. `C`
    case major

    /// Minor Triad: Minor Third, Perfect Fifth, e.g. `Cm`
    case minor

    /// Diminished Triad: Minor Third, Diminished Fifth, e.g. `C°`
    case dim

    /// Major Flat Five Triad: Major Third, Diminished Fifth, e.g. `C♭5`
    case flat5

    /// Augmented Triad: Major Third, Augmented Fifth, e.g. `C⁺`
    case aug

    /// Suspended 2 Triad: Major Second, Perfect Fifth, e.g. `Csus2`
    case sus2

    /// Suspended 4 Triad: Perfect Fourth, Perfect Fifth, e.g. `Csus4`
    case sus4

	//MARK: - Sixths
    /// Major Sixth: Major Third, Perfect Fifth, Major Sixth, e.g. `C6`
    case maj6

    /// Minor Sixth: Minor Third, Perfect Fifth, Major Sixth, e.g. `Cm6`
    case min6

    /// Suspended 2nd Add Thirteen: Major Second, Perfect Fifth, Major Thirteenth, e.g. `Csus2(add13)`
    case sus2_add13

    /// Suspended 4th Add Thirteen: Major Fourth, Perfect Fifth, Major Sixth, e.g. `Csus4(add13)`
    case sus4_add13
    
    /// Suspended 2nd Add Flat Thirteen: Major Second, Perfect Fifth, Minor Thirteenth, e.g. `Csus2(add♭13)`
    case sus2_addFlat13

    /// Suspended 4th Add Flat Thirteen: Major Second, Perfect Fifth, Minor Thirteenth, e.g. `Csus4(add♭13)`
    case sus4_addFlat13
	
	//MARK: - Sevenths
	/// Major Seventh: Major Third, Perfect Fifth, Major Seventh, e.g. `Cmaj7`
	case maj7
	
	/// Dominant Seventh: Major Third, Perfect Fifth, Minor Seventh, e.g. `C7`
	case dom7

	/// Minor Seventh: Minor Third, Perfect Fifth, Minor Seventh, e.g. `Cmin7`
	case min7

    /// Half Diminished Seventh: Minor Third, Diminished Fifth, Minor Seventh, e.g. `Cø7`
    case halfDim7

    /// Diminished Seventh: Minor Third, Diminished Fifth, Minor Seventh, e.g. `C°7`
    case dim7

    /// Dominant Seventh Suspendend Second: Major Second, Perfect Fifth, Minor Seventh, e.g. `C7sus2`
    case dom7_sus2

    /// Dominant Seventh Suspendend Fourth: Perfect Fourth, Perfect Fifth, Minor Seventh, e.g. `C7sus4`
    case dom7_sus4
	
	/// Major Seventh Sharp Five: Major Third, Augmented Fifth, Major Seventh, e.g. `CMaj7(#5)`
	case maj7_sharp5

    /// Minor Major Seventh: Minor Third, Perfect Fifth, Major Seventh, e.g. `CmMaj7`
    case min_maj7
	
	/// Major Seventh Flat Five: Major Third, Diminished Fifth, Major Seventh, e.g. `Cmaj7(♭5)`
	case maj7_flat5
	
	/// Dominant Seventh Flat Five: Major Third, Diminished Fifth, Minor Seventh, e.g. `C7(♭5)`
	case dom7_flat5

	/// Dominant Sharp Five: Major Third, Augmented Fifth, Minor Seventh, e.g. `C7(♯5)`
	case dom7_sharp5

	//MARK: - Ninths
	/// Major Ninth: Major Third, Perfect Fifth, Major Seventh, Major Ninth, e.g. `Cmaj9`
	case majorNinth
	
	/// Dominant Ninth: Major Third, Perfect Fifth, Minor Seventh, Major Ninth, e.g. `C9`
	case dominantNinth
	
	/// Minor Ninth: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, e.g. `Cmin9`
	case minorNinth
	
    /// Half Diminished Flat Ninth: Minor Third, Diminished Fifth, Minor Seventh, Minor Ninth, e.g. `Cø♭9`
    case halfDiminishedFlatNinth
	
	/// Diminished Ninth: Minor Third, Diminished Fifth, Minor Seventh, Minor Ninth, e.g. `C°♭9`
	case diminishedFlatNinth

    /// Dominant Ninth Suspended Fourth: Perfect Fourth, Perfect Fifth, Major Ninth (Major Second), e.g. `C9sus4`
    case dominantNinthSuspendedFourth

    /// Flat Ninth: Major Third, Perfect Fifth, Minor Seventh, Minor Ninth, e.g. `C7♭9`
    case dominantFlatNinth

    /// Sharp Ninth: Major Third, Perfect Fifth, Minor Seventh, Augmented Ninth, e.g. `C7♯9`
    case dominantSharpNinth
    
    /// Minor Major Ninth: Minor Third, Perfect Fifth, Major Seventh, Major Ninth, e.g. `CmMaj9`
    case minorMajorNinth

    /// Minor Flat Ninth: Minor Third, Perfect Fifth, Minor Seventh, Minor Ninth, e.g. `Cm7♭9`
    case minorFlatNinth

    /// Major Add Nine: Major Third, Perfect Fifth, Major Ninth, e.g. `Cadd9`
    case majorAddNine

    /// Minor Add Nine: Minor Third, Perfect Fifth, Major Ninth, e.g. `Cm(add9)`
    case minorAddNine

    /// Six Over Nine: Major Third, Perfect Fifth, Major Sixth, Major Ninth, e.g. `C6/9`
    case sixOverNine
    
    /// Augmented Major Ninth: Major Third, Augmented Fifth, Major Seventh, Major Nine, e.g. `Cmaj9(#5)`
    case majorNinthSharpFive
	
	/// Major Ninth Flat Five: Major Third, Diminished Fifth, Major Seventh, Major Nine, e.g. `Cmaj9(♭5)`
	case majorNinthFlatFive
	
	/// Dominant Ninth Flat Five: Major Third, Diminished Fifth, Minor Seventh, Major Nine, e.g. `C9(♭5)`
	case dominantNinthFlatFive

	/// Dominant Ninth Sharp Five: Major Third, Augmented Fifth, Minor Seventh, Major Nine, e.g. `C9(♯5)`
	case dominantNinthSharpFive

	//MARK: - Elevenths
    /// Major Eleventh: Major Third, Perfect Fifth, Major Seventh, Major Ninth, Perfect Eleventh, e.g. `Cmaj11`
    case majorEleventh

    /// Dominant Eleventh: Major Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, e.g. `C11`
    case dominantEleventh

    /// Minor Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, e.g. `Cm11`
    case minorEleventh

    /// Half Diminished Ninth: Minor Third, Diminished Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, e.g. `Cø11`
    case halfDiminishedEleventh

    /// Major Ninth Sharp Eleventh: Major Third, Perfect Fifth, Major Seventh, Major Ninth, Augmented Eleventh, e.g. `Cmaj9(♯11)`
    case majorNinthSharpEleventh
    
    /// Dominant Ninth Sharp Eleventh: Major Third, Perfect Fifth, Minor Seventh, Major Ninth, Augmented Eleventh, e.g. `C9(♯11)`
    case dominantNinthSharpEleventh
    
    /// Minor Ninth Sharp Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, Augmented Eleventh, e.g. `Cm9(♯11)`
    case minorNinthSharpEleventh
	
	/// Major Ninth Sharp Eleventh: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Augmented Eleventh, e.g. `Cmaj7♭9(♯11)`
	case majorFlatNinthSharpEleventh

    /// Dominant Flat Ninth Sharp Eleventh: Major Third, Perfect Fifth, Minor Seventh, Minor Ninth, Augmented Eleventh, e.g. `C7♭9(♯11)`
    case dominantFlatNinthSharpEleventh
	
	/// Minor Flat Ninth Sharp Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Minor Ninth, Augmented Eleventh, e.g. `Cm7♭9(♯11)`
	case minorFlatNinthSharpEleventh
	
    /// Dominant Sharp Ninth Sharp Eleventh: Major Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Augmented Eleventh, e.g. `C7♯9(♯11)`
    case dominantSharpNinthSharpEleventh

    /// Minor Seventh Flat Ninth  Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, e.g. `Cm7♭9(11)`
    case minorSeventhFlatNinthEleventh
	
	/// Major Seventh  Add Eleventh: Major Third, Perfect Fifth, Major Seventh, Perfect Eleventh, e.g. `Cmaj7(add11)`
	case majorSeventhAddEleventh
	
	/// Major Seventh  Add Sharp Eleventh: Major Third, Perfect Fifth, Major Seventh, Augmented Eleventh, e.g. `Cmaj7(add♯11)`
	case majorSeventhAddSharpEleventh
	
	/// Dominant Seventh Add Eleventh: Major Third, Perfect Fifth, Minor Seventh, Perfect Eleventh, e.g. `C7(add11)`
	case dominantSeventhAddEleventh
	
	/// Dominant Seventh Add Sharp Eleventh: Major Third, Perfect Fifth, minor Seventh, Augmented Eleventh, e.g. `C7(add♯11)`
	case dominantSeventhAddSharpEleventh
	
	/// Minor Seventh Add Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Perfect Eleventh, e.g. `Cm7(add11)`
	case minorSeventhAddEleventh
	
	/// Minor Seventh Add Sharp Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Augmented Eleventh, e.g. `Cm7(add♯11)`
	case minorSeventhAddSharpEleventh

	//MARK: - Thirteenths
	
    /// Major Thirteenth: Major Third, Perfect Fifth, Major Seventh, Major Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cmaj13`
    case majorThirteenth
	
	/// Dominant Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Major Thirteenth, e.g. `C13`
	case dominantThirteenth

    /// Minor Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cm13`
    case minorThirteenth
	
	/// Half Diminished Thirteenth: Minor Third, Dimished Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Major Thirteenth e.g. `Cø13`
	case halfDiminishedThirteenth
	
	/// Minor Thirteenth Flat Five: Minor Third, Dimished Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cm13(♭5)`
	case minorThirteenthFlatFive
	
	/// Major Thirteenth Flat Ninth: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cmaj13(♭9)`
	case majorThirteenthFlatNinth
	
	/// Dominant Thirteenth Flat Ninth: Major Third, Perfect Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Major Thirteenth, e.g. `C13(♭9)`
	case dominantThirteenthFlatNinth
	
	/// Minor Thirteenth Flat Ninth: Minor Third, Perfect Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cm13(♭9)`
	case minorThirteenthFlatNinth

	/// Minor Thirteenth Flat Five Flat Ninth: Minor Third, Dimished Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cm13♭5(♭9)`
	case minorThirteenthFlatFiveFlatNinth
	
	/// Major Thirteenth Sharp Ninth: Major Third, Perfect Fifth, Major Seventh, Augmented Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cmaj13(♯9)`
	case majorThirteenthSharpNinth
	
	/// Dominant Thirteenth Sharp Ninth: Major Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Perfect Eleventh, Major Thirteenth, e.g. `C13(♯9)`
	case dominantThirteenthSharpNinth
	
	/// Minor Thirteenth Sharp Ninth: Minor Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cm13(♯9)`
	case minorThirteenthSharpNinth

	/// Minor Thirteenth Flat Five Sharp Ninth: Minor Third, Dimished Fifth, Minor Seventh, Augmented Ninth, Perfect Eleventh, Major Thirteenth, e.g. `Cm13♭5(♯9)`
	case minorThirteenthFlatFiveSharpNinth
	
	/// Major Thirteenth Sharp Eleventh: Major Third, Perfect Fifth, Major Seventh, Major Ninth, Augmented Eleventh, Major Thirteenth, e.g. `Cmaj13(♯11)`
	case majorThirteenthSharpEleventh
	
	/// Dominant Thirteenth Sharp Eleventh: Major Third, Perfect Fifth, Minor Seventh, Major Ninth, Augmented Eleventh, Major Thirteenth, e.g. `C13(♯11)`
	case dominantThirteenthSharpEleventh
	
	/// Minor Thirteenth Sharp Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, Augmented Eleventh, Major Thirteenth, e.g. `Cm13(♯11)`
	case minorThirteenthSharpEleventh
	
	/// Major Seventh Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Major Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `Cmaj7(♭13)`
	case majorSeventhFlatThirteenth
	
	/// Dominant Seventh Flat Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `C7(♭13)`
	case dominantSeventhFlatThirteenth
	
	/// Minor Seventh Flat Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `Cmin7(♭13)`
	case minorSeventhFlatThirteenth
	
	/// Half Diminished Seventh Flat Thirteenth: Minor Third, Diminished Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `Cø7(♭13)`
	case halfDimishedSeventhFlatThirteenth
	
	/// Major Seventh Flat Ninth Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `Cmaj7♭9(♭13)`
	case majorSeventhFlatNinthFlatThirteenth
	
	/// Dominant Seventh Flat Ninth Flat Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Minor Thirteenth,, e.g. `C7♭9(♭13)`
	case dominantSeventhFlatNinthFlatThirteenth
	
	/// Minor Seventh Flat Ninth Flat Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Minor Thirteenth,, e.g. `Cmin7♭9(♭13)`
	case minorSeventhFlatNinthFlatThirteenth

	/// Minor Seventh Flat Five Flat Ninth Flat Thirteenth: Minor Third, Dimished Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Minor Thirteenth,, e.g. `Cmin7♭5♭9(♭13)`
	case minorSeventhFlatFiveFlatNinthFlatThirteenth
	
	/// Major Seventh Sharp Ninth Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Augmented Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `Cmaj7♯9(♭13)`
	case majorSeventhSharpNinthFlatThirteenth
	
	/// Dominant Seventh Sharp Ninth Flat Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Perfect Eleventh, Minor Thirteenth,, e.g. `C7♯9(♭13)`
	case dominantSeventhSharpNinthFlatThirteenth
	
	/// Minor Seventh Sharp Ninth Flat Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Perfect Eleventh, Minor Thirteenth,, e.g. `Cmin7♯9(♭13)`
	case minorSeventhSharpNinthFlatThirteenth

	/// Minor Seventh Flat Five Sharp Ninth Flat Thirteenth: Minor Third, Dimished Fifth, Minor Seventh, Augmented Ninth, Perfect Eleventh, Minor Thirteenth,, e.g. `Cmin7♭5♯9(♭13)`
	case minorSeventhFlatFiveSharpNinthFlatThirteenth
	
	/// Major Seventh Flat Ninth Sharp Eleventh Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Augmented Eleventh, Minor Thirteenth, e.g. `Cmaj7♭9♯11(♭13)`
	case majorSeventhFlatNinthSharpEleventhFlatThirteenth
	
	/// Dominant Seventh Flat Ninth Sharp Eleventh Flat Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Minor Ninth, Augmented Eleventh, Minor Thirteenth, e.g. `C7♭9♯11(♭13)`
	case dominantSeventhFlatNinthSharpEleventhFlatThirteenth
	
	/// Minor Seventh Flat Ninth Sharp Eleventh Flat Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Minor Ninth, Augmented Eleventh, Minor Thirteenth, e.g. `Cmin7♭9♯11(♭13)`
	case minorSeventhFlatNinthSharpEleventhFlatThirteenth
	
	/// Minor Seventh Flat Five Flat Ninth Sharp Eleventh Flat Thirteenth: Minor Third, Dimished Fifth, Minor Seventh, Minor Ninth, Augmented Eleventh, Minor Thirteenth,, e.g. `Cmin7♭5♭9♯11(♭13)`
	case minorSeventhFlatFiveFlatNinthSharpEleventhFlatThirteenth
	
	/// Major Seventh Sharp Ninth Sharp Eleventh Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Augmented Ninth, Augmented Eleventh, Minor Thirteenth, e.g. `Cmaj7♯9♯11(♭13)`
	case majorSeventhSharpNinthSharpEleventhFlatThirteenth
	
	/// Dominant Seventh Sharp Ninth Sharp Eleventh Flat Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Augmented Eleventh, Minor Thirteenth, e.g. `C7♯9♯11(♭13)`
    case dominantSeventhSharpNinthSharpEleventhFlatThirteenth
    case dom7sharp9sharp11flat13
    case dom7_sharp9_sharp11_flat13
    case dom7Sharp9Sharp11Flat13
	
	/// Minor Seventh Sharp Ninth Sharp Eleventh Flat Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Augmented Ninth, Augmented Eleventh, Minor Thirteenth, e.g. `Cmin7♯9♯11(♭13)`
	case minorSeventhSharpNinthSharpEleventhFlatThirteenth
	
	/// Minor Seventh Flat Five Sharp Ninth Sharp Eleventh Flat Thirteenth: Minor Third, Dimished Fifth, Minor Seventh, Minor Ninth, Augmented Eleventh, Minor Thirteenth,, e.g. `Cmin7♭5♯9♯11(♭13)`
	case minorSeventhFlatFiveSharpNinthSharpEleventhFlatThirteenth
	
	/// Major Seventh Add Thirteenth: Major Third, Perfect Fifth, Major Seventh, Major Thirteenth, e.g. `Cmaj7(add13)`
	case majorSeventhAddThirteenth
	
	/// Dominant Seventh Add Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Major Thirteenth, e.g. `C7(add13)`
	case dominantSeventhAddThirteenth
	
	/// Minor Seventh Add Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Major Thirteenth, e.g. `Cmin7(add13)`
	case minorSeventhAddThirteenth
	
	/// Half Diminished Seventh Add Thirteenth: Minor Third, Diminished Fifth, Major Seventh, Major Thirteenth, e.g. `Cø7(add13)`
	case halfDiminishedSeventhAddThirteenth
	
	/// Major Seventh Add Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Minor Thirteenth, e.g. `Cmaj7(add♭13)`
	case majorSeventhAddFlatThirteenth
	
	/// Dominant Seventh Add Flat Thirteenth: Major Third, Perfect Fifth, Minor Seventh, Minor Thirteenth, e.g. `C7(add♭13)`
	case dominantSeventhAddFlatThirteenth
	
	/// Minor Seventh Add Flat Thirteenth: Minor Third, Perfect Fifth, Minor Seventh, Minor Thirteenth, e.g. `Cmin7(add♭13)`
	case minorSeventhAddFlatThirteenth
	
	/// Half Diminished Seventh Add Thirteenth: Minor Third, Diminished Fifth, Major Seventh, Major Thirteenth, e.g. `Cø7(add13)`
	case halfDiminishedSeventhAddFlatThirteenth
	
	/// Major Seventh Add Ninth Add Thirteenth: Major Third, Perfect Fifth, Major Seventh, Major Ninth, Major Thirteenth, e.g. `Cmaj7(add9)(add13)`
	case majorSeventhAddNinthAddThirteenth
    
    /// Major Seventh Add Flat Ninth Add Thirteenth: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Major Thirteenth, e.g. `Cmaj7(add♭9)(add13)`
    case majorSeventhAddFlatNinthAddThirteenth
    
    /// Major Seventh Add Flat Ninth Add Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Minor Thirteenth, e.g. `Cmaj7(add♭9)(add13)`
    case majorSeventhAddFlatNinthAddThirteenth
	
    /// Major Seventh Flat Ninth Flat Thirteenth: Major Third, Perfect Fifth, Major Seventh, Minor Ninth, Perfect Eleventh, Minor Thirteenth, e.g. `Cm♭9`
    case minorFlatThirteenthFlatNinth


    /// Minor Eleventh: Minor Third, Perfect Fifth, Minor Seventh, Major Ninth, Perfect Eleventh, Diminished Thirteenth
    case minorEleventhFlatThirteenth

    /// Half Diminished Ninth: Minor Third, Diminished Fifth, Minor Seventh, Minor Ninth, Perfect Eleventh, Diminished Thirteenth
    case halfDiminishedFlatThirteenth



    public var intervals: [Interval] {
        switch self {
            case .major:                       return [.M3, .P5]
            case .minor:                       return [.m3, .P5]
            case .dim:                  return [.m3, .d5]
            case .flat5:                    return [.M3, .d5]
            case .aug:                   return [.M3, .A5]
            case .sus2:             return [.M2, .P5]
            case .sus4:             return [.P4, .P5]
            case .maj6:                            return [.M3, .P5, .M6]
            case .min6:                       return [.m3, .P5, .M6]
            case .sus2_add13:             return [.M2, .P5, .M6]
            case .sus4_add13:             return [.P4, .P5, .M6]
            case .halfDim7:            return [.m3, .d5, .m7]
            case .dim7:                return [.m3, .d5, .d7]
            case .dom7:                  return [.M3, .P5, .m7]
            case .dom7_sus2:   return [.M2, .P5, .m7]
            case .dom7_sus4:   return [.P4, .P5, .m7]
            case .maj7:                     return [.M3, .P5, .M7]
            case .min7:                     return [.m3, .P5, .m7]
            case .min_maj7:                return [.m3, .P5, .M7]
            case .halfDiminishedFlatNinth:              return [.m3, .d5, .m7, .m9]
            case .dominantNinth:                    return [.M3, .P5, .m7, .M9]
            case .dominantNinthSuspendedFourth:     return [.P4, .P5, .M9]
            case .dominantFlatNinth:                return [.M3, .P5, .m7, .m9]
            case .dominantSharpNinth:               return [.M3, .P5, .m7, .A9]
            case .majorNinth:                       return [.M3, .P5, .M7, .M9]
            case .minorMajorNinth:                  return [.m3, .P5, .M7, .M9]
            case .minorFlatNinth:                   return [.m3, .P5, .m7, .m9]
            case .minorNinth:                       return [.m3, .P5, .m7, .M9]
            case .majorAddNine:                     return [.M3, .P5, .M9]
            case .minorAddNine:                     return [.m3, .P5, .M9]
            case .sixOverNine:                      return [.M3, .P5, .M6, .M9]
            case .majorEleventh:                    return [.M3, .P5, .M7, .M9, .P11]
            case .dominantEleventh:                 return [.M3, .P5, .m7, .M9, .P11]
            case .minorEleventh:                    return [.m3, .P5, .m7, .M9, .P11]
            case .halfDiminishedEleventh:           return [.m3, .d5, .m7, .M9, .P11]
            case .maj7_flat5:             return [.M3, .d5, .M7]
            case .maj7_sharp5:            return [.M3, .A5, .M7]
            case .majorNinthSharpEleventh:          return [.M3, .P5, .M7, .M9, .A11]
            case .dominantNinthSharpEleventh:       return [.M3, .P5, .m7, .M9, .A11]
            case .dominantFlatNinthSharpEleventh:   return [.M3, .P5, .m7, .m9, .A11]
            case .dom7_flat5:          return [.M3, .d5, .m7]
            case .dom7_sharp5:         return [.M3, .A5, .m7]
            case .dominantSharpNinthSharpEleventh:  return [.M3, .P5, .m7, .A9, .A11]
            case .minorSeventhFlatNinthEleventh: 	return [.m3, .P5, .m7, .m9, .P11]
            case .majorThirteenth:                  return [.M3, .P5, .M7, .M9, .P11, .M13]
            case .minorThirteenth:                  return [.m3, .P5, .m7, .M9, .P11, .M13]
            case .minorFlatThirteenthFlatNinth:     return [.m3, .P5, .m7, .m9, .P11, .m13]
            case .majorThirteenthSharpEleventh:     return [.M3, .P5, .M7, .M9, .A11, .M13]
            case .dominantThirteenth:               return [.M3, .P5, .m7, .M9, .P11, .M13]
            case .minorEleventhFlatThirteenth:      return [.m3, .P5, .m7, .M9, .P11, .m13]
            case .halfDiminishedFlatThirteenth:     return [.m3, .d5, .m7, .m9, .P11, .m13]
            case .majorNinthFlatFive:               return [.M3, .d5, .M7, .M9]
            case .augmentedMajorNinth:              return [.M3, .A5, .M7, .M9]
            case .dominantNinthFlatFive:            return [.M3, .d5, .m7, .M9]
            case .dominantNinthSharpFive:           return [.M3, .A5, .m7, .M9]
                
        }
    }
}

extension ChordType: CustomStringConvertible {
    /// Adornment to the Root NoteClass (letter+accidental) that defines the chord type
    public var description: String {
        switch self {
            case .major:                       return ""
            case .minor:                       return "m"
            case .dim:                  return "°"
            case .flat5:                    return "♭5"
            case .aug:                   return "⁺"
            case .sus2:             return "sus2"
            case .sus4:             return "sus4"
            case .maj6:                            return "6"
            case .min6:                       return "m6"
            case .sus2_add13:             return "6sus2"
            case .sus4_add13:             return "6sus4"
            case .halfDim7:            return "ø7"
            case .dim7:                return "°7"
            case .dom7:                  return "7"
            case .dom7_sus2:   return "7sus2"
            case .dom7_sus4:   return "7sus4"
            case .maj7:                     return "maj7"
            case .min7:                     return "m7"
            case .min_maj7:                return "mMaj7"
			case .maj7_flat5:             return "maj7(♭5)"
			case .maj7_sharp5:            return "maj7(♯5)"
			case .dom7_flat5:                 return "7♭5"
			case .dom7_sharp5:                return "7♯5"
            case .halfDiminishedFlatNinth:              return "ø9"
            case .dominantNinth:                    return "9"
            case .dominantNinthSuspendedFourth:     return "9sus4"
            case .dominantFlatNinth:                return "7♭9"
            case .dominantSharpNinth:               return "7♯9"
            case .majorNinth:                       return "maj9"
            case .minorFlatNinth:                   return "m7♭9"
            case .minorNinth:                       return "m9"
            case .minorMajorNinth:                  return "mMaj9"
            case .majorAddNine:                     return "add9"
            case .minorAddNine:                     return "m(add9)"
            case .sixOverNine:                      return "6/9"
			case .majorNinthFlatFive:               return "maj9(♭5)"
			case .augmentedMajorNinth:              return "maj9(♯5)"
            case .majorEleventh:                    return "maj11"
            case .dominantEleventh:                 return "11"
            case .minorEleventh:                    return "m11"
            case .halfDiminishedEleventh:           return "ø11"
            case .majorNinthSharpEleventh:          return "maj9(♯11)"
            case .dominantFlatNinthSharpEleventh:   return "7♭9♯11"
            case .dominantSharpNinthSharpEleventh:  return "7♯9♯11"
            case .minorSeventhFlatNinthEleventh: 	return "m7♭9(11)"
            case .majorThirteenth:                  return "maj13"
            case .minorThirteenth:                  return "m13"
            case .minorFlatThirteenthFlatNinth:     return "m♭13♭9"
            case .majorThirteenthSharpEleventh:     return "maj13♯11"
            case .dominantThirteenth:               return "13"
            case .minorEleventhFlatThirteenth:      return "m11♭13"
            case .halfDiminishedFlatThirteenth:     return "ø♭13"
            case .dominantNinthFlatFive:            return "9♭5"
            case .dominantNinthSharpFive:           return "9♯5"
            case .dominantNinthSharpEleventh:       return "9(♯11)"
        }
    }

    /// Adornment to the Root NoteClass (letter+accidental) that defines the chord type
    /// using specialized Chord Symbol Fonts Norfolk or Pori from
    /// NotationExpress: https://www.notationcentral.com/product/norfolk-fonts-for-sibelius/
    public var chordFontDescription: String {
        switch self {
            case .major:                       return ""
            case .minor:                       return "m"
            case .dim:                  return "º"
            case .flat5:                    return "b5"
            case .aug:                   return "&"
            case .sus2:             return "“2"
            case .sus4:             return "“4"
            case .maj6:                            return "6"
            case .min6:                       return "m6"
            case .sus2_add13:             return "6sus2"
            case .sus4_add13:             return "6sus4"
            case .halfDim7:            return "Ø7"
            case .dim7:                return "º7"
            case .dom7:                  return "7"
            case .dom7_sus2:   return "7sus2"
            case .dom7_sus4:   return "7sus4"
            case .maj7:                     return "^7"
            case .min7:                     return "m7"
            case .min_maj7:                return "m^7"
			case .maj7_flat5:             return "^7b5"
			case .maj7_sharp5:            return "^7#5"
            case .halfDiminishedFlatNinth:              return "Ø9"
            case .dominantNinth:                    return "9"
            case .dominantNinthSuspendedFourth:     return "9sus4"
            case .dominantFlatNinth:                return "7b9"
            case .dominantSharpNinth:               return "7#9"
            case .majorNinth:                       return "^9"
            case .minorMajorNinth:                  return "m^9"
            case .minorFlatNinth:                   return "m7b9"
            case .minorNinth:                       return "m9"
            case .majorAddNine:                     return "@9"
            case .minorAddNine:                     return "m@9"
            case .sixOverNine:                      return "%"
            case .majorEleventh:                    return "^11"
            case .dominantEleventh:                 return "11"
            case .minorEleventh:                    return "m11"
            case .halfDiminishedEleventh:           return "Ø11"
            case .majorNinthSharpEleventh:          return "^9#11"
            case .dom7_flat5:          return "7b5"
            case .dom7_sharp5:         return "7#5"
            case .dominantFlatNinthSharpEleventh:   return "7âÅ"
            case .dominantSharpNinthSharpEleventh:  return "7åÅ"
            case .minorSeventhFlatNinthEleventh: 	return "m7b9(11)"
            case .majorThirteenth:                  return "^13"
            case .minorThirteenth:                  return "m13"
            case .minorFlatThirteenthFlatNinth:     return "máÆ"
            case .majorThirteenthSharpEleventh:     return "^13#11"
            case .dominantThirteenth:               return "13"
            case .minorEleventhFlatThirteenth:      return "m11b13"
            case .halfDiminishedFlatThirteenth:     return "Øb13"
            case .majorNinthFlatFive:               return "^9b5"
            case .augmentedMajorNinth:              return "^9#5"
            case .dominantNinthFlatFive:            return "9b5"
            case .dominantNinthSharpFive:           return "9#5"
            case .dominantNinthSharpEleventh:       return "9(#11)"
        }
    }
}
