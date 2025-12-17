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

        #expect(activityType.localizedName(locale: Locale(identifier: "en")) == activityType.name)
    }

    @Test
    func givenGermanLocale_itLocalizedToGermanName() async throws {
        let activityType = HKWorkoutActivityType.stairClimbing

        #expect(activityType.localizedName(locale: Locale(identifier: "de")) == "Treppensteigen")
    }
}
