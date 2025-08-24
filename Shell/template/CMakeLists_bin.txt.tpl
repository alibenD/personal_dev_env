add_executable(example example.cc)
target_link_libraries(example PRIVATE ${PROJECT_NAME})

install(
TARGETS example
RUNTIME DESTINATION bin
)