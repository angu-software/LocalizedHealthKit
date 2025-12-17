//
//  HKWorkoutActivityType+LocalizedName.swift
//  LocalizedHealthKit
//
//  Created by Andreas Günther on 17.12.25.
//

import Foundation
import HealthKit

extension HKWorkoutActivityType {

    /// Returns a localized, user-facing name for the workout activity type.
    ///
    /// This method looks up a localized string that corresponds to the receiver’s
    /// `HKWorkoutActivityType` value and returns it as a `String`.
    /// It resolves the appropriate translation for the provided `locale`.
    ///
    /// - Parameter locale: The locale to use when localizing the activity name.
    ///   Defaults to the current system locale (`Locale.current`).
    ///
    /// - Returns: A localized string describing the workout activity type.
    ///   If no matching localized string is found, the method falls back to a
    ///   sensible default derived from the activity type’s name.
    ///
    /// - SeeAlso: `HKWorkoutActivityType` for the list of supported activity types.
    public func localizedName(locale: Locale = .current) -> String {
        let resource = LocalizedStringResource(.init(name),
                                               table: nil,
                                               locale: locale,
                                               bundle: .module,
                                               comment: nil)

        return String(localized: resource)
    }
}

// common name
// common name with context e.g. location
// Hockey currently translated to ice hockey, field hockey missing
// Frisbee as common name for Disc-Sport?
// Tanzinspiriertes Training -> Zumba?
// Cardio-Tanz -> Zumba?
