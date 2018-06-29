# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [5.8.0]
### Added
- Copy to clipboard button that takes the current portal page URL that is the window below the button and puts it in
the browser clipboard.
- Curl command that shows when the 'Show Web Calls' button is clicked

### Changed
- Function of 'Show Web Calls' button so that only one call, based on which result type radio button is selected, is shown

### Fixed
- Media breakpoint formatting that caused 'Select data to download' radio buttons to be inaccessible at screen widths
between 768px and 992px
- Can now select pour points for NLDI navigation.  
- An issue that affected the ability to add some query parameters to the 'web calls' on the portal page after the 'Reset
form' button was pressed 

[Unreleased]: https://github.com/NWQMC/WQP_UI/compare/WQP_UI-5.8.0...master
[5.8.0]: https://github.com/NWQMC/WQP_UI/compare/WQP_UI-5.7.0...WQP_UI-5.8.0