#--------------------------------------------------------
# The CMakeLists.txt for:                       pFaker
# Author(s):                              Caileigh
#--------------------------------------------------------

FILE(GLOB SRC *.cpp)

ADD_EXECUTABLE(pFaker ${SRC})

TARGET_LINK_LIBRARIES(pFaker
   ${MOOS_LIBRARIES}
   mbutil
   m
   pthread)

