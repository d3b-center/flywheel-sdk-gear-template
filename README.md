# Flywheel SDK gear template

General gear description.

Review these notes & then remove the following block of text when creating new gears:
```
SDK gear documentation: https://docs.flywheel.io/user/compute/gears/user_introduction_to_a_sdk_gear/

**NOTE**: our convention for gear naming is:
- gear name is specified with no spaces
- include the parent suite at the beginning if possible and the subsequent functionality
- include d3b at the beginning for D3b developed gears and gears modified for D3b specific usage

Examples:
- `deepliif-predict` : DeepLIIF is the parent package, IHC prediction is the main functionality
- `captk-coregistration` : CaPTk is the parent package, coregistration is the specific command implemented by the gear
- `d3b-pyradiomics-feature-extraction` : pyradiomics is the parent package, feature extraction is the function implemented by the gear. We made d3b-specific modifications to the base pyradiomic functionality (added Collage features), so appended with "d3b" at the beginning.
- `d3b-ped-auto-deface` : D3b-developed pretrained deep learning model for pediatric MRI de-facing

**NOTE**: our convention for Github repo naming for Flywheel gears is:
- `fw-` followed by gear-name

Examples:
- [`deepliif-predict`](https://github.com/d3b-center/fw-deepliif-predict)
- [`fw-captk-coregistration`](https://github.com/d3b-center/fw-captk-coregistration)
- [`fw-d3b-pyradiomics-feature-extraction`](https://github.com/d3b-center/fw-pyradiomics-feature-extraction)
- [`fw-d3b-ped-auto-deface`](https://github.com/d3b-center/fw-d3b-ped-auto-deface)

**NOTE**: In `manifest.json` try to use an existing Flywheel Suite if possible, in order to group like-gears together by their parent package (e.g., all gears implementing HistomicsTK commands should have `suite`: `HistomicsTK`; for CaPTk gears `suite`: `CaPTk`). Suites are viewable in the Flywheel UI under "Run Gear" dropdown menu's (headers)
```

### Classification

_Category:_ [specify as Utility or Analysis]

_Gear Level:_ [specify which level(s) the gear is designed to run at]

- [x] Project
- [x] Subject
- [x] Session
- [ ] Acquisition
- [ ] Analysis


# Main functionality

Detailed description of gear functions. Include relevant links to sources & frameworks. Use separate sub-headings as needed to describe different stages or functions.

## Dependencies:

List required packages

## Inputs:

- **input_name**: input description

If none, write None

## Configurations:

- **config_name**: config description

If none, write None

## Outputs:

- **output_name**: output description

If none, write None

## Limitations

Describe any limitations that would be useful for the user to know.

## Notes

Any development notes, any potential areas for future development
