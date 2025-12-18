//
//  NameLocalizationTests.swift
//  LocalizedHealthKit
//
//  Created by Andreas Günther on 17.12.25.
//

import Foundation
import HealthKit
import Testing

@testable import LocalizedHealthKit

struct NameLocalizationTests {

    @Test
    func givenUSLocale_itLocalizesDefaultName() async throws {
        let activityType = HKWorkoutActivityType.stairClimbing

        #expect(localizedName(for: activityType, localeId: "en") == name(for: activityType))
    }

    @Test
    func givenGermanLocale_itLocalizedToGermanName() async throws {
        let activityType = HKWorkoutActivityType.stairClimbing

        #expect(localizedName(for: activityType, localeId: "de") == "Treppensteigen")
    }

    private func name(for activityType: WorkoutActivityType) -> String {
        return makeLocalizer(localeId: "en")
            .name(for: activityType)
    }

    private func localizedName(for activityType: WorkoutActivityType, localeId: String) -> String {
        return makeLocalizer(localeId: localeId)
            .localizedName(for: activityType)
    }

    private func makeLocalizer(localeId: String) -> Localizer {
        return Localizer(locale: Locale(identifier: localeId))
    }
}
