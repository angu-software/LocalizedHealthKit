# LocalizedHealthKit

Swift package to provide localizations for `HealthKit` entities.
Most and foremost for the `HKWorkoutActivityType`

## Features

Localized names for `HKWorkoutActivityType`

```swift
    let germanLocale = Locale(identifier: "de-DE")
    
    let activityType: HKWorkoutActivityType = .running
    let displayName = activityType.name // "Running"

    let germanName = activityType.localizedName(locale: germanLocale) // "Laufen"
```

## Supported Languages

- English
- German

## Acknowledgements

Thanks to [@georgegreenoflondon](https://github.com/georgegreenoflondon) for [HKWorkoutActivityType-Descriptions](https://github.com/georgegreenoflondon/HKWorkoutActivityType-Descriptions) which provided the initial english `HKWorkoutActivityType` names.
