
// To check if a library is compiled with CocoaPods you
// can use the `COCOAPODS` macro definition which is
// defined in the xcconfigs so it is available in
// headers also when they are imported in the client
// project.


// Expecta
#define COCOAPODS_POD_AVAILABLE_Expecta
#define COCOAPODS_VERSION_MAJOR_Expecta 0
#define COCOAPODS_VERSION_MINOR_Expecta 4
#define COCOAPODS_VERSION_PATCH_Expecta 2

// OCMock
#define COCOAPODS_POD_AVAILABLE_OCMock
#define COCOAPODS_VERSION_MAJOR_OCMock 3
#define COCOAPODS_VERSION_MINOR_OCMock 1
#define COCOAPODS_VERSION_PATCH_OCMock 2

// Specta
#define COCOAPODS_POD_AVAILABLE_Specta
#define COCOAPODS_VERSION_MAJOR_Specta 0
#define COCOAPODS_VERSION_MINOR_Specta 5
#define COCOAPODS_VERSION_PATCH_Specta 0

// Debug build configuration
#ifdef DEBUG

  // KIF
  #define COCOAPODS_POD_AVAILABLE_KIF
  #define COCOAPODS_VERSION_MAJOR_KIF 3
  #define COCOAPODS_VERSION_MINOR_KIF 2
  #define COCOAPODS_VERSION_PATCH_KIF 1

  // KIF/XCTest
  #define COCOAPODS_POD_AVAILABLE_KIF_XCTest
  #define COCOAPODS_VERSION_MAJOR_KIF_XCTest 3
  #define COCOAPODS_VERSION_MINOR_KIF_XCTest 2
  #define COCOAPODS_VERSION_PATCH_KIF_XCTest 1

#endif
