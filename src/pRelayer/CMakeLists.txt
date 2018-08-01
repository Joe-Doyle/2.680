#--------------------------------------------------------
# The CMakeLists.txt for:                       pRelayer
# Author(s):                              Joe Doyle
#--------------------------------------------------------

SET(SRC
  Relayer.cpp
  Relayer_Info.cpp
  main.cpp
)

ADD_EXECUTABLE(pRelayer ${SRC})

TARGET_LINK_LIBRARIES(pRelayer
   ${MOOS_LIBRARIES}
   mbutil
   m
   pthread)

