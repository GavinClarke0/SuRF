function(add_unit_test file_name name)
    add_executable(${name} ${file_name}.cpp)
    target_link_libraries(${name} GTest::GTest GTest::Main)
    add_test(NAME ${file_name}
            COMMAND ${CMAKE_CURRENT_BINARY_DIR}/${file_name}
            WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
endfunction()

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

add_unit_test(test/unitTest/test_bitvector test_bitvector)
add_unit_test(test/unitTest/test_label_vector test_label_vector)
add_unit_test(test/unitTest/test_louds_dense test_louds_dense)
add_unit_test(test/unitTest/test_louds_dense_small test_louds_dense_small)
add_unit_test(test/unitTest/test_louds_sparse test_louds_sparse)
add_unit_test(test/unitTest/test_louds_sparse_small test_louds_sparse_small)
add_unit_test(test/unitTest/test_rank test_rank)
add_unit_test(test/unitTest/test_select test_select)
add_unit_test(test/unitTest/test_surf test_surf)
add_unit_test(test/unitTest/test_surf_builder test_surf_builder)
add_unit_test(test/unitTest/test_surf_small test_surf_small)
