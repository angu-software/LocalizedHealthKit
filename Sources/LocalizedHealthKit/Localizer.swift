//
//  Localizer.swift
//  LocalizedHealthKit
//
//  Created by Andreas Günther on 18.12.25.
//

import Foundation

/// A utility type that provides human‑readable names for HealthKit workout
/// activity types, with optional localization.
///
/// You can initialize a `Localizer` with a specific locale to control
/// the language of the output, or use the default initializer to respect
/// the device’s current locale.
///
/// Example:
/// ```swift
/// let localizer = Localizer(locale: Locale(identifier: "de"))
/// let german = localizer.localizedName(for: .running) // "Laufen"
///
/// let english = localizer.name(for: .running) // "Running"
/// ```
public struct Localizer {

    public var locale: Locale

    public init(locale: Locale = .current) {
        self.locale = locale
    }

    /// Returns an English display name for the given workout activity type.
    ///
    /// This method maps each case of `WorkoutActivityType` to a human‑readable, English
    /// name. It does not apply localization; for a localized string, use
    /// ``localizedName(for:)`` instead.
    ///
    /// - Parameter workoutActivity: The workout activity type to name.
    /// - Returns: An English string describing the workout activity. Unknown future
    ///   cases are mapped to "Other".
    /// - Important: This function intentionally ignores the receiver’s `locale`.
    ///   To respect the current or specified locale, call ``localizedName(for:)``.
    public func name(for workoutActivity: WorkoutActivityType) -> String {
        switch workoutActivity {
            case .americanFootball:                 return "American Football"
            case .archery:                          return "Archery"
            case .australianFootball:               return "Australian Football"
            case .badminton:                        return "Badminton"
            case .baseball:                         return "Baseball"
            case .basketball:                       return "Basketball"
            case .bowling:                          return "Bowling"
            case .boxing:                           return "Boxing"
            case .climbing:                         return "Climbing"
            case .crossTraining:                    return "Cross Training"
            case .curling:                          return "Curling"
            case .cycling:                          return "Cycling"
            case .dance:                            return "Dance"
            case .danceInspiredTraining:            return "Dance Inspired Training"
            case .elliptical:                       return "Elliptical"
            case .equestrianSports:                 return "Equestrian Sports"
            case .fencing:                          return "Fencing"
            case .fishing:                          return "Fishing"
            case .functionalStrengthTraining:       return "Functional Strength Training"
            case .golf:                             return "Golf"
            case .gymnastics:                       return "Gymnastics"
            case .handball:                         return "Handball"
            case .hiking:                           return "Hiking"
            case .hockey:                           return "Hockey"
            case .hunting:                          return "Hunting"
            case .lacrosse:                         return "Lacrosse"
            case .martialArts:                      return "Martial Arts"
            case .mindAndBody:                      return "Mind and Body"
            case .mixedMetabolicCardioTraining:     return "Mixed Metabolic Cardio Training"
            case .paddleSports:                     return "Paddle Sports"
            case .play:                             return "Play"
            case .preparationAndRecovery:           return "Preparation and Recovery"
            case .racquetball:                      return "Racquetball"
            case .rowing:                           return "Rowing"
            case .rugby:                            return "Rugby"
            case .running:                          return "Running"
            case .sailing:                          return "Sailing"
            case .skatingSports:                    return "Skating Sports"
            case .snowSports:                       return "Snow Sports"
            case .soccer:                           return "Soccer"
            case .softball:                         return "Softball"
            case .squash:                           return "Squash"
            case .stairClimbing:                    return "Stair Climbing"
            case .surfingSports:                    return "Surfing Sports"
            case .swimming:                         return "Swimming"
            case .tableTennis:                      return "Table Tennis"
            case .tennis:                           return "Tennis"
            case .trackAndField:                    return "Track and Field"
            case .traditionalStrengthTraining:      return "Traditional Strength Training"
            case .volleyball:                       return "Volleyball"
            case .walking:                          return "Walking"
            case .waterFitness:                     return "Water Fitness"
            case .waterPolo:                        return "Water Polo"
            case .waterSports:                      return "Water Sports"
            case .wrestling:                        return "Wrestling"
            case .yoga:                             return "Yoga"
            case .barre:                            return "Barre"
            case .coreTraining:                     return "Core Training"
            case .crossCountrySkiing:               return "Cross Country Skiing"
            case .downhillSkiing:                   return "Downhill Skiing"
            case .flexibility:                      return "Flexibility"
            case .highIntensityIntervalTraining:    return "High Intensity Interval Training"
            case .jumpRope:                         return "Jump Rope"
            case .kickboxing:                       return "Kickboxing"
            case .pilates:                          return "Pilates"
            case .snowboarding:                     return "Snowboarding"
            case .stairs:                           return "Stairs"
            case .stepTraining:                     return "Step Training"
            case .wheelchairWalkPace:               return "Wheelchair Walk Pace"
            case .wheelchairRunPace:                return "Wheelchair Run Pace"
            case .taiChi:                           return "Tai Chi"
            case .mixedCardio:                      return "Mixed Cardio"
            case .handCycling:                      return "Hand Cycling"
            case .discSports:                       return "Disc Sports"
            case .fitnessGaming:                    return "Fitness Gaming"
            case .cricket:                          return "Cricket"
            case .cardioDance:                      return "Cardio Dance"
            case .socialDance:                      return "Social Dance"
            case .pickleball:                       return "Pickleball"
            case .cooldown:                         return "Cooldown"
            case .swimBikeRun:                      return "Swim Bike Run"
            case .transition:                       return "Transition"
            case .underwaterDiving:                 return "Underwater Diving"
            case .other:                            return "Other"

            @unknown default:                       return "Other"
        }
    }

    /// Returns a localized display name for the given workout activity type.
    ///
    /// - Parameter workoutActivity: The workout activity type to localize.
    /// - Returns: A human‑readable, localized name for the workout activity.
    public func localizedName(for workoutActivity: WorkoutActivityType) -> String {
        let name = name(for: workoutActivity)

        let resource = LocalizedStringResource(.init(name),
                                               table: nil,
                                               locale: locale,
                                               bundle: .module,
                                               comment: nil)

        return String(localized: resource)
    }
}
