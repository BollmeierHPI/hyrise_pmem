FIND_PATH(MEMKIND_INCLUDE_DIR NAME memkind.h
    HINTS /home/markus.dreseler/memkind/include /home/Markus.Dreseler/memkind/include /mnt/nvrams1/epic/ubuntu/memkind/include
    NO_DEFAULT_PATH NO_CMAKE_ENVIRONMENT_PATH NO_CMAKE_PATH NO_SYSTEM_ENVIRONMENT_PATH NO_CMAKE_SYSTEM_PATH 
)

FIND_LIBRARY(MEMKIND_LIBRARY NAME memkind
    HINTS /home/markus.dreseler/memkind/lib /home/Markus.Dreseler/memkind/lib /mnt/nvrams1/epic/ubuntu/memkind/.libs
    )

IF (MEMKIND_INCLUDE_DIR AND MEMKIND_LIBRARY)
    SET(MEMKIND_FOUND TRUE)
    MESSAGE(STATUS "Found memkind library: inc=${MEMKIND_INCLUDE_DIR}, lib=${MEMKIND_LIBRARY}")
ELSE ()
    SET(MEMKIND_FOUND FALSE)
    MESSAGE(STATUS "WARNING: memkind library not found.")
ENDIF ()
