# ---------------------------------------------------------------------------
# Test Files and Classes
# ---------------------------------------------------------------------------
# Try to find GTest installed on the system
find_package(GTest REQUIRED)

include("${CMAKE_SOURCE_DIR}/test/unittest/local.cmake")
