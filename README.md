# LocalizedHealthKit

Swift package to provide localizations for `HealthKit` entities.
Most and foremost for the `HKWorkoutActivityType`.

## Features

Localized names for `HKWorkoutActivityType`

```swift
    let germanLocale = Locale(identifier: "de-DE")
    let localizer = Localizer(locale: germanLocale)
    
    let activityType: HKWorkoutActivityType = .running
    let displayName = localizer.name(for: activityType) // "Running"

    let germanName = localizer.localizedName(for: activityType) // "Laufen"
```

## Supported Languages

- English
- German

## Acknowledgements

Thanks to [@georgegreenoflondon](https://github.com/georgegreenoflondon) for [HKWorkoutActivityType-Descriptions](https://github.com/georgegreenoflondon/HKWorkoutActivityType-Descriptions) which provided the initial english `HKWorkoutActivityType` names.
