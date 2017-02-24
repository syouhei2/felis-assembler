min_caml_create_array: 
  addi r1 r3 0 
  addi r1 r1 -1 
  sll r1 r1 2 
(test/sfiles/array.s)_create_array_loop: 
  swo r2 r27 r1 
  beq r1 r0 (test/sfiles/array.s)_create_array_return 
  addi r1 r1 -4 
  j (test/sfiles/array.s)_create_array_loop 
(test/sfiles/array.s)_create_array_return: 
  sll r3 r3 2 
  addi r27 r1 0 
  add r27 r3 r27 
  jr r31 
min_caml_create_float_array: 
  addi r1 r3 0 
  addi r1 r1 -1 
  sll r1 r1 2 
(test/sfiles/array.s)_create_float_array_loop: 
  swoc1 f0 r27 r1 
  beq r1 r0 (test/sfiles/array.s)_create_float_array_return 
  addi r1 r1 -4 
  j (test/sfiles/array.s)_create_float_array_loop 
(test/sfiles/array.s)_create_float_array_return: 
  sll r3 r3 2 
  addi r27 r1 0 
  add r27 r3 r27 
  jr r31 

min_caml_globals: 
(test/sfiles/globals.s)generate_n_objects: 
  addi r0 r1 1 
  addi r0 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummy 
min_caml_load_n_objects: 
  lui r1 32 
  addi r1 r1 0 
  jr r31 
(test/sfiles/globals.s)generate_dummy: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_objects_tmp 
(test/sfiles/globals.s)generate_objects_tmp: 
  addi r0 r1 0 
  sw r1 r27 0 
  addi r0 r1 0 
  sw r1 r27 4 
  addi r0 r1 0 
  sw r1 r27 8 
  addi r0 r1 0 
  sw r1 r27 12 
  lui r1 32 
  addi r1 r1 4 
  sw r1 r27 16 
  lui r1 32 
  addi r1 r1 4 
  sw r1 r27 20 
  addi r0 r1 0 
  sw r1 r27 24 
  lui r1 32 
  addi r1 r1 4 
  sw r1 r27 28 
  lui r1 32 
  addi r1 r1 4 
  sw r1 r27 32 
  lui r1 32 
  addi r1 r1 4 
  sw r1 r27 36 
  lui r1 32 
  addi r1 r1 4 
  sw r1 r27 40 
  j (test/sfiles/globals.s)generate_objects 
(test/sfiles/globals.s)generate_objects: 
  addi r0 r1 60 
  lui r2 32 
  addi r2 r2 8 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_screen 
min_caml_load_objects: 
  lui r1 32 
  addi r1 r1 52 
  jr r31 
(test/sfiles/globals.s)generate_screen: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_viewpoint 
min_caml_load_screen: 
  lui r1 32 
  addi r1 r1 292 
  jr r31 
(test/sfiles/globals.s)generate_viewpoint: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_light 
min_caml_load_viewpoint: 
  lui r1 32 
  addi r1 r1 304 
  jr r31 
(test/sfiles/globals.s)generate_light: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_beam 
min_caml_load_light: 
  lui r1 32 
  addi r1 r1 316 
  jr r31 
(test/sfiles/globals.s)generate_beam: 
  addi r0 r1 1 
  lui r24 17279 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_and_net_tmp 
min_caml_load_beam: 
  lui r1 32 
  addi r1 r1 328 
  jr r31 
(test/sfiles/globals.s)generate_and_net_tmp: 
  addi r0 r1 1 
  addi r0 r2 -1 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_and_net 
(test/sfiles/globals.s)generate_and_net: 
  addi r0 r1 50 
  lui r2 32 
  addi r2 r2 332 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_or_net_tmp 
min_caml_load_and_net: 
  lui r1 32 
  addi r1 r1 336 
  jr r31 
(test/sfiles/globals.s)generate_or_net_tmp: 
  addi r0 r1 1 
  lui r2 32 
  addi r2 r2 336 
  lw r2 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_or_net 
(test/sfiles/globals.s)generate_or_net: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 11 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_solver_dist 
min_caml_load_or_net: 
  lui r1 32 
  addi r1 r1 540 
  jr r31 
(test/sfiles/globals.s)generate_solver_dist: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_intsec_rectside 
min_caml_load_solver_dist: 
  lui r1 32 
  addi r1 r1 544 
  jr r31 
(test/sfiles/globals.s)generate_intsec_rectside: 
  addi r0 r1 1 
  addi r0 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_tmin 
min_caml_load_intsec_rectside: 
  lui r1 32 
  addi r1 r1 548 
  jr r31 
(test/sfiles/globals.s)generate_tmin: 
  addi r0 r1 1 
  lui r24 20078 
  addi r24 r24 27432 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_intersection_point 
min_caml_load_tmin: 
  lui r1 32 
  addi r1 r1 552 
  jr r31 
(test/sfiles/globals.s)generate_intersection_point: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_intersected_object_id 
min_caml_load_intersection_point: 
  lui r1 32 
  addi r1 r1 556 
  jr r31 
(test/sfiles/globals.s)generate_intersected_object_id: 
  addi r0 r1 1 
  addi r0 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_nvector 
min_caml_load_intersected_object_id: 
  lui r1 32 
  addi r1 r1 568 
  jr r31 
(test/sfiles/globals.s)generate_nvector: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_texture_color 
min_caml_load_nvector: 
  lui r1 32 
  addi r1 r1 572 
  jr r31 
(test/sfiles/globals.s)generate_texture_color: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_diffuse_ray 
min_caml_load_texture_color: 
  lui r1 32 
  addi r1 r1 584 
  jr r31 
(test/sfiles/globals.s)generate_diffuse_ray: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_rgb 
min_caml_load_diffuse_ray: 
  lui r1 32 
  addi r1 r1 596 
  jr r31 
(test/sfiles/globals.s)generate_rgb: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_image_size 
min_caml_load_rgb: 
  lui r1 32 
  addi r1 r1 608 
  jr r31 
(test/sfiles/globals.s)generate_image_size: 
  addi r0 r1 2 
  addi r0 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_image_center 
min_caml_load_image_size: 
  lui r1 32 
  addi r1 r1 620 
  jr r31 
(test/sfiles/globals.s)generate_image_center: 
  addi r0 r1 2 
  addi r0 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_scan_pitch 
min_caml_load_image_center: 
  lui r1 32 
  addi r1 r1 628 
  jr r31 
(test/sfiles/globals.s)generate_scan_pitch: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_startp 
min_caml_load_scan_pitch: 
  lui r1 32 
  addi r1 r1 636 
  jr r31 
(test/sfiles/globals.s)generate_startp: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_startp_fast 
min_caml_load_startp: 
  lui r1 32 
  addi r1 r1 640 
  jr r31 
(test/sfiles/globals.s)generate_startp_fast: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_screenx_dir 
min_caml_load_startp_fast: 
  lui r1 32 
  addi r1 r1 652 
  jr r31 
(test/sfiles/globals.s)generate_screenx_dir: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_screeny_dir 
min_caml_load_screenx_dir: 
  lui r1 32 
  addi r1 r1 664 
  jr r31 
(test/sfiles/globals.s)generate_screeny_dir: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_screenz_dir 
min_caml_load_screeny_dir: 
  lui r1 32 
  addi r1 r1 676 
  jr r31 
(test/sfiles/globals.s)generate_screenz_dir: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_ptrace_dirvec 
min_caml_load_screenz_dir: 
  lui r1 32 
  addi r1 r1 688 
  jr r31 
(test/sfiles/globals.s)generate_ptrace_dirvec: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummyf 
min_caml_load_ptrace_dirvec: 
  lui r1 32 
  addi r1 r1 700 
  jr r31 
(test/sfiles/globals.s)generate_dummyf: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummyff 
(test/sfiles/globals.s)generate_dummyff: 
  addi r0 r1 1 
  lui r2 32 
  addi r2 r2 712 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummy_vs_tmp 
(test/sfiles/globals.s)generate_dummy_vs_tmp: 
  lui r1 32 
  addi r1 r1 712 
  sw r1 r27 0 
  lui r1 32 
  addi r1 r1 716 
  sw r1 r27 4 
  j (test/sfiles/globals.s)generate_dummy_vs 
(test/sfiles/globals.s)generate_dummy_vs: 
  addi r0 r1 1 
  lui r2 32 
  addi r2 r2 720 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dirvecs 
(test/sfiles/globals.s)generate_dirvecs: 
  addi r0 r1 5 
  lui r2 32 
  addi r2 r2 728 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummyf2 
min_caml_load_dirvecs: 
  lui r1 32 
  addi r1 r1 732 
  jr r31 
(test/sfiles/globals.s)generate_dummyf2: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_v3 
(test/sfiles/globals.s)generate_v3: 
  addi r0 r1 3 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_consts 
(test/sfiles/globals.s)generate_consts: 
  addi r0 r1 60 
  lui r2 32 
  addi r2 r2 752 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_light_dirvec 
(test/sfiles/globals.s)generate_light_dirvec: 
  lui r1 32 
  addi r1 r1 756 
  sw r1 r27 0 
  lui r1 32 
  addi r1 r1 768 
  sw r1 r27 4 
  j (test/sfiles/globals.s)generate_dummyf3 
min_caml_load_light_dirvec: 
  lui r1 32 
  addi r1 r1 1008 
  jr r31 
(test/sfiles/globals.s)generate_dummyf3: 
  addi r0 r1 1 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummyff3 
(test/sfiles/globals.s)generate_dummyff3: 
  addi r0 r1 1 
  lui r2 32 
  addi r2 r2 1016 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_dummydv 
(test/sfiles/globals.s)generate_dummydv: 
  lui r1 32 
  addi r1 r1 1016 
  sw r1 r27 0 
  lui r1 32 
  addi r1 r1 1020 
  sw r1 r27 4 
  j (test/sfiles/globals.s)generate_reflections_tmp 
(test/sfiles/globals.s)generate_reflections_tmp: 
  addi r0 r1 0 
  sw r1 r27 0 
  lui r1 32 
  addi r1 r1 1024 
  sw r1 r27 4 
  lui r24 0 
  addi r24 r24 0 
  mtc1 r24 f0 
  swc1 f0 r27 8 
  j (test/sfiles/globals.s)generate_reflections 
(test/sfiles/globals.s)generate_reflections: 
  addi r0 r1 180 
  lui r2 32 
  addi r2 r2 1032 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_n_reflections 
min_caml_load_reflections: 
  lui r1 32 
  addi r1 r1 1044 
  jr r31 
(test/sfiles/globals.s)generate_n_reflections: 
  addi r0 r1 1 
  addi r0 r2 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/globals.s)generate_return 
min_caml_load_n_reflections: 
  lui r1 32 
  addi r1 r1 1764 
  jr r31 
(test/sfiles/globals.s)generate_return: 
  jr r31 

min_caml_print_char: 
  out r1 
  jr r31 
min_caml_print_int: 
  addi r1 r25 0 
  addi r0 r2 10 
  addi r0 r3 1 
  bgez r25 (test/sfiles/io.s)_io_print_int_get_num_digits 
  sub r0 r1 r1 
  addi r0 r4 45 
  out r4 
  j min_caml_print_int 
(test/sfiles/io.s)_io_print_int_get_num_digits: 
  sub r1 r2 r25 
  bltz r25 (test/sfiles/io.s)_io_print_int_loop 
  multi r2 r2 10 
  addi r3 r3 1 
  j (test/sfiles/io.s)_io_print_int_get_num_digits 
(test/sfiles/io.s)_io_print_int_loop: 
  addi r3 r25 0 
  beq r25 r0 (test/sfiles/io.s)_io_print_int_return 
  divi r2 r2 10 
  addi r3 r3 -1 
  div r1 r2 r4 
  mult r2 r4 r5 
  sub r1 r5 r1 
  addi r4 r4 48 
  out r4 
  j (test/sfiles/io.s)_io_print_int_loop 
(test/sfiles/io.s)_io_print_int_return: 
  jr r31 
min_caml_read_int: 
  addi r0 r1 0 # res 
  addi r0 r2 0 # read? 
  addi r0 r3 0 # sgn 
(test/sfiles/io.s)_io_read_int_loop: 
  addi r0 r4 0 
  in r4 
  addi r4 r25 -32 
  blez r25 (test/sfiles/io.s)_io_read_int_check_end 
  addi r4 r25 -45 
  beq r25 r0 (test/sfiles/io.s)_io_read_int_change_sgn 
  addi r4 r25 -43 
  beq r25 r0 (test/sfiles/io.s)_io_read_int_loop 
  addi r4 r4 -48 
  multi r1 r1 10 
  add r1 r4 r1 
  addi r0 r2 1 
  j (test/sfiles/io.s)_io_read_int_loop 
(test/sfiles/io.s)_io_read_int_change_sgn: 
  addi r3 r3 1 
  j (test/sfiles/io.s)_io_read_int_loop 
(test/sfiles/io.s)_io_read_int_check_end: 
  add r2 r0 r25 
  beq r25 r0 (test/sfiles/io.s)_io_read_int_loop 
  andi r3 r3 1 
  addi r3 r25 -1 
  bltz r25 (test/sfiles/io.s)_io_read_int_return 
  sub r0 r1 r1 
(test/sfiles/io.s)_io_read_int_return: 
  jr r31 
min_caml_read_float: 
  addi r0 r2 0 # read? 
  addi r0 r3 0 # sgn 
  addi r0 r5 0 # integer part 
  addi r0 r6 0 # decimal part 
  addi r0 r7 0 # #decimal digits 
  addi r0 r8 10 # ten 
  mtc1 r0 f0 
  mtc1 r0 f1 
  mtc1 r8 f31 
  cvt.s.w f31 f2 # f2 = 10.0 
(test/sfiles/io.s)_io_read_float_integer_part: 
  addi r0 r4 0 
  in r4 
  addi r4 r25 -32 
  blez r25 (test/sfiles/io.s)_io_read_float_check_end 
  addi r4 r25 -45 # '-' 
  beq r25 r0 (test/sfiles/io.s)_io_read_float_change_sgn 
  addi r4 r25 -43 # '+' 
  beq r25 r0 (test/sfiles/io.s)_io_read_float_integer_part 
  addi r4 r25 -46 # '.' 
  beq r25 r0 (test/sfiles/io.s)_io_read_float_decimal_part 
  addi r4 r4 -48 
  multi r5 r5 10 
  add r5 r4 r5 
  addi r0 r2 1 
  j (test/sfiles/io.s)_io_read_float_integer_part 
(test/sfiles/io.s)_io_read_float_change_sgn: 
  addi r3 r3 1 
  j (test/sfiles/io.s)_io_read_float_integer_part 
(test/sfiles/io.s)_io_read_float_decimal_part: 
  addi r0 r4 0 
  in r4 
  addi r4 r25 -32 
  blez r25 (test/sfiles/io.s)_io_read_float_check_end 
  addi r4 r4 -48 
  multi r6 r6 10 
  add r6 r4 r6 
  addi r7 r7 1 
  j (test/sfiles/io.s)_io_read_float_decimal_part 
(test/sfiles/io.s)_io_read_float_check_end: 
  addi r2 r25 0 
  beq r25 r0 (test/sfiles/io.s)_io_read_float_integer_part 
  mtc1 r5 f31 
  cvt.s.w f31 f0 
  mtc1 r6 f31 
  cvt.s.w f31 f1 
(test/sfiles/io.s)_io_read_float_divide_decimal: 
  addi r7 r25 0 
  beq r25 r0 (test/sfiles/io.s)_io_read_float_adapt_sgn 
  addi r7 r7 -1 
  div.s f1 f2 f1 
  j (test/sfiles/io.s)_io_read_float_divide_decimal 
(test/sfiles/io.s)_io_read_float_adapt_sgn: 
  add.s f0 f1 f0 
  andi r3 r3 1 
  addi r3 r25 -1 
  bltz r25 (test/sfiles/io.s)_io_read_float_return 
  neg.s f0 f0 
(test/sfiles/io.s)_io_read_float_return: 
  jr r31 

min_caml_print_char: 
  out r1 
  jr r31 
min_caml_print_int: 
  addi r1 r25 0 
  addi r0 r2 10 
  addi r0 r3 1 
  bgez r25 (test/sfiles/io2.s)_io_print_int_get_num_digits 
  sub r0 r1 r1 
  addi r0 r4 45 
  out r4 
  j min_caml_print_int 
(test/sfiles/io2.s)_io_print_int_get_num_digits: 
  sub r1 r2 r25 
  bltz r25 (test/sfiles/io2.s)_io_print_int_loop 
  multi r2 r2 10 
  addi r3 r3 1 
  j (test/sfiles/io2.s)_io_print_int_get_num_digits 
(test/sfiles/io2.s)_io_print_int_loop: 
  addi r3 r25 0 
  beq r25 r0 (test/sfiles/io2.s)_io_print_int_return 
  divi r2 r2 10 
  addi r3 r3 -1 
  div r1 r2 r4 
  mult r2 r4 r5 
  sub r1 r5 r1 
  addi r4 r4 48 
  out r4 
  j (test/sfiles/io2.s)_io_print_int_loop 
(test/sfiles/io2.s)_io_print_int_return: 
  jr r31 
min_caml_read_int: 
  addi r0 r1 0 
  addi r0 r2 0 
  addi r0 r3 0 
  addi r0 r4 0 
  in r1 
  in r2 
  in r3 
  in r4 
  sll r2 r2 8 
  sll r3 r3 16 
  sll r4 r4 24 
  add r1 r2 r1 
  add r1 r3 r1 
  add r1 r4 r1 
  jr r31 
min_caml_read_float: 
  addi r0 r1 0 
  addi r0 r2 0 
  addi r0 r3 0 
  addi r0 r4 0 
  in r1 
  in r2 
  in r3 
  in r4 
  sll r2 r2 8 
  sll r3 r3 16 
  sll r4 r4 24 
  add r1 r2 r1 
  add r1 r3 r1 
  add r1 r4 r1 
  mtc1 r1 f0 
  jr r31 

min_caml_floor: # float -> float 
  cvt.w.s f0 f0 
  cvt.s.w f0 f0 
  jr r31 
min_caml_floor_retint: # float -> int 
  cvt.w.s f0 f0 
  mfc1 f0 r1 
  jr r31 
min_caml_float_of_int: #int -> float 
  mtc1 r1 f1 
  cvt.s.w f1 f0 
  jr r31 

min_caml_floor_retint: # float -> int 
  cvt.w.s f0 f0 
  mfc1 f0 r1 
  jr r31 
min_caml_float_of_int: #int -> float 
  mtc1 r1 f1 
  cvt.s.w f1 f0 
  jr r31 

(test/sfiles/mathlib.s)sqrt_sub.147: 
  addi r0 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib.s)beq_tail_else.397 
  add.s f1 f2 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  mul.s f3 f3 f4 
  sub.s f4 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.398 
  addi r0 r2 1 
  add r1 r2 r1 
  mov.s f3 f2 
  j (test/sfiles/mathlib.s)sqrt_sub.147 
(test/sfiles/mathlib.s)bfle_tail_else.398: 
  addi r0 r2 1 
  add r1 r2 r1 
  mov.s f3 f1 
  j (test/sfiles/mathlib.s)sqrt_sub.147 
(test/sfiles/mathlib.s)beq_tail_else.397: 
  mov.s f1 f0 
  jr r31 
min_caml_sqrt: 
(test/sfiles/mathlib.s)sqrt.152: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.399 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f2 
  div.s f2 f0 f0 
  swc1 f1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/mathlib.s)sqrt.152 
  addi r30 r30 -8 
  lw r30 r31 4 
  lwc1 r30 f1 0 
  div.s f1 f0 f0 
  jr r31 
(test/sfiles/mathlib.s)bfle_tail_else.399: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/mathlib.s)bfeq_tail_else.400 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.401 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f2 
  j (test/sfiles/mathlib.s)sqrt_sub.147 
(test/sfiles/mathlib.s)bfle_tail_else.401: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/mathlib.s)bfeq_tail_else.402 
  jr r31 
(test/sfiles/mathlib.s)bfeq_tail_else.402: 
  jr r31 
(test/sfiles/mathlib.s)bfeq_tail_else.400: 
  jr r31 
min_caml_int_of_float: 
(test/sfiles/mathlib.s)int_of_float.154: 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_floor 
  addi r30 r30 -4 
  lw r30 r31 0 
  j min_caml_floor_retint 
(test/sfiles/mathlib.s)normalize.156: 
  neg.s f1 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.403 
  div.s f0 f2 f3 
  swc1 f1 r30 0 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f3 f0 
  jal (test/sfiles/mathlib.s)int_of_float.154 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib.s)ble_tail_else.404 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib.s)normalize.156 
(test/sfiles/mathlib.s)ble_tail_else.404: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 8 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib.s)normalize.156 
(test/sfiles/mathlib.s)bfle_tail_else.403: 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.405 
  jr r31 
(test/sfiles/mathlib.s)bfle_tail_else.405: 
  div.s f0 f2 f3 
  swc1 f1 r30 0 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f3 f0 
  jal (test/sfiles/mathlib.s)int_of_float.154 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib.s)ble_tail_else.406 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib.s)normalize.156 
(test/sfiles/mathlib.s)ble_tail_else.406: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 8 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib.s)normalize.156 
(test/sfiles/mathlib.s)sin2.160: 
  mul.s f0 f0 f1 
  lui r24 41751 
  ori r24 r24 42202 
  mtc1 r24 f2 
  mul.s f2 f1 f2 
  lui r24 10058 
  ori r24 r24 38460 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 43863 
  ori r24 r24 16287 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 12080 
  ori r24 r24 37425 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 45783 
  ori r24 r24 12843 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 13880 
  ori r24 r24 61213 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 47440 
  ori r24 r24 3329 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 15368 
  ori r24 r24 34953 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f2 
  lui r24 48682 
  ori r24 r24 43691 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f1 f1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f2 
  add.s f1 f2 f1 
  mul.s f1 f0 f0 
  jr r31 
min_caml_cos: 
(test/sfiles/mathlib.s)cos.162: 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16585 
  ori r24 r24 4059 
  mtc1 r24 f2 
  swc1 f1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/mathlib.s)normalize.156 
  addi r30 r30 -8 
  lw r30 r31 4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.407 
  neg.s f0 f0 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.408 
(test/sfiles/mathlib.s)bfle_nontail_else.407: 
(test/sfiles/mathlib.s)bfle_nontail_cont.408: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.409 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.410 
(test/sfiles/mathlib.s)bfle_nontail_else.409: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
(test/sfiles/mathlib.s)bfle_nontail_cont.410: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.411 
  lwc1 r30 f2 0 
  sub.s f2 f0 f0 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.412 
(test/sfiles/mathlib.s)bfle_nontail_else.411: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  lui r24 49097 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.413 
  lui r24 49225 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.414 
(test/sfiles/mathlib.s)bfle_nontail_else.413: 
(test/sfiles/mathlib.s)bfle_nontail_cont.414: 
(test/sfiles/mathlib.s)bfle_nontail_cont.412: 
  lui r24 16512 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16201 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.415 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  swc1 f1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/mathlib.s)sin2.160 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/mathlib.s)bfle_tail_else.415: 
  mul.s f0 f0 f0 
  lui r24 8434 
  ori r24 r24 41309 
  mtc1 r24 f2 
  mul.s f2 f0 f2 
  lui r24 42292 
  ori r24 r24 5059 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 10583 
  ori r24 r24 16287 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 44361 
  ori r24 r24 52133 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 12559 
  ori r24 r24 30407 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 46227 
  ori r24 r24 62078 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 14288 
  ori r24 r24 3329 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 47798 
  ori r24 r24 2913 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 15658 
  ori r24 r24 43691 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f2 
  lui r24 48896 
  ori r24 r24 0 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f0 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f2 
  add.s f0 f2 f0 
  mul.s f0 f1 f0 
  jr r31 
min_caml_sin: 
(test/sfiles/mathlib.s)sin.164: 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16585 
  ori r24 r24 4059 
  mtc1 r24 f2 
  swc1 f1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/mathlib.s)normalize.156 
  addi r30 r30 -8 
  lw r30 r31 4 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.416 
  lwc1 r30 f1 0 
  sub.s f1 f0 f0 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.417 
(test/sfiles/mathlib.s)bfle_nontail_else.416: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 49097 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.418 
  lui r24 49225 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f1 f0 f0 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.419 
(test/sfiles/mathlib.s)bfle_nontail_else.418: 
(test/sfiles/mathlib.s)bfle_nontail_cont.419: 
(test/sfiles/mathlib.s)bfle_nontail_cont.417: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.420 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.421 
(test/sfiles/mathlib.s)bfle_nontail_else.420: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
(test/sfiles/mathlib.s)bfle_nontail_cont.421: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.422 
  neg.s f0 f0 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.423 
(test/sfiles/mathlib.s)bfle_nontail_else.422: 
(test/sfiles/mathlib.s)bfle_nontail_cont.423: 
  lui r24 16512 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16201 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_tail_else.424 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  swc1 f1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/mathlib.s)cos.162 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/mathlib.s)bfle_tail_else.424: 
  mul.s f0 f0 f2 
  lui r24 41751 
  ori r24 r24 42202 
  mtc1 r24 f3 
  mul.s f3 f2 f3 
  lui r24 10058 
  ori r24 r24 38460 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 43863 
  ori r24 r24 16287 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 12080 
  ori r24 r24 37425 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 45783 
  ori r24 r24 12843 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 13880 
  ori r24 r24 61213 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 47440 
  ori r24 r24 3329 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 15368 
  ori r24 r24 34953 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 48682 
  ori r24 r24 43691 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  mul.s f2 f0 f0 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/mathlib.s)atan_sub.166: 
  addi r0 r2 30 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib.s)beq_tail_else.425 
  add.s f1 f2 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sw r1 r30 8 
  swc1 f0 r30 12 
  swc1 f3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f3 f0 
  jal (test/sfiles/mathlib.s)sin.164 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f1 f0 
  jal (test/sfiles/mathlib.s)cos.162 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  div.s f1 f0 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib.s)bfle_nontail_else.426 
  addi r0 r1 1 
  j (test/sfiles/mathlib.s)bfle_nontail_cont.427 
(test/sfiles/mathlib.s)bfle_nontail_else.426: 
  addi r0 r1 0 
(test/sfiles/mathlib.s)bfle_nontail_cont.427: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib.s)beq_tail_else.428 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lwc1 r30 f0 16 
  lwc1 r30 f2 0 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib.s)atan_sub.166 
(test/sfiles/mathlib.s)beq_tail_else.428: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lwc1 r30 f0 4 
  lwc1 r30 f2 16 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib.s)atan_sub.166 
(test/sfiles/mathlib.s)beq_tail_else.425: 
  mov.s f1 f0 
  jr r31 
min_caml_atan: 
(test/sfiles/mathlib.s)atan.171: 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  addi r0 r1 0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 49097 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  j (test/sfiles/mathlib.s)atan_sub.166 

(test/sfiles/mathlib2.s)floor_sub2.197: 
  sub r2 r1 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1267 
  add r1 r2 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  add.s f1 f2 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1268 
  sub r3 r1 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1269 
  add r1 r3 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  add.s f1 f3 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f2 f4 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1270 
  sub r2 r1 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1271 
  add r1 r2 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  add.s f1 f2 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1272 
  sub r3 r1 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1273 
  add r1 r3 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  add.s f1 f3 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f2 f4 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1274 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1274: 
  mov r1 r2 
  mov r2 r3 
  mov.s f2 f1 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1273: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1272: 
  sub r2 r3 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1275 
  add r3 r2 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  add.s f3 f2 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f1 f4 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1276 
  mov r2 r1 
  mov r1 r3 
  mov.s f1 f2 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1276: 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1275: 
  mov.s f3 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1271: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1270: 
  sub r3 r2 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1277 
  add r2 r3 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  add.s f2 f3 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f1 f4 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1278 
  sub r1 r2 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1279 
  add r2 r1 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  add.s f2 f1 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1280 
  mov r1 r2 
  mov r2 r3 
  mov.s f2 f1 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1280: 
  mov r2 r1 
  mov r1 r3 
  mov.s f1 f2 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1279: 
  mov.s f2 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1278: 
  sub r3 r1 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1281 
  add r1 r3 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  add.s f1 f3 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f2 f4 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1282 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1282: 
  mov r1 r2 
  mov r2 r3 
  mov.s f2 f1 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1281: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1277: 
  mov.s f2 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1269: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1268: 
  sub r2 r3 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1283 
  add r3 r2 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  add.s f3 f2 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f1 f4 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1284 
  sub r1 r3 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1285 
  add r3 r1 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  add.s f3 f1 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f2 f4 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1286 
  sub r2 r3 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1287 
  add r3 r2 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  add.s f3 f2 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f1 f4 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1288 
  mov r2 r1 
  mov r1 r3 
  mov.s f1 f2 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1288: 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1287: 
  mov.s f3 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1286: 
  sub r1 r2 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1289 
  add r2 r1 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  add.s f2 f1 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1290 
  mov r1 r2 
  mov r2 r3 
  mov.s f2 f1 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1290: 
  mov r2 r1 
  mov r1 r3 
  mov.s f1 f2 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1289: 
  mov.s f2 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1285: 
  mov.s f3 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1284: 
  sub r2 r1 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1291 
  add r1 r2 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  add.s f1 f2 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1292 
  sub r3 r1 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1293 
  add r1 r3 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  add.s f1 f3 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f2 f4 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1294 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1294: 
  mov r1 r2 
  mov r2 r3 
  mov.s f2 f1 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1293: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1292: 
  sub r2 r3 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1295 
  add r3 r2 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  add.s f3 f2 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f1 f4 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1296 
  mov r2 r1 
  mov r1 r3 
  mov.s f1 f2 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1296: 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1295: 
  mov.s f3 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1291: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1283: 
  mov.s f3 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1267: 
  mov.s f1 f0 
  jr r31 
min_caml_floor: 
(test/sfiles/mathlib2.s)floor.203: 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f2 
  mtc1 r0 f1 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1297 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1297: 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1298 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1298: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r3 256 
  ori r3 r3 0 
  addi r0 r3 1 
  addi r0 r3 0 
  addi r0 r4 2 
  div r3 r4 r3 
  mtc1 r0 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f3 
  mtc1 r0 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1299 
  sub r3 r1 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1300 
  add r1 r3 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 51840 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1301 
  sub r2 r1 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1302 
  add r1 r2 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  lui r24 52032 
  ori r24 r24 0 
  mtc1 r24 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f3 
  lui r24 51904 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1303 
  mov r2 r3 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1303: 
  mov r1 r3 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1302: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1301: 
  sub r3 r2 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1304 
  add r2 r3 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  lui r24 51840 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 51712 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1305 
  mov r28 r2 
  mov r2 r1 
  mov r1 r28 
  mov.s f2 f31 
  mov.s f1 f2 
  mov.s f31 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1305: 
  mov r2 r3 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1304: 
  mov.s f2 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1300: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1299: 
  sub r2 r3 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1306 
  add r3 r2 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 19072 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1307 
  sub r1 r3 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1308 
  add r3 r1 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  lui r24 19072 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 18944 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1309 
  mov r1 r3 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1309: 
  mov r28 r2 
  mov r2 r1 
  mov r1 r28 
  mov.s f2 f31 
  mov.s f1 f2 
  mov.s f31 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1308: 
  mov.s f3 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1307: 
  sub r2 r1 r3 
  addi r0 r4 1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1310 
  add r1 r2 r3 
  addi r0 r4 2 
  div r3 r4 r3 
  lui r24 19264 
  ori r24 r24 0 
  mtc1 r24 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f3 
  lui r24 19136 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1311 
  mov r2 r3 
  mov.s f3 f2 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)bfle_tail_else.1311: 
  mov r1 r3 
  mov.s f3 f1 
  j (test/sfiles/mathlib2.s)floor_sub2.197 
(test/sfiles/mathlib2.s)beq_tail_else.1310: 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1306: 
  mov.s f3 f0 
  jr r31 
min_caml_int_of_float: 
(test/sfiles/mathlib2.s)int_of_float.205: 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f2 
  mtc1 r0 f1 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1312 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1313 
(test/sfiles/mathlib2.s)bfle_nontail_else.1312: 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1314 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1315 
(test/sfiles/mathlib2.s)bfle_nontail_else.1314: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r3 256 
  ori r3 r3 0 
  addi r0 r3 1 
  addi r0 r3 0 
  addi r0 r4 2 
  div r3 r4 r3 
  mtc1 r0 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f3 
  mtc1 r0 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1316 
  sub r3 r1 r2 
  addi r0 r4 1 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_else.1318 
  add r1 r3 r2 
  addi r0 r4 2 
  div r2 r4 r2 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 51840 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1320 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1321 
(test/sfiles/mathlib2.s)bfle_nontail_else.1320: 
  sw r31 r30 0 
  addi r30 r30 4 
  mov r1 r2 
  mov r2 r3 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -4 
  lw r30 r31 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1321: 
  j (test/sfiles/mathlib2.s)beq_cont.1319 
(test/sfiles/mathlib2.s)beq_else.1318: 
  mov.s f1 f0 
(test/sfiles/mathlib2.s)beq_cont.1319: 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1317 
(test/sfiles/mathlib2.s)bfle_nontail_else.1316: 
  sub r2 r3 r1 
  addi r0 r4 1 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_else.1322 
  add r3 r2 r1 
  addi r0 r4 2 
  div r1 r4 r1 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 19072 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1324 
  sw r31 r30 0 
  addi r30 r30 4 
  mov r2 r1 
  mov r1 r3 
  mov.s f1 f2 
  mov.s f3 f1 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1325 
(test/sfiles/mathlib2.s)bfle_nontail_else.1324: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -4 
  lw r30 r31 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1325: 
  j (test/sfiles/mathlib2.s)beq_cont.1323 
(test/sfiles/mathlib2.s)beq_else.1322: 
  mov.s f3 f0 
(test/sfiles/mathlib2.s)beq_cont.1323: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1317: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1315: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1313: 
  j min_caml_floor_retint 
(test/sfiles/mathlib2.s)normalize.207: 
  neg.s f1 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1326 
  div.s f0 f2 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f1 r30 0 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1327 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1328 
(test/sfiles/mathlib2.s)bfle_nontail_else.1327: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1329 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1330 
(test/sfiles/mathlib2.s)bfle_nontail_else.1329: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  lui r3 256 
  ori r3 r3 0 
  addi r0 r3 1 
  addi r0 r3 0 
  addi r0 r4 2 
  div r3 r4 r3 
  mtc1 r0 f6 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f6 
  mtc1 r0 f6 
  sub.s f6 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1331 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov.s f6 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1332 
(test/sfiles/mathlib2.s)bfle_nontail_else.1331: 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  mov.s f4 f2 
  mov.s f6 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1332: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1330: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1328: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_floor_retint 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1333 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 4 
  mul.s f1 f0 f0 
  lwc1 r30 f2 8 
  sub.s f2 f0 f0 
  lwc1 r30 f2 0 
  neg.s f2 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1334 
  div.s f0 f1 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f0 r30 12 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1335 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1336 
(test/sfiles/mathlib2.s)bfle_nontail_else.1335: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1337 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1338 
(test/sfiles/mathlib2.s)bfle_nontail_else.1337: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 16 
  addi r30 r30 20 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1338: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1336: 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_floor_retint 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1339 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_float_of_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1339: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 12 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)bfle_tail_else.1334: 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1340 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1340: 
  div.s f0 f1 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f0 r30 12 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1341 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1342 
(test/sfiles/mathlib2.s)bfle_nontail_else.1341: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1343 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1344 
(test/sfiles/mathlib2.s)bfle_nontail_else.1343: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 16 
  addi r30 r30 20 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1344: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1342: 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_floor_retint 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1345 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_float_of_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1345: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 12 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1333: 
  lwc1 r30 f0 4 
  lwc1 r30 f1 8 
  add.s f1 f0 f1 
  lwc1 r30 f2 0 
  neg.s f2 f3 
  sub.s f3 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1346 
  div.s f1 f0 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f1 r30 16 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1347 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1348 
(test/sfiles/mathlib2.s)bfle_nontail_else.1347: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1349 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1350 
(test/sfiles/mathlib2.s)bfle_nontail_else.1349: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -24 
  lw r30 r31 20 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1350: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1348: 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_floor_retint 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1351 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_float_of_int 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 16 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1351: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 16 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)bfle_tail_else.1346: 
  sub.s f2 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1352 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1352: 
  div.s f1 f0 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f1 r30 16 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1353 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1354 
(test/sfiles/mathlib2.s)bfle_nontail_else.1353: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1355 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1356 
(test/sfiles/mathlib2.s)bfle_nontail_else.1355: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -24 
  lw r30 r31 20 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1356: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1354: 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_floor_retint 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1357 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_float_of_int 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 16 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1357: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 16 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)bfle_tail_else.1326: 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1358 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1358: 
  div.s f0 f2 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f1 r30 0 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1359 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1360 
(test/sfiles/mathlib2.s)bfle_nontail_else.1359: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1361 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1362 
(test/sfiles/mathlib2.s)bfle_nontail_else.1361: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  lui r3 256 
  ori r3 r3 0 
  addi r0 r3 1 
  addi r0 r3 0 
  addi r0 r4 2 
  div r3 r4 r3 
  mtc1 r0 f6 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f6 
  mtc1 r0 f6 
  sub.s f6 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1363 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r2 r3 
  mov.s f6 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -24 
  lw r30 r31 20 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1364 
(test/sfiles/mathlib2.s)bfle_nontail_else.1363: 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  mov.s f4 f2 
  mov.s f6 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -24 
  lw r30 r31 20 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1364: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1362: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1360: 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_floor_retint 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1365 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_float_of_int 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 4 
  mul.s f1 f0 f0 
  lwc1 r30 f2 8 
  sub.s f2 f0 f0 
  lwc1 r30 f2 0 
  neg.s f2 f3 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1366 
  div.s f0 f1 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f0 r30 20 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1367 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1368 
(test/sfiles/mathlib2.s)bfle_nontail_else.1367: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1369 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1370 
(test/sfiles/mathlib2.s)bfle_nontail_else.1369: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -28 
  lw r30 r31 24 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1370: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1368: 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_floor_retint 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1371 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_float_of_int 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1371: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 20 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)bfle_tail_else.1366: 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1372 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1372: 
  div.s f0 f1 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f0 r30 20 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1373 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1374 
(test/sfiles/mathlib2.s)bfle_nontail_else.1373: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1375 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1376 
(test/sfiles/mathlib2.s)bfle_nontail_else.1375: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -28 
  lw r30 r31 24 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1376: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1374: 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_floor_retint 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1377 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_float_of_int 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1377: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 20 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1365: 
  lwc1 r30 f0 4 
  lwc1 r30 f1 8 
  sub.s f1 f0 f1 
  lwc1 r30 f2 0 
  neg.s f2 f3 
  sub.s f3 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1378 
  div.s f1 f0 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f1 r30 24 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1379 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1380 
(test/sfiles/mathlib2.s)bfle_nontail_else.1379: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1381 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1382 
(test/sfiles/mathlib2.s)bfle_nontail_else.1381: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 28 
  addi r30 r30 32 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -32 
  lw r30 r31 28 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1382: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1380: 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_floor_retint 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1383 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_float_of_int 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 24 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1383: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 24 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)bfle_tail_else.1378: 
  sub.s f2 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1384 
  mov.s f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1384: 
  div.s f1 f0 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f1 r30 24 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1385 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1386 
(test/sfiles/mathlib2.s)bfle_nontail_else.1385: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1387 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1388 
(test/sfiles/mathlib2.s)bfle_nontail_else.1387: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 28 
  addi r30 r30 32 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -32 
  lw r30 r31 28 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1388: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1386: 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_floor_retint 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_tail_else.1389 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_float_of_int 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 24 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)ble_tail_else.1389: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 24 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  j (test/sfiles/mathlib2.s)normalize.207 
(test/sfiles/mathlib2.s)sin2.211: 
  mul.s f0 f0 f1 
  mul.s f1 f1 f2 
  lui r24 32769 
  ori r24 r24 5826 
  mtc1 r24 f3 
  mul.s f3 f2 f3 
  lui r24 34593 
  ori r24 r24 42647 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 37096 
  ori r24 r24 54670 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 39483 
  ori r24 r24 3489 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 41751 
  ori r24 r24 42202 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 43863 
  ori r24 r24 16287 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 45783 
  ori r24 r24 12843 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 47440 
  ori r24 r24 3329 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 48682 
  ori r24 r24 43691 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r24 540 
  ori r24 r24 52567 
  mtc1 r24 f4 
  mul.s f4 f2 f4 
  lui r24 3090 
  ori r24 r24 53196 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 5535 
  ori r24 r24 40551 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 7864 
  ori r24 r24 56440 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 10058 
  ori r24 r24 38460 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 12080 
  ori r24 r24 37425 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 13880 
  ori r24 r24 61213 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 15368 
  ori r24 r24 34953 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f2 f4 f2 
  mul.s f3 f1 f1 
  add.s f2 f1 f1 
  mul.s f0 f1 f0 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1390 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1390: 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1391 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1391: 
  jr r31 
min_caml_cos: 
(test/sfiles/mathlib2.s)cos.213: 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16585 
  ori r24 r24 4059 
  mtc1 r24 f2 
  lui r24 49225 
  ori r24 r24 4059 
  mtc1 r24 f3 
  swc1 f1 r30 0 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1392 
  div.s f0 f2 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1394 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1395 
(test/sfiles/mathlib2.s)bfle_nontail_else.1394: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1396 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1397 
(test/sfiles/mathlib2.s)bfle_nontail_else.1396: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1397: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1395: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_floor_retint 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_nontail_else.1398 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/mathlib2.s)ble_nontail_cont.1399 
(test/sfiles/mathlib2.s)ble_nontail_else.1398: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 8 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)ble_nontail_cont.1399: 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1393 
(test/sfiles/mathlib2.s)bfle_nontail_else.1392: 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1400 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1401 
(test/sfiles/mathlib2.s)bfle_nontail_else.1400: 
  div.s f0 f2 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1402 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1403 
(test/sfiles/mathlib2.s)bfle_nontail_else.1402: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1404 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1405 
(test/sfiles/mathlib2.s)bfle_nontail_else.1404: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1405: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1403: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_floor_retint 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_nontail_else.1406 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/mathlib2.s)ble_nontail_cont.1407 
(test/sfiles/mathlib2.s)ble_nontail_else.1406: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 8 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)ble_nontail_cont.1407: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1401: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1393: 
  mtc1 r0 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1408 
  neg.s f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1409 
(test/sfiles/mathlib2.s)bfle_nontail_else.1408: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1409: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1410 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1411 
(test/sfiles/mathlib2.s)bfle_nontail_else.1410: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1411: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1412 
  lwc1 r30 f2 0 
  sub.s f2 f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1413 
(test/sfiles/mathlib2.s)bfle_nontail_else.1412: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  lui r24 49097 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1414 
  lui r24 49225 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1415 
(test/sfiles/mathlib2.s)bfle_nontail_else.1414: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1415: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1413: 
  lui r24 16512 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16201 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1416 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  swc1 f1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/mathlib2.s)sin2.211 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1416: 
  mul.s f0 f0 f0 
  mul.s f0 f0 f2 
  mtc1 r0 f3 
  mul.s f3 f2 f3 
  lui r24 1185 
  ori r24 r24 42673 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 3717 
  ori r24 r24 3153 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 6137 
  ori r24 r24 26497 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 8434 
  ori r24 r24 41309 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 10583 
  ori r24 r24 16287 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 12559 
  ori r24 r24 30407 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 14288 
  ori r24 r24 3329 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 15658 
  ori r24 r24 43691 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  mul.s f3 f2 f3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r24 32805 
  ori r24 r24 1489 
  mtc1 r24 f4 
  mul.s f4 f2 f4 
  lui r24 35228 
  ori r24 r24 39266 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 37700 
  ori r24 r24 29744 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 40070 
  ori r24 r24 29131 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 42292 
  ori r24 r24 5059 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 44361 
  ori r24 r24 52133 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 46227 
  ori r24 r24 62078 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f4 
  lui r24 47798 
  ori r24 r24 2913 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f2 f2 
  lui r24 48896 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f2 f4 f2 
  mul.s f2 f0 f0 
  add.s f3 f0 f0 
  mul.s f0 f1 f0 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1417 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1417: 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1418 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1418: 
  jr r31 
min_caml_sin: 
(test/sfiles/mathlib2.s)sin.215: 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16585 
  ori r24 r24 4059 
  mtc1 r24 f2 
  lui r24 49225 
  ori r24 r24 4059 
  mtc1 r24 f3 
  swc1 f1 r30 0 
  sub.s f3 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1419 
  div.s f0 f2 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1421 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1422 
(test/sfiles/mathlib2.s)bfle_nontail_else.1421: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1423 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1424 
(test/sfiles/mathlib2.s)bfle_nontail_else.1423: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1424: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1422: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_floor_retint 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  addi r0 r2 -10 
  sub r2 r1 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_nontail_else.1425 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/mathlib2.s)ble_nontail_cont.1426 
(test/sfiles/mathlib2.s)ble_nontail_else.1425: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 8 
  add.s f0 f2 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)ble_nontail_cont.1426: 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1420 
(test/sfiles/mathlib2.s)bfle_nontail_else.1419: 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1427 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1428 
(test/sfiles/mathlib2.s)bfle_nontail_else.1427: 
  div.s f0 f2 f3 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  add.s f3 f4 f3 
  lui r2 128 
  ori r2 r2 0 
  lui r24 19200 
  ori r24 r24 0 
  mtc1 r24 f4 
  mtc1 r0 f5 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  swc1 f2 r30 4 
  swc1 f0 r30 8 
  sub.s f5 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1429 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1430 
(test/sfiles/mathlib2.s)bfle_nontail_else.1429: 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1431 
  mov.s f3 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1432 
(test/sfiles/mathlib2.s)bfle_nontail_else.1431: 
  lui r1 65408 
  ori r1 r1 0 
  lui r24 51968 
  ori r24 r24 0 
  mtc1 r24 f5 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f4 f2 
  mov.s f5 f1 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)floor_sub2.197 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1432: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1430: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_floor_retint 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 10 
  sub r1 r2 r25 
  blez r25 (test/sfiles/mathlib2.s)ble_nontail_else.1433 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f2 4 
  mul.s f2 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/mathlib2.s)ble_nontail_cont.1434 
(test/sfiles/mathlib2.s)ble_nontail_else.1433: 
  lwc1 r30 f2 4 
  lwc1 r30 f0 8 
  sub.s f0 f2 f0 
  lwc1 r30 f1 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/mathlib2.s)normalize.207 
  addi r30 r30 -16 
  lw r30 r31 12 
(test/sfiles/mathlib2.s)ble_nontail_cont.1434: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1428: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1420: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1435 
  lwc1 r30 f1 0 
  sub.s f1 f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1436 
(test/sfiles/mathlib2.s)bfle_nontail_else.1435: 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f1 
  lui r24 49097 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1437 
  lui r24 49225 
  ori r24 r24 4059 
  mtc1 r24 f1 
  sub.s f1 f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1438 
(test/sfiles/mathlib2.s)bfle_nontail_else.1437: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1438: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1436: 
  mtc1 r0 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1439 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1440 
(test/sfiles/mathlib2.s)bfle_nontail_else.1439: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1440: 
  mtc1 r0 f2 
  sub.s f2 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1441 
  neg.s f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1442 
(test/sfiles/mathlib2.s)bfle_nontail_else.1441: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1442: 
  lui r24 16512 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16201 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1443 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  swc1 f1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/mathlib2.s)cos.213 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1443: 
  mul.s f0 f0 f2 
  mul.s f2 f2 f3 
  lui r24 32769 
  ori r24 r24 5826 
  mtc1 r24 f4 
  mul.s f4 f3 f4 
  lui r24 34593 
  ori r24 r24 42647 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 37096 
  ori r24 r24 54670 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 39483 
  ori r24 r24 3489 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 41751 
  ori r24 r24 42202 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 43863 
  ori r24 r24 16287 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 45783 
  ori r24 r24 12843 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 47440 
  ori r24 r24 3329 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  mul.s f4 f3 f4 
  lui r24 48682 
  ori r24 r24 43691 
  mtc1 r24 f5 
  add.s f4 f5 f4 
  lui r24 540 
  ori r24 r24 52567 
  mtc1 r24 f5 
  mul.s f5 f3 f5 
  lui r24 3090 
  ori r24 r24 53196 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f5 
  lui r24 5535 
  ori r24 r24 40551 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f5 
  lui r24 7864 
  ori r24 r24 56440 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f5 
  lui r24 10058 
  ori r24 r24 38460 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f5 
  lui r24 12080 
  ori r24 r24 37425 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f5 
  lui r24 13880 
  ori r24 r24 61213 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f5 
  lui r24 15368 
  ori r24 r24 34953 
  mtc1 r24 f6 
  add.s f5 f6 f5 
  mul.s f5 f3 f3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f5 
  add.s f3 f5 f3 
  mul.s f4 f2 f2 
  add.s f3 f2 f2 
  mul.s f0 f2 f0 
  mul.s f0 f1 f0 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1444 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1444: 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1445 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1445: 
  jr r31 
(test/sfiles/mathlib2.s)atan_sub.217: 
  addi r0 r2 30 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1446 
  add.s f1 f2 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sw r1 r30 8 
  swc1 f0 r30 12 
  swc1 f3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)sin.215 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f1 f0 
  jal (test/sfiles/mathlib2.s)cos.213 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  div.s f1 f0 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  mtc1 r0 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1447 
  addi r0 r1 1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1448 
(test/sfiles/mathlib2.s)bfle_nontail_else.1447: 
  addi r0 r1 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1448: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1449 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  addi r0 r2 30 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1450 
  lwc1 r30 f0 0 
  lwc1 r30 f2 16 
  add.s f2 f0 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sw r1 r30 24 
  swc1 f3 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)sin.215 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov.s f1 f0 
  jal (test/sfiles/mathlib2.s)cos.213 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  div.s f1 f0 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  mtc1 r0 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1451 
  addi r0 r1 1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1452 
(test/sfiles/mathlib2.s)bfle_nontail_else.1451: 
  addi r0 r1 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1452: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1453 
  addi r0 r1 1 
  lw r30 r2 24 
  add r2 r1 r1 
  lwc1 r30 f0 28 
  lwc1 r30 f2 0 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib2.s)atan_sub.217 
(test/sfiles/mathlib2.s)beq_tail_else.1453: 
  addi r0 r1 1 
  lw r30 r2 24 
  add r2 r1 r1 
  lwc1 r30 f0 16 
  lwc1 r30 f2 28 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib2.s)atan_sub.217 
(test/sfiles/mathlib2.s)beq_tail_else.1450: 
  lwc1 r30 f0 0 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1449: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  addi r0 r2 30 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1454 
  lwc1 r30 f0 16 
  lwc1 r30 f2 4 
  add.s f2 f0 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f4 
  div.s f3 f4 f3 
  sw r1 r30 36 
  swc1 f3 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)sin.215 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  swc1 f0 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov.s f1 f0 
  jal (test/sfiles/mathlib2.s)cos.213 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  div.s f1 f0 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  mtc1 r0 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1455 
  addi r0 r1 1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1456 
(test/sfiles/mathlib2.s)bfle_nontail_else.1455: 
  addi r0 r1 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1456: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1457 
  addi r0 r1 1 
  lw r30 r2 36 
  add r2 r1 r1 
  lwc1 r30 f0 40 
  lwc1 r30 f2 16 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib2.s)atan_sub.217 
(test/sfiles/mathlib2.s)beq_tail_else.1457: 
  addi r0 r1 1 
  lw r30 r2 36 
  add r2 r1 r1 
  lwc1 r30 f0 4 
  lwc1 r30 f2 40 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib2.s)atan_sub.217 
(test/sfiles/mathlib2.s)beq_tail_else.1454: 
  lwc1 r30 f0 16 
  jr r31 
(test/sfiles/mathlib2.s)beq_tail_else.1446: 
  mov.s f2 f0 
  jr r31 
min_caml_atan: 
(test/sfiles/mathlib2.s)atan.222: 
  mtc1 r0 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_tail_else.1458 
  neg.s f0 f0 
  mtc1 r0 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1459 
  neg.s f0 f0 
  mtc1 r0 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1461 
  neg.s f0 f0 
  mtc1 r0 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1463 
  neg.s f0 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/mathlib2.s)atan.222 
  addi r30 r30 -4 
  lw r30 r31 0 
  neg.s f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1464 
(test/sfiles/mathlib2.s)bfle_nontail_else.1463: 
  mtc1 r0 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/mathlib2.s)bfeq_nontail_else.1465 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  addi r0 r1 0 
  mtc1 r0 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/mathlib2.s)atan_sub.217 
  addi r30 r30 -4 
  lw r30 r31 0 
  j (test/sfiles/mathlib2.s)bfeq_nontail_cont.1466 
(test/sfiles/mathlib2.s)bfeq_nontail_else.1465: 
(test/sfiles/mathlib2.s)bfeq_nontail_cont.1466: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1464: 
  neg.s f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1462 
(test/sfiles/mathlib2.s)bfle_nontail_else.1461: 
  mtc1 r0 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/mathlib2.s)bfeq_nontail_else.1467 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  addi r0 r1 0 
  mtc1 r0 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  addi r0 r1 30 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f3 
  lui r24 16201 
  ori r24 r24 4059 
  mtc1 r24 f3 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  swc1 f3 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)sin.215 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f0 
  jal (test/sfiles/mathlib2.s)cos.213 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  div.s f1 f0 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  mtc1 r0 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1469 
  addi r0 r1 1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1470 
(test/sfiles/mathlib2.s)bfle_nontail_else.1469: 
  addi r0 r1 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1470: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_else.1471 
  addi r0 r1 1 
  addi r0 r1 1 
  lwc1 r30 f0 12 
  lwc1 r30 f2 0 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  jal (test/sfiles/mathlib2.s)atan_sub.217 
  addi r30 r30 -24 
  lw r30 r31 20 
  j (test/sfiles/mathlib2.s)beq_cont.1472 
(test/sfiles/mathlib2.s)beq_else.1471: 
  addi r0 r1 1 
  addi r0 r1 1 
  lwc1 r30 f0 4 
  lwc1 r30 f2 12 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  jal (test/sfiles/mathlib2.s)atan_sub.217 
  addi r30 r30 -24 
  lw r30 r31 20 
(test/sfiles/mathlib2.s)beq_cont.1472: 
  j (test/sfiles/mathlib2.s)bfeq_nontail_cont.1468 
(test/sfiles/mathlib2.s)bfeq_nontail_else.1467: 
(test/sfiles/mathlib2.s)bfeq_nontail_cont.1468: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1462: 
  neg.s f0 f0 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1460 
(test/sfiles/mathlib2.s)bfle_nontail_else.1459: 
  mtc1 r0 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/mathlib2.s)bfeq_nontail_else.1473 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  addi r0 r1 0 
  mtc1 r0 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/mathlib2.s)atan_sub.217 
  addi r30 r30 -24 
  lw r30 r31 20 
  j (test/sfiles/mathlib2.s)bfeq_nontail_cont.1474 
(test/sfiles/mathlib2.s)bfeq_nontail_else.1473: 
(test/sfiles/mathlib2.s)bfeq_nontail_cont.1474: 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1460: 
  neg.s f0 f0 
  jr r31 
(test/sfiles/mathlib2.s)bfle_tail_else.1458: 
  mtc1 r0 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/mathlib2.s)bfeq_tail_else.1475 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  addi r0 r1 0 
  mtc1 r0 f1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f2 
  addi r0 r1 30 
  lui r24 16329 
  ori r24 r24 4059 
  mtc1 r24 f3 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f3 
  lui r24 16201 
  ori r24 r24 4059 
  mtc1 r24 f3 
  swc1 f2 r30 20 
  swc1 f1 r30 24 
  swc1 f0 r30 28 
  swc1 f3 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov.s f3 f0 
  jal (test/sfiles/mathlib2.s)sin.215 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  mov.s f1 f0 
  jal (test/sfiles/mathlib2.s)cos.213 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  div.s f1 f0 f0 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
  mtc1 r0 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/mathlib2.s)bfle_nontail_else.1476 
  addi r0 r1 1 
  j (test/sfiles/mathlib2.s)bfle_nontail_cont.1477 
(test/sfiles/mathlib2.s)bfle_nontail_else.1476: 
  addi r0 r1 0 
(test/sfiles/mathlib2.s)bfle_nontail_cont.1477: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/mathlib2.s)beq_tail_else.1478 
  addi r0 r1 1 
  addi r0 r1 1 
  lwc1 r30 f0 32 
  lwc1 r30 f2 20 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib2.s)atan_sub.217 
(test/sfiles/mathlib2.s)beq_tail_else.1478: 
  addi r0 r1 1 
  addi r0 r1 1 
  lwc1 r30 f0 24 
  lwc1 r30 f2 32 
  mov.s f1 f31 
  mov.s f0 f1 
  mov.s f31 f0 
  j (test/sfiles/mathlib2.s)atan_sub.217 
(test/sfiles/mathlib2.s)bfeq_tail_else.1475: 
  jr r31 

(test/sfiles/minrt.s)xor.2682: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8266 
  addi r0 r1 0 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8267 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8267: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8266: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt.s)sgn.2685: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8268 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8269 
(test/sfiles/minrt.s)bfeq_nontail_else.8268: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8269: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8270 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8270: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8271 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8272 
(test/sfiles/minrt.s)bfle_nontail_else.8271: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8272: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8273 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8273: 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/minrt.s)fneg_cond.2687: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8274 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8274: 
  neg.s f0 f0 
  jr r31 
(test/sfiles/minrt.s)add_mod5.2690: 
  add r1 r2 r1 
  addi r0 r2 5 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8275 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8275: 
  addi r0 r2 5 
  sub r1 r2 r1 
  jr r31 
(test/sfiles/minrt.s)vecset.2693: 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r2 1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r0 r2 2 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  jr r31 
(test/sfiles/minrt.s)vecfill.2698: 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r2 1 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r2 2 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)vecbzero.2701: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)vecfill.2698 
(test/sfiles/minrt.s)veccpy.2703: 
  addi r0 r3 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 2 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)vecunit_sgn.2711: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f0 f1 f0 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_sqrt 
  addi r30 r30 -12 
  lw r30 r31 8 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8279 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8280 
(test/sfiles/minrt.s)bfeq_nontail_else.8279: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8280: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8281 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8282 
(test/sfiles/minrt.s)beq_else.8281: 
  addi r0 r1 0 
  lw r30 r2 4 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8283 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f0 
  j (test/sfiles/minrt.s)beq_cont.8284 
(test/sfiles/minrt.s)beq_else.8283: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f0 
(test/sfiles/minrt.s)beq_cont.8284: 
(test/sfiles/minrt.s)beq_cont.8282: 
  addi r0 r1 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 0 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  sll r1 r1 2 
  swoc1 f1 r3 r1 
  addi r0 r1 1 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  sll r1 r1 2 
  swoc1 f1 r3 r1 
  addi r0 r1 2 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f0 
  sll r1 r1 2 
  swoc1 f0 r3 r1 
  jr r31 
(test/sfiles/minrt.s)veciprod.2714: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  mul.s f0 f1 f0 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r2 r3 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt.s)veciprod2.2717: 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f3 f0 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f3 f1 f1 
  add.s f0 f1 f0 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt.s)vecaccum.2722: 
  addi r0 r3 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r1 r4 f1 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  mul.s f0 f2 f2 
  add.s f1 f2 f1 
  sll r3 r3 2 
  swoc1 f1 r1 r3 
  addi r0 r3 1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r1 r4 f1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  mul.s f0 f2 f2 
  add.s f1 f2 f1 
  sll r3 r3 2 
  swoc1 f1 r1 r3 
  addi r0 r3 2 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r1 r4 f1 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  mul.s f0 f2 f0 
  add.s f1 f0 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)vecadd.2726: 
  addi r0 r3 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r1 r4 f0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  add.s f0 f1 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r1 r4 f0 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  add.s f0 f1 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 2 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r1 r4 f0 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  add.s f0 f1 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)vecscale.2732: 
  addi r0 r2 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r0 r2 1 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r0 r2 2 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)vecaccumv.2735: 
  addi r0 r4 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r1 r5 f0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r2 r5 f1 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r3 r5 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r4 r4 2 
  swoc1 f0 r1 r4 
  addi r0 r4 1 
  addi r0 r5 1 
  sll r5 r5 2 
  lwoc1 r1 r5 f0 
  addi r0 r5 1 
  sll r5 r5 2 
  lwoc1 r2 r5 f1 
  addi r0 r5 1 
  sll r5 r5 2 
  lwoc1 r3 r5 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r4 r4 2 
  swoc1 f0 r1 r4 
  addi r0 r4 2 
  addi r0 r5 2 
  sll r5 r5 2 
  lwoc1 r1 r5 f0 
  addi r0 r5 2 
  sll r5 r5 2 
  lwoc1 r2 r5 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r4 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)o_texturetype.2739: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt.s)o_form.2741: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt.s)o_reflectiontype.2743: 
  lw r1 r1 8 
  jr r31 
(test/sfiles/minrt.s)o_isinvert.2745: 
  lw r1 r1 24 
  jr r31 
(test/sfiles/minrt.s)o_isrot.2747: 
  lw r1 r1 12 
  jr r31 
(test/sfiles/minrt.s)o_param_a.2749: 
  lw r1 r1 16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_b.2751: 
  lw r1 r1 16 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_c.2753: 
  lw r1 r1 16 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_abc.2755: 
  lw r1 r1 16 
  jr r31 
(test/sfiles/minrt.s)o_param_x.2757: 
  lw r1 r1 20 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_y.2759: 
  lw r1 r1 20 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_z.2761: 
  lw r1 r1 20 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_diffuse.2763: 
  lw r1 r1 28 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_hilight.2765: 
  lw r1 r1 28 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_color_red.2767: 
  lw r1 r1 32 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_color_green.2769: 
  lw r1 r1 32 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_color_blue.2771: 
  lw r1 r1 32 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_r1.2773: 
  lw r1 r1 36 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_r2.2775: 
  lw r1 r1 36 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_r3.2777: 
  lw r1 r1 36 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt.s)o_param_ctbl.2779: 
  lw r1 r1 40 
  jr r31 
(test/sfiles/minrt.s)p_rgb.2781: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt.s)p_intersection_points.2783: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt.s)p_surface_ids.2785: 
  lw r1 r1 8 
  jr r31 
(test/sfiles/minrt.s)p_calc_diffuse.2787: 
  lw r1 r1 12 
  jr r31 
(test/sfiles/minrt.s)p_energy.2789: 
  lw r1 r1 16 
  jr r31 
(test/sfiles/minrt.s)p_received_ray_20percent.2791: 
  lw r1 r1 20 
  jr r31 
(test/sfiles/minrt.s)p_group_id.2793: 
  lw r1 r1 24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  jr r31 
(test/sfiles/minrt.s)p_set_group_id.2795: 
  lw r1 r1 24 
  addi r0 r3 0 
  sll r3 r3 2 
  swo r2 r1 r3 
  jr r31 
(test/sfiles/minrt.s)p_nvectors.2798: 
  lw r1 r1 28 
  jr r31 
(test/sfiles/minrt.s)d_vec.2800: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt.s)d_const.2802: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt.s)r_surface_id.2804: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt.s)r_dvec.2806: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt.s)r_bright.2808: 
  lwc1 r1 f0 8 
  jr r31 
(test/sfiles/minrt.s)rad.2810: 
  lui r24 15502 
  ori r24 r24 64053 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt.s)read_screen_settings.2812: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_read_float 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  swoc1 f0 r2 r1 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  sw r1 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_read_float 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 2 
  sw r1 r30 16 
  sw r2 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_read_float 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r1 20 
  sll r1 r1 2 
  lw r30 r2 16 
  swoc1 f0 r2 r1 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_read_float 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -28 
  lw r30 r31 24 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_cos 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -36 
  lw r30 r31 32 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal min_caml_read_float 
  addi r30 r30 -40 
  lw r30 r31 36 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -40 
  lw r30 r31 36 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal min_caml_cos 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -48 
  lw r30 r31 44 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  lwc1 r30 f1 28 
  mul.s f1 f0 f2 
  lui r24 17224 
  ori r24 r24 0 
  mtc1 r24 f3 
  mul.s f2 f3 f2 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  lui r24 49992 
  ori r24 r24 0 
  mtc1 r24 f2 
  lwc1 r30 f3 32 
  mul.s f3 f2 f2 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  lwc1 r30 f2 40 
  mul.s f1 f2 f4 
  lui r24 17224 
  ori r24 r24 0 
  mtc1 r24 f5 
  mul.s f4 f5 f4 
  sll r2 r2 2 
  swoc1 f4 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sll r2 r2 2 
  swoc1 f4 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  neg.s f0 f4 
  sll r2 r2 2 
  swoc1 f4 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  neg.s f3 f4 
  mul.s f4 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  neg.s f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  neg.s f3 f0 
  mul.s f0 f2 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  sub.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  sub.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  sub.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)read_light.2814: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_read_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_read_float 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -4 
  lw r30 r31 0 
  swc1 f0 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_sin 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r2 1 
  neg.s f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_read_float 
  addi r30 r30 -8 
  lw r30 r31 4 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -8 
  lw r30 r31 4 
  lwc1 r30 f1 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  lwc1 r30 f0 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_cos 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_beam 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_read_float 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt.s)rotate_quadratic_matrix.2816: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_cos 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  lwc1 r30 f2 16 
  mul.s f2 f1 f3 
  lwc1 r30 f4 20 
  lwc1 r30 f5 12 
  mul.s f5 f4 f6 
  mul.s f6 f1 f6 
  lwc1 r30 f7 8 
  mul.s f7 f0 f8 
  sub.s f6 f8 f6 
  mul.s f7 f4 f8 
  mul.s f8 f1 f8 
  mul.s f5 f0 f9 
  add.s f8 f9 f8 
  mul.s f2 f0 f9 
  mul.s f5 f4 f10 
  mul.s f10 f0 f10 
  mul.s f7 f1 f11 
  add.s f10 f11 f10 
  mul.s f7 f4 f11 
  mul.s f11 f0 f0 
  mul.s f5 f1 f1 
  sub.s f0 f1 f0 
  neg.s f4 f1 
  mul.s f5 f2 f4 
  mul.s f7 f2 f2 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f5 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f7 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f11 
  addi r0 r1 0 
  mul.s f3 f3 f12 
  mul.s f5 f12 f12 
  mul.s f9 f9 f13 
  mul.s f7 f13 f13 
  add.s f12 f13 f12 
  mul.s f1 f1 f13 
  mul.s f11 f13 f13 
  add.s f12 f13 f12 
  sll r1 r1 2 
  swoc1 f12 r2 r1 
  addi r0 r1 1 
  mul.s f6 f6 f12 
  mul.s f5 f12 f12 
  mul.s f10 f10 f13 
  mul.s f7 f13 f13 
  add.s f12 f13 f12 
  mul.s f4 f4 f13 
  mul.s f11 f13 f13 
  add.s f12 f13 f12 
  sll r1 r1 2 
  swoc1 f12 r2 r1 
  addi r0 r1 2 
  mul.s f8 f8 f12 
  mul.s f5 f12 f12 
  mul.s f0 f0 f13 
  mul.s f7 f13 f13 
  add.s f12 f13 f12 
  mul.s f2 f2 f13 
  mul.s f11 f13 f13 
  add.s f12 f13 f12 
  sll r1 r1 2 
  swoc1 f12 r2 r1 
  addi r0 r1 0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f12 
  mul.s f5 f6 f13 
  mul.s f13 f8 f13 
  mul.s f7 f10 f14 
  mul.s f14 f0 f14 
  add.s f13 f14 f13 
  mul.s f11 f4 f14 
  mul.s f14 f2 f14 
  add.s f13 f14 f13 
  mul.s f12 f13 f12 
  sll r1 r1 2 
  lw r30 r2 4 
  swoc1 f12 r2 r1 
  addi r0 r1 1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f12 
  mul.s f5 f3 f13 
  mul.s f13 f8 f8 
  mul.s f7 f9 f13 
  mul.s f13 f0 f0 
  add.s f8 f0 f0 
  mul.s f11 f1 f8 
  mul.s f8 f2 f2 
  add.s f0 f2 f0 
  mul.s f12 f0 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f0 
  mul.s f5 f3 f2 
  mul.s f2 f6 f2 
  mul.s f7 f9 f3 
  mul.s f3 f10 f3 
  add.s f2 f3 f2 
  mul.s f11 f1 f1 
  mul.s f1 f4 f1 
  add.s f2 f1 f1 
  mul.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt.s)read_nth_object.2819: 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_read_int 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 -1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8294 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_read_int 
  addi r30 r30 -12 
  lw r30 r31 8 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_read_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_read_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_read_float 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal min_caml_read_float 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal min_caml_read_float 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 32 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 36 
  addi r30 r30 40 
  jal min_caml_create_float_array 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sw r1 r30 36 
  sw r2 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal min_caml_read_float 
  addi r30 r30 -48 
  lw r30 r31 44 
  lw r30 r1 40 
  sll r1 r1 2 
  lw r30 r2 36 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  jal min_caml_read_float 
  addi r30 r30 -52 
  lw r30 r31 48 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 36 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal min_caml_read_float 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r1 48 
  sll r1 r1 2 
  lw r30 r2 36 
  swoc1 f0 r2 r1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  swc1 f0 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal min_caml_read_float 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8295 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8296 
(test/sfiles/minrt.s)bfle_nontail_else.8295: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8296: 
  addi r0 r2 2 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -64 
  lw r30 r31 60 
  addi r0 r2 0 
  sw r1 r30 60 
  sw r2 r30 64 
  sw r31 r30 68 
  addi r30 r30 72 
  jal min_caml_read_float 
  addi r30 r30 -72 
  lw r30 r31 68 
  lw r30 r1 64 
  sll r1 r1 2 
  lw r30 r2 60 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal min_caml_read_float 
  addi r30 r30 -76 
  lw r30 r31 72 
  lw r30 r1 68 
  sll r1 r1 2 
  lw r30 r2 60 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 72 
  addi r30 r30 76 
  jal min_caml_create_float_array 
  addi r30 r30 -76 
  lw r30 r31 72 
  addi r0 r2 0 
  sw r1 r30 72 
  sw r2 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  jal min_caml_read_float 
  addi r30 r30 -84 
  lw r30 r31 80 
  lw r30 r1 76 
  sll r1 r1 2 
  lw r30 r2 72 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 80 
  sw r31 r30 84 
  addi r30 r30 88 
  jal min_caml_read_float 
  addi r30 r30 -88 
  lw r30 r31 84 
  lw r30 r1 80 
  sll r1 r1 2 
  lw r30 r2 72 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 84 
  sw r31 r30 88 
  addi r30 r30 92 
  jal min_caml_read_float 
  addi r30 r30 -92 
  lw r30 r31 88 
  lw r30 r1 84 
  sll r1 r1 2 
  lw r30 r2 72 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 88 
  addi r30 r30 92 
  jal min_caml_create_float_array 
  addi r30 r30 -92 
  lw r30 r31 88 
  addi r0 r2 0 
  lw r30 r3 16 
  sw r1 r30 88 
  sub r3 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8297 
  addi r0 r2 0 
  sw r2 r30 92 
  sw r31 r30 96 
  addi r30 r30 100 
  jal min_caml_read_float 
  addi r30 r30 -100 
  lw r30 r31 96 
  sw r31 r30 96 
  addi r30 r30 100 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -100 
  lw r30 r31 96 
  lw r30 r1 92 
  sll r1 r1 2 
  lw r30 r2 88 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 96 
  sw r31 r30 100 
  addi r30 r30 104 
  jal min_caml_read_float 
  addi r30 r30 -104 
  lw r30 r31 100 
  sw r31 r30 100 
  addi r30 r30 104 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -104 
  lw r30 r31 100 
  lw r30 r1 96 
  sll r1 r1 2 
  lw r30 r2 88 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 100 
  sw r31 r30 104 
  addi r30 r30 108 
  jal min_caml_read_float 
  addi r30 r30 -108 
  lw r30 r31 104 
  sw r31 r30 104 
  addi r30 r30 108 
  jal (test/sfiles/minrt.s)rad.2810 
  addi r30 r30 -108 
  lw r30 r31 104 
  lw r30 r1 100 
  sll r1 r1 2 
  lw r30 r2 88 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8298 
(test/sfiles/minrt.s)beq_else.8297: 
(test/sfiles/minrt.s)beq_cont.8298: 
  addi r0 r1 2 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8299 
  lw r30 r1 56 
  j (test/sfiles/minrt.s)beq_cont.8300 
(test/sfiles/minrt.s)beq_else.8299: 
  addi r0 r1 1 
(test/sfiles/minrt.s)beq_cont.8300: 
  addi r0 r3 4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 104 
  sw r31 r30 108 
  addi r30 r30 112 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -112 
  lw r30 r31 108 
  mov r2 r27 
  addi r27 r27 48 
  sw r1 r2 40 
  lw r30 r1 88 
  sw r1 r2 36 
  lw r30 r3 72 
  sw r3 r2 32 
  lw r30 r3 60 
  sw r3 r2 28 
  lw r30 r3 104 
  sw r3 r2 24 
  lw r30 r3 36 
  sw r3 r2 20 
  lw r30 r3 20 
  sw r3 r2 16 
  lw r30 r4 16 
  sw r4 r2 12 
  lw r30 r5 12 
  sw r5 r2 8 
  lw r30 r5 8 
  sw r5 r2 4 
  lw r30 r6 4 
  sw r6 r2 0 
  addi r30 r30 108 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -108 
  lw r30 r7 0 
  sll r7 r7 2 
  swo r2 r6 r7 
  addi r0 r2 3 
  sub r5 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8301 
  addi r0 r2 2 
  sub r5 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8303 
  j (test/sfiles/minrt.s)beq_cont.8304 
(test/sfiles/minrt.s)beq_else.8303: 
  addi r0 r2 0 
  lw r30 r5 56 
  sub r5 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8305 
  addi r0 r2 0 
  j (test/sfiles/minrt.s)beq_cont.8306 
(test/sfiles/minrt.s)beq_else.8305: 
  addi r0 r2 1 
(test/sfiles/minrt.s)beq_cont.8306: 
  sw r31 r30 108 
  addi r30 r30 112 
  mov r1 r3 
  jal (test/sfiles/minrt.s)vecunit_sgn.2711 
  addi r30 r30 -112 
  lw r30 r31 108 
(test/sfiles/minrt.s)beq_cont.8304: 
  j (test/sfiles/minrt.s)beq_cont.8302 
(test/sfiles/minrt.s)beq_else.8301: 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r3 r2 f0 
  addi r0 r2 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8307 
  addi r0 r5 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8308 
(test/sfiles/minrt.s)bfeq_nontail_else.8307: 
  addi r0 r5 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8308: 
  addi r0 r6 0 
  sw r2 r30 108 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8309 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8310 
(test/sfiles/minrt.s)beq_else.8309: 
  swc1 f0 r30 112 
  sw r31 r30 116 
  addi r30 r30 120 
  jal (test/sfiles/minrt.s)sgn.2685 
  addi r30 r30 -120 
  lw r30 r31 116 
  lwc1 r30 f1 112 
  mul.s f1 f1 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt.s)beq_cont.8310: 
  lw r30 r1 108 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f0 
  addi r0 r1 1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8311 
  addi r0 r3 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8312 
(test/sfiles/minrt.s)bfeq_nontail_else.8311: 
  addi r0 r3 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8312: 
  addi r0 r4 0 
  sw r1 r30 116 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8313 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8314 
(test/sfiles/minrt.s)beq_else.8313: 
  swc1 f0 r30 120 
  sw r31 r30 124 
  addi r30 r30 128 
  jal (test/sfiles/minrt.s)sgn.2685 
  addi r30 r30 -128 
  lw r30 r31 124 
  lwc1 r30 f1 120 
  mul.s f1 f1 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt.s)beq_cont.8314: 
  lw r30 r1 116 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f0 
  addi r0 r1 2 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8315 
  addi r0 r3 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8316 
(test/sfiles/minrt.s)bfeq_nontail_else.8315: 
  addi r0 r3 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8316: 
  addi r0 r4 0 
  sw r1 r30 124 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8317 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8318 
(test/sfiles/minrt.s)beq_else.8317: 
  swc1 f0 r30 128 
  sw r31 r30 132 
  addi r30 r30 136 
  jal (test/sfiles/minrt.s)sgn.2685 
  addi r30 r30 -136 
  lw r30 r31 132 
  lwc1 r30 f1 128 
  mul.s f1 f1 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt.s)beq_cont.8318: 
  lw r30 r1 124 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8302: 
  addi r0 r1 0 
  lw r30 r2 16 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8319 
  lw r30 r1 20 
  lw r30 r2 88 
  sw r31 r30 132 
  addi r30 r30 136 
  jal (test/sfiles/minrt.s)rotate_quadratic_matrix.2816 
  addi r30 r30 -136 
  lw r30 r31 132 
  j (test/sfiles/minrt.s)beq_cont.8320 
(test/sfiles/minrt.s)beq_else.8319: 
(test/sfiles/minrt.s)beq_cont.8320: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8294: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)read_object.2821: 
  addi r0 r2 60 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8321 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt.s)read_nth_object.2819 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8322 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r1 
  j (test/sfiles/minrt.s)read_object.2821 
(test/sfiles/minrt.s)beq_tail_else.8322: 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8321: 
  jr r31 
(test/sfiles/minrt.s)read_all_object.2823: 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)read_object.2821 
(test/sfiles/minrt.s)read_net_item.2825: 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_read_int 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 -1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8325 
  addi r0 r2 1 
  lw r30 r3 0 
  add r3 r2 r2 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r2 
  jal (test/sfiles/minrt.s)read_net_item.2825 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8325: 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r1 
  addi r0 r2 -1 
  j min_caml_create_array 
(test/sfiles/minrt.s)read_or_network.2827: 
  addi r0 r2 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r1 r2 
  jal (test/sfiles/minrt.s)read_net_item.2825 
  addi r30 r30 -8 
  lw r30 r31 4 
  mov r2 r1 
  addi r0 r1 0 
  sll r1 r1 2 
  lwo r2 r1 r1 
  addi r0 r3 -1 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8326 
  addi r0 r1 1 
  lw r30 r3 0 
  add r3 r1 r1 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)read_or_network.2827 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8326: 
  addi r0 r1 1 
  lw r30 r3 0 
  add r3 r1 r1 
  j min_caml_create_array 
(test/sfiles/minrt.s)read_and_network.2829: 
  addi r0 r2 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r1 r2 
  jal (test/sfiles/minrt.s)read_net_item.2825 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r2 
  addi r0 r3 -1 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8327 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -4 
  lw r30 r3 0 
  sll r3 r4 2 
  swo r1 r2 r4 
  addi r0 r1 1 
  add r3 r1 r1 
  j (test/sfiles/minrt.s)read_and_network.2829 
(test/sfiles/minrt.s)beq_tail_else.8327: 
  jr r31 
(test/sfiles/minrt.s)read_parameter.2831: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)read_screen_settings.2812 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)read_light.2814 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)read_all_object.2823 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)read_and_network.2829 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  addi r0 r3 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal (test/sfiles/minrt.s)read_or_network.2827 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  jr r31 
(test/sfiles/minrt.s)solver_rect_surface.2833: 
  sll r3 r6 2 
  lwoc1 r2 r6 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8330 
  addi r0 r6 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8331 
(test/sfiles/minrt.s)bfeq_nontail_else.8330: 
  addi r0 r6 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8331: 
  addi r0 r7 0 
  sub r6 r7 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8332 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8332: 
  swc1 f2 r30 0 
  sw r5 r30 4 
  swc1 f1 r30 8 
  sw r4 r30 12 
  swc1 f0 r30 16 
  sw r2 r30 20 
  sw r3 r30 24 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_abc.2755 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 28 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -40 
  lw r30 r31 36 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r2 24 
  sll r2 r3 2 
  lw r30 r4 20 
  lwoc1 r4 r3 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8333 
  addi r0 r3 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8334 
(test/sfiles/minrt.s)bfle_nontail_else.8333: 
  addi r0 r3 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8334: 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt.s)xor.2682 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r2 24 
  sll r2 r3 2 
  lw r30 r4 32 
  lwoc1 r4 r3 f0 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)fneg_cond.2687 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 16 
  sub.s f0 f1 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  lwoc1 r2 r1 f1 
  div.s f0 f1 f0 
  lw r30 r1 12 
  sll r1 r3 2 
  lw r30 r4 32 
  lwoc1 r4 r3 f1 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  mul.s f0 f2 f2 
  lwc1 r30 f3 8 
  add.s f2 f3 f2 
  abs.s f2 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8335 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8336 
(test/sfiles/minrt.s)bfle_nontail_else.8335: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8336: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8337 
  lw r30 r1 4 
  sll r1 r3 2 
  lwoc1 r4 r3 f1 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  mul.s f0 f2 f2 
  lwc1 r30 f3 0 
  add.s f2 f3 f2 
  abs.s f2 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8338 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8339 
(test/sfiles/minrt.s)bfle_nontail_else.8338: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8339: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8340 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8340: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8337: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_rect.2842: 
  addi r0 r3 0 
  addi r0 r4 1 
  addi r0 r5 2 
  swc1 f0 r30 0 
  swc1 f2 r30 4 
  swc1 f1 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)solver_rect_surface.2833 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8341 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8341: 
  addi r0 r3 1 
  addi r0 r4 2 
  addi r0 r5 0 
  lwc1 r30 f0 8 
  lwc1 r30 f1 4 
  lwc1 r30 f2 0 
  lw r30 r1 16 
  lw r30 r2 12 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)solver_rect_surface.2833 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8342 
  addi r0 r1 2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8342: 
  addi r0 r3 2 
  addi r0 r4 0 
  addi r0 r5 1 
  lwc1 r30 f0 4 
  lwc1 r30 f1 0 
  lwc1 r30 f2 8 
  lw r30 r1 16 
  lw r30 r2 12 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)solver_rect_surface.2833 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8343 
  addi r0 r1 3 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8343: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_surface.2848: 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_abc.2755 
  addi r30 r30 -20 
  lw r30 r31 16 
  mov r2 r1 
  lw r30 r1 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -24 
  lw r30 r31 20 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8344 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8345 
(test/sfiles/minrt.s)bfle_nontail_else.8344: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8345: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8346 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 0 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  lwc1 r30 f3 0 
  lw r30 r3 16 
  sw r1 r30 20 
  sw r2 r30 24 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt.s)veciprod2.2717 
  addi r30 r30 -36 
  lw r30 r31 32 
  neg.s f0 f0 
  lwc1 r30 f1 28 
  div.s f0 f1 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8346: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)quadratic.2854: 
  mul.s f0 f0 f3 
  swc1 f0 r30 0 
  swc1 f2 r30 4 
  sw r1 r30 8 
  swc1 f1 r30 12 
  swc1 f3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lwc1 r30 f1 12 
  mul.s f1 f1 f2 
  lw r30 r1 8 
  swc1 f0 r30 20 
  swc1 f2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lwc1 r30 f1 20 
  add.s f1 f0 f0 
  lwc1 r30 f1 4 
  mul.s f1 f1 f2 
  lw r30 r1 8 
  swc1 f0 r30 28 
  swc1 f2 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  mul.s f1 f0 f0 
  lwc1 r30 f1 28 
  add.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_isrot.2747 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8347 
  lwc1 r30 f0 4 
  lwc1 r30 f1 12 
  mul.s f1 f0 f2 
  lw r30 r1 8 
  swc1 f2 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)o_param_r1.2773 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  mul.s f1 f0 f0 
  lwc1 r30 f1 36 
  add.s f1 f0 f0 
  lwc1 r30 f1 0 
  lwc1 r30 f2 4 
  mul.s f2 f1 f2 
  lw r30 r1 8 
  swc1 f0 r30 44 
  swc1 f2 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)o_param_r2.2775 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f1 48 
  mul.s f1 f0 f0 
  lwc1 r30 f1 44 
  add.s f1 f0 f0 
  lwc1 r30 f1 12 
  lwc1 r30 f2 0 
  mul.s f2 f1 f1 
  lw r30 r1 8 
  swc1 f0 r30 52 
  swc1 f1 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  jal (test/sfiles/minrt.s)o_param_r3.2777 
  addi r30 r30 -64 
  lw r30 r31 60 
  lwc1 r30 f1 56 
  mul.s f1 f0 f0 
  lwc1 r30 f1 52 
  add.s f1 f0 f0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8347: 
  lwc1 r30 f0 36 
  jr r31 
(test/sfiles/minrt.s)bilinear.2859: 
  mul.s f0 f3 f6 
  swc1 f3 r30 0 
  swc1 f0 r30 4 
  swc1 f5 r30 8 
  swc1 f2 r30 12 
  sw r1 r30 16 
  swc1 f4 r30 20 
  swc1 f1 r30 24 
  swc1 f6 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  mul.s f1 f0 f0 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  mul.s f2 f1 f3 
  lw r30 r1 16 
  swc1 f0 r30 32 
  swc1 f3 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  mul.s f1 f0 f0 
  lwc1 r30 f1 32 
  add.s f1 f0 f0 
  lwc1 r30 f1 8 
  lwc1 r30 f2 12 
  mul.s f2 f1 f3 
  lw r30 r1 16 
  swc1 f0 r30 40 
  swc1 f3 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  mul.s f1 f0 f0 
  lwc1 r30 f1 40 
  add.s f1 f0 f0 
  lw r30 r1 16 
  swc1 f0 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)o_isrot.2747 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8348 
  lwc1 r30 f0 20 
  lwc1 r30 f1 12 
  mul.s f1 f0 f2 
  lwc1 r30 f3 8 
  lwc1 r30 f4 24 
  mul.s f4 f3 f5 
  add.s f2 f5 f2 
  lw r30 r1 16 
  swc1 f2 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt.s)o_param_r1.2773 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  mul.s f2 f1 f1 
  lwc1 r30 f3 0 
  lwc1 r30 f4 12 
  mul.s f4 f3 f4 
  add.s f1 f4 f1 
  lw r30 r1 16 
  swc1 f0 r30 56 
  swc1 f1 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt.s)o_param_r2.2775 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 60 
  mul.s f1 f0 f0 
  lwc1 r30 f1 56 
  add.s f1 f0 f0 
  lwc1 r30 f1 20 
  lwc1 r30 f2 4 
  mul.s f2 f1 f1 
  lwc1 r30 f2 0 
  lwc1 r30 f3 24 
  mul.s f3 f2 f2 
  add.s f1 f2 f1 
  lw r30 r1 16 
  swc1 f0 r30 64 
  swc1 f1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal (test/sfiles/minrt.s)o_param_r3.2777 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 68 
  mul.s f1 f0 f0 
  lwc1 r30 f1 64 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 48 
  add.s f1 f0 f0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8348: 
  lwc1 r30 f0 48 
  jr r31 
(test/sfiles/minrt.s)solver_second.2867: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f3 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r2 r3 f4 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r2 r3 f5 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f5 f2 
  mov.s f4 f1 
  mov.s f3 f0 
  jal (test/sfiles/minrt.s)quadratic.2854 
  addi r30 r30 -24 
  lw r30 r31 20 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8349 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8350 
(test/sfiles/minrt.s)bfeq_nontail_else.8349: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8350: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8351 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8351: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 16 
  lwoc1 r2 r1 f1 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f3 
  lwc1 r30 f4 8 
  lwc1 r30 f5 4 
  lwc1 r30 f6 0 
  lw r30 r1 12 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  mov.s f4 f3 
  mov.s f5 f4 
  mov.s f6 f5 
  jal (test/sfiles/minrt.s)bilinear.2859 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  lwc1 r30 f3 0 
  lw r30 r1 12 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt.s)quadratic.2854 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 12 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r2 3 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8352 
  lwc1 r30 f0 28 
  j (test/sfiles/minrt.s)beq_cont.8353 
(test/sfiles/minrt.s)beq_else.8352: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
(test/sfiles/minrt.s)beq_cont.8353: 
  lwc1 r30 f1 24 
  mul.s f1 f1 f2 
  lwc1 r30 f3 20 
  mul.s f3 f0 f0 
  sub.s f2 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8354 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8355 
(test/sfiles/minrt.s)bfle_nontail_else.8354: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8355: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8356 
  sw r31 r30 32 
  addi r30 r30 36 
  jal min_caml_sqrt 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r1 12 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8357 
  lwc1 r30 f0 32 
  j (test/sfiles/minrt.s)beq_cont.8358 
(test/sfiles/minrt.s)beq_else.8357: 
  lwc1 r30 f0 32 
  neg.s f0 f0 
(test/sfiles/minrt.s)beq_cont.8358: 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  lwc1 r30 f1 24 
  sub.s f0 f1 f0 
  lwc1 r30 f1 20 
  div.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8356: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver.2873: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r1 2 
  lwo r4 r1 r1 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 8 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)o_param_y.2759 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 8 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 24 
  swc1 f1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8359 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8360 
  lwc1 r30 f0 16 
  lwc1 r30 f1 24 
  lwc1 r30 f2 32 
  lw r30 r1 4 
  lw r30 r2 0 
  j (test/sfiles/minrt.s)solver_second.2867 
(test/sfiles/minrt.s)beq_tail_else.8360: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 24 
  lwc1 r30 f2 32 
  lw r30 r1 4 
  lw r30 r2 0 
  j (test/sfiles/minrt.s)solver_surface.2848 
(test/sfiles/minrt.s)beq_tail_else.8359: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 24 
  lwc1 r30 f2 32 
  lw r30 r1 4 
  lw r30 r2 0 
  j (test/sfiles/minrt.s)solver_rect.2842 
(test/sfiles/minrt.s)solver_rect_fast.2877: 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f3 
  sub.s f3 f0 f3 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f4 
  mul.s f3 f4 f3 
  swc1 f0 r30 0 
  sw r3 r30 4 
  swc1 f2 r30 8 
  sw r1 r30 12 
  swc1 f1 r30 16 
  swc1 f3 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 20 
  mul.s f2 f1 f1 
  lwc1 r30 f3 16 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8361 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8362 
(test/sfiles/minrt.s)bfle_nontail_else.8361: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8362: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8363 
  lw r30 r1 12 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 20 
  mul.s f2 f1 f1 
  lwc1 r30 f3 8 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8365 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8366 
(test/sfiles/minrt.s)bfle_nontail_else.8365: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8366: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8367 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8369 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8370 
(test/sfiles/minrt.s)bfeq_nontail_else.8369: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8370: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8371 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)beq_cont.8372 
(test/sfiles/minrt.s)beq_else.8371: 
  addi r0 r1 1 
(test/sfiles/minrt.s)beq_cont.8372: 
  j (test/sfiles/minrt.s)beq_cont.8368 
(test/sfiles/minrt.s)beq_else.8367: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8368: 
  j (test/sfiles/minrt.s)beq_cont.8364 
(test/sfiles/minrt.s)beq_else.8363: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8364: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8373 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8373: 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lwc1 r30 f1 16 
  sub.s f0 f1 f0 
  addi r0 r1 3 
  sll r1 r1 2 
  lwoc1 r3 r1 f2 
  mul.s f0 f2 f0 
  lw r30 r1 12 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 28 
  mul.s f2 f1 f1 
  lwc1 r30 f3 0 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8374 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8375 
(test/sfiles/minrt.s)bfle_nontail_else.8374: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8375: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8376 
  lw r30 r1 12 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 28 
  mul.s f2 f1 f1 
  lwc1 r30 f3 8 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8378 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8379 
(test/sfiles/minrt.s)bfle_nontail_else.8378: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8379: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8380 
  addi r0 r1 3 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8382 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8383 
(test/sfiles/minrt.s)bfeq_nontail_else.8382: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8383: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8384 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)beq_cont.8385 
(test/sfiles/minrt.s)beq_else.8384: 
  addi r0 r1 1 
(test/sfiles/minrt.s)beq_cont.8385: 
  j (test/sfiles/minrt.s)beq_cont.8381 
(test/sfiles/minrt.s)beq_else.8380: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8381: 
  j (test/sfiles/minrt.s)beq_cont.8377 
(test/sfiles/minrt.s)beq_else.8376: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8377: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8386 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -32 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r0 r1 2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8386: 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lwc1 r30 f1 8 
  sub.s f0 f1 f0 
  addi r0 r1 5 
  sll r1 r1 2 
  lwoc1 r3 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 12 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 32 
  mul.s f2 f1 f1 
  lwc1 r30 f3 0 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8387 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8388 
(test/sfiles/minrt.s)bfle_nontail_else.8387: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8388: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8389 
  lw r30 r1 12 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 32 
  mul.s f2 f1 f1 
  lwc1 r30 f3 16 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8391 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8392 
(test/sfiles/minrt.s)bfle_nontail_else.8391: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8392: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8393 
  addi r0 r1 5 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8395 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8396 
(test/sfiles/minrt.s)bfeq_nontail_else.8395: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8396: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8397 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)beq_cont.8398 
(test/sfiles/minrt.s)beq_else.8397: 
  addi r0 r1 1 
(test/sfiles/minrt.s)beq_cont.8398: 
  j (test/sfiles/minrt.s)beq_cont.8394 
(test/sfiles/minrt.s)beq_else.8393: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8394: 
  j (test/sfiles/minrt.s)beq_cont.8390 
(test/sfiles/minrt.s)beq_else.8389: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8390: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8399 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r0 r1 3 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8399: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_surface_fast.2884: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f3 
  addi r0 r1 0 
  sll r1 r1 2 
  lwoc1 r2 r1 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8400 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8401 
(test/sfiles/minrt.s)bfle_nontail_else.8400: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8401: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8402 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  mul.s f3 f0 f0 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  mul.s f3 f1 f1 
  add.s f0 f1 f0 
  addi r0 r4 3 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8402: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_second_fast.2890: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8403 
  addi r0 r3 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8404 
(test/sfiles/minrt.s)bfeq_nontail_else.8403: 
  addi r0 r3 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8404: 
  addi r0 r4 0 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8405 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8405: 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r2 r3 f4 
  mul.s f4 f0 f4 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r2 r3 f5 
  mul.s f5 f1 f5 
  add.s f4 f5 f4 
  addi r0 r3 3 
  sll r3 r3 2 
  lwoc1 r2 r3 f5 
  mul.s f5 f2 f5 
  add.s f4 f5 f4 
  sw r2 r30 0 
  swc1 f3 r30 4 
  swc1 f4 r30 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)quadratic.2854 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 3 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8406 
  lwc1 r30 f0 16 
  j (test/sfiles/minrt.s)beq_cont.8407 
(test/sfiles/minrt.s)beq_else.8406: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 16 
  sub.s f1 f0 f0 
(test/sfiles/minrt.s)beq_cont.8407: 
  lwc1 r30 f1 8 
  mul.s f1 f1 f2 
  lwc1 r30 f3 4 
  mul.s f3 f0 f0 
  sub.s f2 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8408 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8409 
(test/sfiles/minrt.s)bfle_nontail_else.8408: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8409: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8410 
  lw r30 r1 12 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8411 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  lwc1 r30 f0 20 
  sw r1 r30 24 
  sw r2 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal min_caml_sqrt 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 8 
  add.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 24 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8412 
(test/sfiles/minrt.s)beq_else.8411: 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -32 
  addi r0 r2 0 
  lwc1 r30 f0 20 
  sw r1 r30 32 
  sw r2 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal min_caml_sqrt 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 36 
  sll r1 r1 2 
  lw r30 r2 32 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8412: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8410: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_fast.2896: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r5 2 
  lwo r4 r5 r4 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r3 r5 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r4 r30 8 
  sw r3 r30 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r4 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  sub.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 12 
  lwoc1 r2 r1 f1 
  lw r30 r1 8 
  swc1 f0 r30 20 
  swc1 f1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_param_y.2759 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  sub.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 12 
  lwoc1 r2 r1 f1 
  lw r30 r1 8 
  swc1 f0 r30 28 
  swc1 f1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)d_const.2802 
  addi r30 r30 -44 
  lw r30 r31 40 
  lw r30 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 8 
  sw r1 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -48 
  lw r30 r31 44 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8413 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8414 
  lwc1 r30 f0 20 
  lwc1 r30 f1 28 
  lwc1 r30 f2 36 
  lw r30 r1 8 
  lw r30 r2 40 
  j (test/sfiles/minrt.s)solver_second_fast.2890 
(test/sfiles/minrt.s)beq_tail_else.8414: 
  lwc1 r30 f0 20 
  lwc1 r30 f1 28 
  lwc1 r30 f2 36 
  lw r30 r1 8 
  lw r30 r2 40 
  j (test/sfiles/minrt.s)solver_surface_fast.2884 
(test/sfiles/minrt.s)beq_tail_else.8413: 
  lw r30 r1 4 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -48 
  lw r30 r31 44 
  mov r2 r1 
  lwc1 r30 f0 20 
  lwc1 r30 f1 28 
  lwc1 r30 f2 36 
  lw r30 r1 8 
  lw r30 r3 40 
  j (test/sfiles/minrt.s)solver_rect_fast.2877 
(test/sfiles/minrt.s)solver_surface_fast2.2900: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lwoc1 r2 r1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8415 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8416 
(test/sfiles/minrt.s)bfle_nontail_else.8415: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8416: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8417 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r2 r5 f0 
  addi r0 r2 3 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  mul.s f0 f1 f0 
  sll r4 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8417: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_second_fast2.2907: 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8418 
  addi r0 r4 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8419 
(test/sfiles/minrt.s)bfeq_nontail_else.8418: 
  addi r0 r4 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8419: 
  addi r0 r5 0 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8420 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8420: 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f4 
  mul.s f4 f0 f0 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f4 
  mul.s f4 f1 f1 
  add.s f0 f1 f0 
  addi r0 r4 3 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  addi r0 r4 3 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f0 f2 
  mul.s f3 f1 f1 
  sub.s f2 f1 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8421 
  addi r0 r3 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8422 
(test/sfiles/minrt.s)bfle_nontail_else.8421: 
  addi r0 r3 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8422: 
  addi r0 r4 0 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8423 
  sw r2 r30 0 
  swc1 f0 r30 4 
  swc1 f1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8424 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  lwc1 r30 f0 8 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_sqrt 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 4 
  add.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8425 
(test/sfiles/minrt.s)beq_else.8424: 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 0 
  lwc1 r30 f0 8 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_sqrt 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8425: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8423: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solver_fast2.2914: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r4 2 
  lwo r3 r4 r3 
  sw r3 r30 0 
  sw r1 r30 4 
  sw r2 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_ctbl.2779 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  lw r30 r2 8 
  sw r1 r30 12 
  swc1 f2 r30 16 
  swc1 f1 r30 20 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt.s)d_const.2802 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r2 4 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 0 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8426 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8427 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 16 
  lw r30 r1 0 
  lw r30 r2 28 
  lw r30 r3 12 
  j (test/sfiles/minrt.s)solver_second_fast2.2907 
(test/sfiles/minrt.s)beq_tail_else.8427: 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 16 
  lw r30 r1 0 
  lw r30 r2 28 
  lw r30 r3 12 
  j (test/sfiles/minrt.s)solver_surface_fast2.2900 
(test/sfiles/minrt.s)beq_tail_else.8426: 
  lw r30 r1 8 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -36 
  lw r30 r31 32 
  mov r2 r1 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 16 
  lw r30 r1 0 
  lw r30 r3 28 
  j (test/sfiles/minrt.s)solver_rect_fast.2877 
(test/sfiles/minrt.s)setup_rect_table.2917: 
  addi r0 r3 6 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8428 
  addi r0 r2 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8429 
(test/sfiles/minrt.s)bfeq_nontail_else.8428: 
  addi r0 r2 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8429: 
  addi r0 r4 0 
  sw r1 r30 8 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8430 
  addi r0 r2 1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  j (test/sfiles/minrt.s)beq_cont.8431 
(test/sfiles/minrt.s)beq_else.8430: 
  addi r0 r2 0 
  lw r30 r4 0 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r4 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8432 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8433 
(test/sfiles/minrt.s)bfle_nontail_else.8432: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8433: 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)xor.2682 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 0 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)fneg_cond.2687 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r3 0 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f1 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8431: 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8434 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8435 
(test/sfiles/minrt.s)bfeq_nontail_else.8434: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8435: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8436 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r1 r1 2 
  lw r30 r3 8 
  swoc1 f0 r3 r1 
  j (test/sfiles/minrt.s)beq_cont.8437 
(test/sfiles/minrt.s)beq_else.8436: 
  addi r0 r1 2 
  lw r30 r3 0 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -28 
  lw r30 r31 24 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8438 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8439 
(test/sfiles/minrt.s)bfle_nontail_else.8438: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8439: 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)xor.2682 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 0 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)fneg_cond.2687 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 20 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r3 1 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f1 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8437: 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8440 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8441 
(test/sfiles/minrt.s)bfeq_nontail_else.8440: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8441: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8442 
  addi r0 r1 5 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8443 
(test/sfiles/minrt.s)beq_else.8442: 
  addi r0 r1 4 
  lw r30 r3 0 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -36 
  lw r30 r31 32 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r2 2 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8444 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8445 
(test/sfiles/minrt.s)bfle_nontail_else.8444: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8445: 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)xor.2682 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 0 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)fneg_cond.2687 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 5 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r3 2 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f1 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8443: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt.s)setup_surface_table.2920: 
  addi r0 r3 4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  lw r30 r2 0 
  sw r1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  mul.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  mul.s f1 f0 f0 
  lwc1 r30 f1 16 
  add.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 24 
  swc1 f1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  add.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8446 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8447 
(test/sfiles/minrt.s)bfle_nontail_else.8446: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8447: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8448 
  addi r0 r1 0 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f1 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f1 r2 r1 
  addi r0 r1 1 
  lw r30 r3 0 
  sw r1 r30 32 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  div.s f0 f1 f0 
  neg.s f0 f0 
  lw r30 r1 32 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  lw r30 r3 0 
  sw r1 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 36 
  div.s f0 f1 f0 
  neg.s f0 f0 
  lw r30 r1 40 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lw r30 r3 0 
  sw r1 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 36 
  div.s f0 f1 f0 
  neg.s f0 f0 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8449 
(test/sfiles/minrt.s)beq_else.8448: 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8449: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt.s)setup_second_table.2923: 
  addi r0 r3 5 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  lw r30 r2 0 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt.s)quadratic.2854 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 12 
  swc1 f1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  neg.s f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 20 
  swc1 f1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  neg.s f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 28 
  swc1 f1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  mul.s f1 f0 f0 
  neg.s f0 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 8 
  lwc1 r30 f1 12 
  swoc1 f1 r2 r1 
  lw r30 r1 0 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_isrot.2747 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8450 
  addi r0 r1 1 
  addi r0 r2 2 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  lw r30 r2 0 
  sw r1 r30 40 
  swc1 f0 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_r2.2775 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  mul.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 48 
  swc1 f1 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt.s)o_param_r3.2777 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  lwc1 r30 f1 48 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  lw r30 r1 40 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  addi r0 r3 2 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 0 
  sw r1 r30 56 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_r1.2773 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 60 
  mul.s f1 f0 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 64 
  swc1 f1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal (test/sfiles/minrt.s)o_param_r3.2777 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 68 
  mul.s f1 f0 f0 
  lwc1 r30 f1 64 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
  lw r30 r1 56 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  addi r0 r3 1 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 0 
  sw r1 r30 72 
  swc1 f0 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_r1.2773 
  addi r30 r30 -84 
  lw r30 r31 80 
  lwc1 r30 f1 76 
  mul.s f1 f0 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 80 
  swc1 f1 r30 84 
  sw r31 r30 88 
  addi r30 r30 92 
  jal (test/sfiles/minrt.s)o_param_r2.2775 
  addi r30 r30 -92 
  lw r30 r31 88 
  lwc1 r30 f1 84 
  mul.s f1 f0 f0 
  lwc1 r30 f1 80 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 36 
  sub.s f1 f0 f0 
  lw r30 r1 72 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8451 
(test/sfiles/minrt.s)beq_else.8450: 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 8 
  lwc1 r30 f0 20 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwc1 r30 f0 28 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  sll r1 r1 2 
  lwc1 r30 f0 36 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8451: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt.s)bfeq_nontail_else.8452 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)bfeq_nontail_cont.8453 
(test/sfiles/minrt.s)bfeq_nontail_else.8452: 
  addi r0 r1 1 
(test/sfiles/minrt.s)bfeq_nontail_cont.8453: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8454 
  j (test/sfiles/minrt.s)beq_cont.8455 
(test/sfiles/minrt.s)beq_else.8454: 
  addi r0 r1 4 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8455: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt.s)iter_setup_dirvec_constants.2926: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8456 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8456: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r2 r4 2 
  lwo r3 r4 r3 
  sw r2 r30 0 
  sw r3 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)d_const.2802 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 4 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8458 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8460 
  lw r30 r1 16 
  lw r30 r2 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)setup_second_table.2923 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  swo r1 r4 r3 
  j (test/sfiles/minrt.s)beq_cont.8461 
(test/sfiles/minrt.s)beq_else.8460: 
  lw r30 r1 16 
  lw r30 r2 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)setup_surface_table.2920 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  swo r1 r4 r3 
(test/sfiles/minrt.s)beq_cont.8461: 
  j (test/sfiles/minrt.s)beq_cont.8459 
(test/sfiles/minrt.s)beq_else.8458: 
  lw r30 r1 16 
  lw r30 r2 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)setup_rect_table.2917 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  swo r1 r4 r3 
(test/sfiles/minrt.s)beq_cont.8459: 
  addi r0 r1 1 
  sub r2 r1 r2 
  lw r30 r1 8 
  j (test/sfiles/minrt.s)iter_setup_dirvec_constants.2926 
(test/sfiles/minrt.s)setup_dirvec_constants.2929: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 1 
  sub r2 r3 r2 
  j (test/sfiles/minrt.s)iter_setup_dirvec_constants.2926 
(test/sfiles/minrt.s)setup_startp_constants.2931: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8462 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8462: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r2 r4 2 
  lwo r3 r4 r3 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_ctbl.2779 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 8 
  sw r1 r30 16 
  sw r2 r30 20 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  sub.s f1 f0 f0 
  lw r30 r1 20 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  addi r0 r3 1 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 8 
  sw r1 r30 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_y.2759 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  sub.s f1 f0 f0 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  addi r0 r3 2 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 8 
  sw r1 r30 36 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  sub.s f1 f0 f0 
  lw r30 r1 36 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  lw r30 r3 16 
  sub r3 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8464 
  addi r0 r1 2 
  sub r3 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_nontail_else.8466 
  addi r0 r1 0 
  sll r1 r1 2 
  lwoc1 r2 r1 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  lw r30 r1 8 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)quadratic.2854 
  addi r30 r30 -48 
  lw r30 r31 44 
  addi r0 r1 3 
  addi r0 r2 3 
  lw r30 r3 16 
  sub r3 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8468 
  j (test/sfiles/minrt.s)beq_cont.8469 
(test/sfiles/minrt.s)beq_else.8468: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f0 
(test/sfiles/minrt.s)beq_cont.8469: 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)ble_nontail_cont.8467 
(test/sfiles/minrt.s)ble_nontail_else.8466: 
(test/sfiles/minrt.s)ble_nontail_cont.8467: 
  j (test/sfiles/minrt.s)beq_cont.8465 
(test/sfiles/minrt.s)beq_else.8464: 
  addi r0 r1 3 
  lw r30 r3 8 
  sw r1 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_abc.2755 
  addi r30 r30 -52 
  lw r30 r31 48 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 12 
  lwoc1 r3 r2 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt.s)veciprod2.2717 
  addi r30 r30 -52 
  lw r30 r31 48 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
(test/sfiles/minrt.s)beq_cont.8465: 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r2 
  lw r30 r1 4 
  j (test/sfiles/minrt.s)setup_startp_constants.2931 
(test/sfiles/minrt.s)setup_startp.2934: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r28 r2 
  mov r2 r1 
  mov r1 r28 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r2 
  lw r30 r1 0 
  j (test/sfiles/minrt.s)setup_startp_constants.2931 
(test/sfiles/minrt.s)is_rect_outside.2936: 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sw r1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8470 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8471 
(test/sfiles/minrt.s)bfle_nontail_else.8470: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8471: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8472 
  lw r30 r1 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 4 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8474 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8475 
(test/sfiles/minrt.s)bfle_nontail_else.8474: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8475: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8476 
  lw r30 r1 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 0 
  abs.s f1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8478 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8479 
(test/sfiles/minrt.s)bfle_nontail_else.8478: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8479: 
  j (test/sfiles/minrt.s)beq_cont.8477 
(test/sfiles/minrt.s)beq_else.8476: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8477: 
  j (test/sfiles/minrt.s)beq_cont.8473 
(test/sfiles/minrt.s)beq_else.8472: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8473: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8480 
  lw r30 r1 8 
  j (test/sfiles/minrt.s)o_isinvert.2745 
(test/sfiles/minrt.s)beq_tail_else.8480: 
  lw r30 r1 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8481 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8481: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)is_plane_outside.2941: 
  sw r1 r30 0 
  swc1 f2 r30 4 
  swc1 f1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_abc.2755 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f0 12 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)veciprod2.2717 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 0 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -24 
  lw r30 r31 20 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 16 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8482 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8483 
(test/sfiles/minrt.s)bfle_nontail_else.8482: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8483: 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)xor.2682 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8484 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8484: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)is_second_outside.2946: 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt.s)quadratic.2854 
  addi r30 r30 -8 
  lw r30 r31 4 
  lw r30 r1 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 3 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8485 
  lwc1 r30 f0 4 
  j (test/sfiles/minrt.s)beq_cont.8486 
(test/sfiles/minrt.s)beq_else.8485: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
(test/sfiles/minrt.s)beq_cont.8486: 
  lw r30 r1 0 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -16 
  lw r30 r31 12 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 8 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8487 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8488 
(test/sfiles/minrt.s)bfle_nontail_else.8487: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8488: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)xor.2682 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8489 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8489: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)is_outside.2951: 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sw r1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)o_param_y.2759 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 0 
  sub.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8490 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8491 
  lwc1 r30 f0 16 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  lw r30 r1 8 
  j (test/sfiles/minrt.s)is_second_outside.2946 
(test/sfiles/minrt.s)beq_tail_else.8491: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  lw r30 r1 8 
  j (test/sfiles/minrt.s)is_plane_outside.2941 
(test/sfiles/minrt.s)beq_tail_else.8490: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  lw r30 r1 8 
  j (test/sfiles/minrt.s)is_rect_outside.2936 
(test/sfiles/minrt.s)check_all_inside.2956: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 -1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8492 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r3 r3 2 
  lwo r4 r3 r3 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt.s)is_outside.2951 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8493 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8493: 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  lwc1 r30 f0 8 
  lwc1 r30 f1 4 
  lwc1 r30 f2 0 
  lw r30 r2 12 
  j (test/sfiles/minrt.s)check_all_inside.2956 
(test/sfiles/minrt.s)beq_tail_else.8492: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)shadow_check_and_group.2962: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 -1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8494 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r4 
  mov r1 r3 
  mov r3 r5 
  jal (test/sfiles/minrt.s)solver_fast.2896 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8495 
  lui r24 48716 
  ori r24 r24 52429 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8497 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8498 
(test/sfiles/minrt.s)bfle_nontail_else.8497: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8498: 
  j (test/sfiles/minrt.s)beq_cont.8496 
(test/sfiles/minrt.s)beq_else.8495: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8496: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8499 
  lui r24 15395 
  ori r24 r24 55050 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f1 f0 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  add.s f1 f2 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  mul.s f2 f0 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f2 f3 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f3 f0 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f0 f3 f0 
  addi r0 r1 0 
  lw r30 r2 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f2 f31 
  mov.s f0 f2 
  mov.s f1 f0 
  mov.s f31 f1 
  jal (test/sfiles/minrt.s)check_all_inside.2956 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8500 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8500: 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  lw r30 r2 0 
  j (test/sfiles/minrt.s)shadow_check_and_group.2962 
(test/sfiles/minrt.s)beq_tail_else.8499: 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  lw r30 r2 8 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8501 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  lw r30 r2 0 
  j (test/sfiles/minrt.s)shadow_check_and_group.2962 
(test/sfiles/minrt.s)beq_tail_else.8501: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8494: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)shadow_check_one_or_group.2965: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 -1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8502 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r3 r3 2 
  lwo r4 r3 r3 
  addi r0 r4 0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r2 r3 
  mov r1 r4 
  jal (test/sfiles/minrt.s)shadow_check_and_group.2962 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8503 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8503: 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  lw r30 r2 0 
  j (test/sfiles/minrt.s)shadow_check_one_or_group.2965 
(test/sfiles/minrt.s)beq_tail_else.8502: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)shadow_check_one_or_matrix.2968: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8504 
  addi r0 r5 99 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8505 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r3 r6 
  mov r2 r5 
  mov r1 r4 
  jal (test/sfiles/minrt.s)solver_fast.2896 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8507 
  lui r24 48588 
  ori r24 r24 52429 
  mtc1 r24 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8509 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8510 
(test/sfiles/minrt.s)bfle_nontail_else.8509: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8510: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8511 
  addi r0 r1 1 
  lw r30 r2 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)shadow_check_one_or_group.2965 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8513 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)beq_cont.8514 
(test/sfiles/minrt.s)beq_else.8513: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8514: 
  j (test/sfiles/minrt.s)beq_cont.8512 
(test/sfiles/minrt.s)beq_else.8511: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8512: 
  j (test/sfiles/minrt.s)beq_cont.8508 
(test/sfiles/minrt.s)beq_else.8507: 
  addi r0 r1 0 
(test/sfiles/minrt.s)beq_cont.8508: 
  j (test/sfiles/minrt.s)beq_cont.8506 
(test/sfiles/minrt.s)beq_else.8505: 
  addi r0 r1 1 
(test/sfiles/minrt.s)beq_cont.8506: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8515 
  addi r0 r1 1 
  lw r30 r2 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)shadow_check_one_or_group.2965 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8516 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8516: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  j (test/sfiles/minrt.s)shadow_check_one_or_matrix.2968 
(test/sfiles/minrt.s)beq_tail_else.8515: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  j (test/sfiles/minrt.s)shadow_check_one_or_matrix.2968 
(test/sfiles/minrt.s)beq_tail_else.8504: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solve_each_element.2971: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8517 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r4 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  mov r1 r4 
  mov r3 r5 
  jal (test/sfiles/minrt.s)solver.2873 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8518 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8519 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8520 
(test/sfiles/minrt.s)bfle_nontail_else.8519: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8520: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8521 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8523 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8524 
(test/sfiles/minrt.s)bfle_nontail_else.8523: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8524: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8525 
  lui r24 15395 
  ori r24 r24 55050 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 0 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  add.s f1 f2 f1 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  mul.s f2 f0 f2 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  add.s f2 f3 f2 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f3 
  mul.s f3 f0 f3 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f4 
  add.s f3 f4 f3 
  addi r0 r2 0 
  lw r30 r4 4 
  sw r1 r30 16 
  swc1 f3 r30 20 
  swc1 f2 r30 24 
  swc1 f1 r30 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  mov r2 r4 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt.s)check_all_inside.2956 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8527 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  lwc1 r30 f0 32 
  swoc1 f0 r1 r2 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lwc1 r30 f0 28 
  lwc1 r30 f1 24 
  lwc1 r30 f2 20 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 12 
  swo r3 r1 r2 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 16 
  swo r3 r1 r2 
  j (test/sfiles/minrt.s)beq_cont.8528 
(test/sfiles/minrt.s)beq_else.8527: 
(test/sfiles/minrt.s)beq_cont.8528: 
  j (test/sfiles/minrt.s)beq_cont.8526 
(test/sfiles/minrt.s)beq_else.8525: 
(test/sfiles/minrt.s)beq_cont.8526: 
  j (test/sfiles/minrt.s)beq_cont.8522 
(test/sfiles/minrt.s)beq_else.8521: 
(test/sfiles/minrt.s)beq_cont.8522: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)solve_each_element.2971 
(test/sfiles/minrt.s)beq_tail_else.8518: 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 12 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8529 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)solve_each_element.2971 
(test/sfiles/minrt.s)beq_tail_else.8529: 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8517: 
  jr r31 
(test/sfiles/minrt.s)solve_one_or_network.2975: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8532 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r4 r4 2 
  lwo r5 r4 r4 
  addi r0 r5 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt.s)solve_each_element.2971 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)solve_one_or_network.2975 
(test/sfiles/minrt.s)beq_tail_else.8532: 
  jr r31 
(test/sfiles/minrt.s)trace_or_matrix.2979: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r5 
  addi r0 r6 -1 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8534 
  addi r0 r6 99 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8535 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  sw r4 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  mov r1 r5 
  mov r3 r6 
  jal (test/sfiles/minrt.s)solver.2873 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8537 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8539 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8540 
(test/sfiles/minrt.s)bfle_nontail_else.8539: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8540: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8541 
  addi r0 r1 1 
  lw r30 r2 12 
  lw r30 r3 0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)solve_one_or_network.2975 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt.s)beq_cont.8542 
(test/sfiles/minrt.s)beq_else.8541: 
(test/sfiles/minrt.s)beq_cont.8542: 
  j (test/sfiles/minrt.s)beq_cont.8538 
(test/sfiles/minrt.s)beq_else.8537: 
(test/sfiles/minrt.s)beq_cont.8538: 
  j (test/sfiles/minrt.s)beq_cont.8536 
(test/sfiles/minrt.s)beq_else.8535: 
  addi r0 r5 1 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt.s)solve_one_or_network.2975 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/minrt.s)beq_cont.8536: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)trace_or_matrix.2979 
(test/sfiles/minrt.s)beq_tail_else.8534: 
  jr r31 
(test/sfiles/minrt.s)judge_intersection.2983: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  lui r24 20078 
  ori r24 r24 27432 
  mtc1 r24 f0 
  sll r3 r3 2 
  swoc1 f0 r2 r3 
  addi r0 r2 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  sw r31 r30 0 
  addi r30 r30 4 
  mov r28 r3 
  mov r3 r1 
  mov r1 r2 
  mov r2 r28 
  jal (test/sfiles/minrt.s)trace_or_matrix.2979 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  lui r24 48588 
  ori r24 r24 52429 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8544 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8545 
(test/sfiles/minrt.s)bfle_nontail_else.8544: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8545: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8546 
  lui r24 19646 
  ori r24 r24 48160 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_tail_else.8547 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)bfle_tail_else.8547: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8546: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)solve_each_element_fast.2985: 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sll r2 r3 2 
  lw r30 r4 4 
  lwo r4 r3 r3 
  addi r0 r5 -1 
  sub r3 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8548 
  lw r30 r5 0 
  sw r1 r30 12 
  sw r3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r2 r5 
  mov r1 r3 
  jal (test/sfiles/minrt.s)solver_fast2.2914 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8549 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8550 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8551 
(test/sfiles/minrt.s)bfle_nontail_else.8550: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8551: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8552 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8554 
  addi r0 r2 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8555 
(test/sfiles/minrt.s)bfle_nontail_else.8554: 
  addi r0 r2 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8555: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8556 
  lui r24 15395 
  ori r24 r24 55050 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 12 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  add.s f1 f2 f1 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  mul.s f2 f0 f2 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  add.s f2 f3 f2 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f3 
  mul.s f3 f0 f3 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r2 r3 f4 
  add.s f3 f4 f3 
  addi r0 r2 0 
  lw r30 r3 4 
  sw r1 r30 20 
  swc1 f3 r30 24 
  swc1 f2 r30 28 
  swc1 f1 r30 32 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  mov r1 r2 
  mov r2 r3 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt.s)check_all_inside.2956 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8558 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  sll r2 r2 2 
  lwc1 r30 f0 36 
  swoc1 f0 r1 r2 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  lwc1 r30 f0 32 
  lwc1 r30 f1 28 
  lwc1 r30 f2 24 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 16 
  swo r3 r1 r2 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 20 
  swo r3 r1 r2 
  j (test/sfiles/minrt.s)beq_cont.8559 
(test/sfiles/minrt.s)beq_else.8558: 
(test/sfiles/minrt.s)beq_cont.8559: 
  j (test/sfiles/minrt.s)beq_cont.8557 
(test/sfiles/minrt.s)beq_else.8556: 
(test/sfiles/minrt.s)beq_cont.8557: 
  j (test/sfiles/minrt.s)beq_cont.8553 
(test/sfiles/minrt.s)beq_else.8552: 
(test/sfiles/minrt.s)beq_cont.8553: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)solve_each_element_fast.2985 
(test/sfiles/minrt.s)beq_tail_else.8549: 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  lw r30 r2 16 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8560 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)solve_each_element_fast.2985 
(test/sfiles/minrt.s)beq_tail_else.8560: 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8548: 
  jr r31 
(test/sfiles/minrt.s)solve_one_or_network_fast.2989: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8563 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r4 r4 2 
  lwo r5 r4 r4 
  addi r0 r5 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt.s)solve_each_element_fast.2985 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)solve_one_or_network_fast.2989 
(test/sfiles/minrt.s)beq_tail_else.8563: 
  jr r31 
(test/sfiles/minrt.s)trace_or_matrix_fast.2993: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r5 
  addi r0 r6 -1 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8565 
  addi r0 r6 99 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8566 
  sw r4 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  mov r1 r5 
  jal (test/sfiles/minrt.s)solver_fast2.2914 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8568 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8570 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8571 
(test/sfiles/minrt.s)bfle_nontail_else.8570: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8571: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8572 
  addi r0 r1 1 
  lw r30 r2 12 
  lw r30 r3 0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)solve_one_or_network_fast.2989 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt.s)beq_cont.8573 
(test/sfiles/minrt.s)beq_else.8572: 
(test/sfiles/minrt.s)beq_cont.8573: 
  j (test/sfiles/minrt.s)beq_cont.8569 
(test/sfiles/minrt.s)beq_else.8568: 
(test/sfiles/minrt.s)beq_cont.8569: 
  j (test/sfiles/minrt.s)beq_cont.8567 
(test/sfiles/minrt.s)beq_else.8566: 
  addi r0 r5 1 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt.s)solve_one_or_network_fast.2989 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/minrt.s)beq_cont.8567: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)trace_or_matrix_fast.2993 
(test/sfiles/minrt.s)beq_tail_else.8565: 
  jr r31 
(test/sfiles/minrt.s)judge_intersection_fast.2997: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  lui r24 20078 
  ori r24 r24 27432 
  mtc1 r24 f0 
  sll r3 r3 2 
  swoc1 f0 r2 r3 
  addi r0 r2 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  sw r31 r30 0 
  addi r30 r30 4 
  mov r28 r3 
  mov r3 r1 
  mov r1 r2 
  mov r2 r28 
  jal (test/sfiles/minrt.s)trace_or_matrix_fast.2993 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  lui r24 48588 
  ori r24 r24 52429 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8575 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8576 
(test/sfiles/minrt.s)bfle_nontail_else.8575: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8576: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8577 
  lui r24 19646 
  ori r24 r24 48160 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_tail_else.8578 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)bfle_tail_else.8578: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8577: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)get_nvector_rect.2999: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal (test/sfiles/minrt.s)vecbzero.2701 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  lw r30 r3 4 
  sub r3 r2 r2 
  addi r0 r4 1 
  sub r3 r4 r3 
  sll r3 r3 2 
  lw r30 r4 0 
  lwoc1 r4 r3 f0 
  sw r1 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)sgn.2685 
  addi r30 r30 -20 
  lw r30 r31 16 
  neg.s f0 f0 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt.s)get_nvector_plane.3001: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -16 
  lw r30 r31 12 
  neg.s f0 f0 
  lw r30 r1 8 
  sll r1 r1 2 
  lw r30 r2 4 
  swoc1 f0 r2 r1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  lw r30 r3 0 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -24 
  lw r30 r31 20 
  neg.s f0 f0 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 2 
  lw r30 r3 0 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -32 
  lw r30 r31 28 
  neg.s f0 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt.s)get_nvector_second.3003: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  sw r1 r30 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  lw r30 r1 0 
  swc1 f0 r30 8 
  swc1 f1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)o_param_y.2759 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  lw r30 r1 0 
  swc1 f0 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_isrot.2747 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8581 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  lw r30 r3 0 
  sw r1 r30 40 
  sw r2 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_r3.2777 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)o_param_r2.2775 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lwc1 r30 f2 48 
  add.s f2 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f2 
  mul.s f0 f2 f0 
  lwc1 r30 f2 28 
  add.s f2 f0 f0 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 40 
  swoc1 f0 r2 r1 
  addi r30 r30 52 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -52 
  addi r0 r2 1 
  lw r30 r3 0 
  sw r1 r30 52 
  sw r2 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_r3.2777 
  addi r30 r30 -64 
  lw r30 r31 60 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt.s)o_param_r1.2773 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lwc1 r30 f1 60 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 32 
  add.s f1 f0 f0 
  lw r30 r1 56 
  sll r1 r1 2 
  lw r30 r2 52 
  swoc1 f0 r2 r1 
  addi r30 r30 64 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -64 
  addi r0 r2 2 
  lw r30 r3 0 
  sw r1 r30 64 
  sw r2 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_param_r2.2775 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 72 
  sw r31 r30 76 
  addi r30 r30 80 
  jal (test/sfiles/minrt.s)o_param_r1.2773 
  addi r30 r30 -80 
  lw r30 r31 76 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lwc1 r30 f1 72 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 36 
  add.s f1 f0 f0 
  lw r30 r1 68 
  sll r1 r1 2 
  lw r30 r2 64 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt.s)beq_cont.8582 
(test/sfiles/minrt.s)beq_else.8581: 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  addi r0 r2 0 
  sll r2 r2 2 
  lwc1 r30 f0 28 
  swoc1 f0 r1 r2 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  addi r0 r2 1 
  sll r2 r2 2 
  lwc1 r30 f0 32 
  swoc1 f0 r1 r2 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  addi r0 r2 2 
  sll r2 r2 2 
  lwc1 r30 f0 36 
  swoc1 f0 r1 r2 
(test/sfiles/minrt.s)beq_cont.8582: 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  lw r30 r2 0 
  sw r1 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_isinvert.2745 
  addi r30 r30 -84 
  lw r30 r31 80 
  mov r2 r1 
  lw r30 r1 76 
  j (test/sfiles/minrt.s)vecunit_sgn.2711 
(test/sfiles/minrt.s)get_nvector.3005: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8583 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8584 
  lw r30 r1 0 
  j (test/sfiles/minrt.s)get_nvector_second.3003 
(test/sfiles/minrt.s)beq_tail_else.8584: 
  lw r30 r1 0 
  j (test/sfiles/minrt.s)get_nvector_plane.3001 
(test/sfiles/minrt.s)beq_tail_else.8583: 
  lw r30 r1 4 
  j (test/sfiles/minrt.s)get_nvector_rect.2999 
(test/sfiles/minrt.s)utexture.3008: 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)o_texturetype.2739 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r3 0 
  lw r30 r4 4 
  sw r1 r30 8 
  sw r2 r30 12 
  sw r3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r4 
  jal (test/sfiles/minrt.s)o_color_red.2767 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 1 
  lw r30 r3 4 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_color_green.2769 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 2 
  lw r30 r3 4 
  sw r1 r30 28 
  sw r2 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r3 
  jal (test/sfiles/minrt.s)o_color_blue.2771 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 32 
  sll r1 r1 2 
  lw r30 r2 28 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8585 
  addi r0 r1 2 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8586 
  addi r0 r1 3 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8587 
  addi r0 r1 4 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8588 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8588: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lw r30 r1 4 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -48 
  lw r30 r31 44 
  sw r31 r30 44 
  addi r30 r30 48 
  jal min_caml_sqrt 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  mul.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 44 
  swc1 f1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f1 48 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -60 
  lw r30 r31 56 
  sw r31 r30 56 
  addi r30 r30 60 
  jal min_caml_sqrt 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  lwc1 r30 f1 44 
  mul.s f1 f1 f2 
  mul.s f0 f0 f3 
  add.s f2 f3 f2 
  lui r24 14545 
  ori r24 r24 46871 
  mtc1 r24 f3 
  abs.s f1 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8590 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8591 
(test/sfiles/minrt.s)bfle_nontail_else.8590: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8591: 
  addi r0 r2 0 
  swc1 f2 r30 56 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8592 
  lui r24 16752 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8593 
(test/sfiles/minrt.s)beq_else.8592: 
  div.s f0 f1 f0 
  abs.s f0 f0 
  sw r31 r30 60 
  addi r30 r30 64 
  jal min_caml_atan 
  addi r30 r30 -64 
  lw r30 r31 60 
  lui r24 16880 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt.s)beq_cont.8593: 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal min_caml_floor 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 60 
  sub.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 64 
  swc1 f1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal (test/sfiles/minrt.s)o_param_y.2759 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 68 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 72 
  sw r31 r30 76 
  addi r30 r30 80 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -80 
  lw r30 r31 76 
  sw r31 r30 76 
  addi r30 r30 80 
  jal min_caml_sqrt 
  addi r30 r30 -80 
  lw r30 r31 76 
  lwc1 r30 f1 72 
  mul.s f1 f0 f0 
  lui r24 14545 
  ori r24 r24 46871 
  mtc1 r24 f1 
  lwc1 r30 f2 56 
  abs.s f2 f3 
  sub.s f1 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8594 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8595 
(test/sfiles/minrt.s)bfle_nontail_else.8594: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8595: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8596 
  lui r24 16752 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8597 
(test/sfiles/minrt.s)beq_else.8596: 
  div.s f0 f2 f0 
  abs.s f0 f0 
  sw r31 r30 76 
  addi r30 r30 80 
  jal min_caml_atan 
  addi r30 r30 -80 
  lw r30 r31 76 
  lui r24 16880 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt.s)beq_cont.8597: 
  swc1 f0 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  jal min_caml_floor 
  addi r30 r30 -84 
  lw r30 r31 80 
  lwc1 r30 f1 76 
  sub.s f1 f0 f0 
  lui r24 15897 
  ori r24 r24 39322 
  mtc1 r24 f1 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f2 
  lwc1 r30 f3 64 
  sub.s f2 f3 f2 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f4 f3 f3 
  mul.s f2 f3 f2 
  sub.s f1 f2 f1 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f2 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f3 f0 f0 
  mul.s f2 f0 f0 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8598 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8599 
(test/sfiles/minrt.s)bfle_nontail_else.8598: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8599: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8600 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8601 
(test/sfiles/minrt.s)beq_else.8600: 
(test/sfiles/minrt.s)beq_cont.8601: 
  addi r30 r30 80 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -80 
  addi r0 r2 2 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f1 f0 f0 
  lui r24 16025 
  ori r24 r24 39322 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8587: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lw r30 r1 4 
  swc1 f0 r30 80 
  sw r31 r30 84 
  addi r30 r30 88 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -88 
  lw r30 r31 84 
  lwc1 r30 f1 80 
  sub.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 84 
  swc1 f1 r30 88 
  sw r31 r30 92 
  addi r30 r30 96 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -96 
  lw r30 r31 92 
  lwc1 r30 f1 88 
  sub.s f1 f0 f0 
  lwc1 r30 f1 84 
  mul.s f1 f1 f1 
  mul.s f0 f0 f0 
  add.s f1 f0 f0 
  sw r31 r30 92 
  addi r30 r30 96 
  jal min_caml_sqrt 
  addi r30 r30 -96 
  lw r30 r31 92 
  lui r24 16672 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  swc1 f0 r30 92 
  sw r31 r30 96 
  addi r30 r30 100 
  jal min_caml_floor 
  addi r30 r30 -100 
  lw r30 r31 96 
  lwc1 r30 f1 92 
  sub.s f1 f0 f0 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  swc1 f0 r30 96 
  sw r31 r30 100 
  addi r30 r30 104 
  jal min_caml_cos 
  addi r30 r30 -104 
  lw r30 r31 100 
  lwc1 r30 f1 96 
  swc1 f0 r30 100 
  sw r31 r30 104 
  addi r30 r30 108 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -108 
  lw r30 r31 104 
  lwc1 r30 f1 100 
  mul.s f1 f0 f0 
  addi r30 r30 104 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -104 
  addi r0 r2 1 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 104 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -104 
  addi r0 r2 2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f0 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8586: 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lui r24 16000 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  sw r31 r30 104 
  addi r30 r30 108 
  jal min_caml_sin 
  addi r30 r30 -108 
  lw r30 r31 104 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lui r24 16000 
  ori r24 r24 0 
  mtc1 r24 f2 
  mul.s f1 f2 f1 
  swc1 f0 r30 104 
  sw r31 r30 108 
  addi r30 r30 112 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -112 
  lw r30 r31 108 
  lwc1 r30 f1 104 
  mul.s f1 f0 f0 
  addi r30 r30 108 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -108 
  addi r0 r2 0 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 108 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -108 
  addi r0 r2 1 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8585: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lw r30 r1 4 
  swc1 f0 r30 108 
  sw r31 r30 112 
  addi r30 r30 116 
  jal (test/sfiles/minrt.s)o_param_x.2757 
  addi r30 r30 -116 
  lw r30 r31 112 
  lwc1 r30 f1 108 
  sub.s f1 f0 f0 
  lui r24 15692 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f1 
  swc1 f0 r30 112 
  sw r31 r30 116 
  addi r30 r30 120 
  mov.s f1 f0 
  jal min_caml_floor 
  addi r30 r30 -120 
  lw r30 r31 116 
  lui r24 16800 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16672 
  ori r24 r24 0 
  mtc1 r24 f1 
  lwc1 r30 f2 112 
  sub.s f2 f0 f0 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8605 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8606 
(test/sfiles/minrt.s)bfle_nontail_else.8605: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8606: 
  addi r0 r2 2 
  sll r2 r2 2 
  lw r30 r3 0 
  lwoc1 r3 r2 f0 
  lw r30 r2 4 
  sw r1 r30 116 
  swc1 f0 r30 120 
  sw r31 r30 124 
  addi r30 r30 128 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_z.2761 
  addi r30 r30 -128 
  lw r30 r31 124 
  lwc1 r30 f1 120 
  sub.s f1 f0 f0 
  lui r24 15692 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f1 
  swc1 f0 r30 124 
  sw r31 r30 128 
  addi r30 r30 132 
  mov.s f1 f0 
  jal min_caml_floor 
  addi r30 r30 -132 
  lw r30 r31 128 
  lui r24 16800 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16672 
  ori r24 r24 0 
  mtc1 r24 f1 
  lwc1 r30 f2 124 
  sub.s f2 f0 f0 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8607 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8608 
(test/sfiles/minrt.s)bfle_nontail_else.8607: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8608: 
  addi r30 r30 128 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -128 
  addi r0 r3 1 
  addi r0 r4 0 
  lw r30 r5 116 
  sub r5 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8609 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8611 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8612 
(test/sfiles/minrt.s)beq_else.8611: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
(test/sfiles/minrt.s)beq_cont.8612: 
  j (test/sfiles/minrt.s)beq_cont.8610 
(test/sfiles/minrt.s)beq_else.8609: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8613 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt.s)beq_cont.8614 
(test/sfiles/minrt.s)beq_else.8613: 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f0 
(test/sfiles/minrt.s)beq_cont.8614: 
(test/sfiles/minrt.s)beq_cont.8610: 
  sll r3 r1 2 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt.s)add_light.3011: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f0 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8616 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8617 
(test/sfiles/minrt.s)bfle_nontail_else.8616: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8617: 
  addi r0 r2 0 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8618 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)vecaccum.2722 
  addi r30 r30 -12 
  lw r30 r31 8 
  j (test/sfiles/minrt.s)beq_cont.8619 
(test/sfiles/minrt.s)beq_else.8618: 
(test/sfiles/minrt.s)beq_cont.8619: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 4 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8620 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8621 
(test/sfiles/minrt.s)bfle_nontail_else.8620: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8621: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8622 
  mul.s f1 f1 f0 
  mul.s f1 f1 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 0 
  mul.s f0 f1 f0 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 0 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 2 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8622: 
  jr r31 
(test/sfiles/minrt.s)trace_reflections.3015: 
  addi r0 r3 0 
  sub r3 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8625 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8625: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_reflections 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r4 2 
  lwo r3 r4 r3 
  sw r1 r30 0 
  swc1 f1 r30 4 
  sw r2 r30 8 
  swc1 f0 r30 12 
  sw r3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt.s)r_dvec.2806 
  addi r30 r30 -24 
  lw r30 r31 20 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)judge_intersection_fast.2997 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8627 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 4 
  mult r1 r2 r1 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  add r1 r2 r1 
  lw r30 r2 16 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt.s)r_surface_id.2804 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r2 24 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8629 
  j (test/sfiles/minrt.s)beq_cont.8630 
(test/sfiles/minrt.s)beq_else.8629: 
  addi r0 r1 0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)shadow_check_one_or_matrix.2968 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8631 
  j (test/sfiles/minrt.s)beq_cont.8632 
(test/sfiles/minrt.s)beq_else.8631: 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  lw r30 r2 20 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r2 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -36 
  lw r30 r31 32 
  mov r2 r1 
  lw r30 r1 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r1 16 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)r_bright.2808 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 12 
  mul.s f0 f1 f2 
  lwc1 r30 f3 32 
  mul.s f2 f3 f2 
  lw r30 r1 20 
  swc1 f2 r30 36 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -48 
  lw r30 r31 44 
  mov r2 r1 
  lw r30 r1 8 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  mul.s f1 f0 f1 
  lwc1 r30 f0 36 
  lwc1 r30 f2 4 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt.s)add_light.3011 
  addi r30 r30 -48 
  lw r30 r31 44 
(test/sfiles/minrt.s)beq_cont.8632: 
(test/sfiles/minrt.s)beq_cont.8630: 
  j (test/sfiles/minrt.s)beq_cont.8628 
(test/sfiles/minrt.s)beq_else.8627: 
(test/sfiles/minrt.s)beq_cont.8628: 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  lwc1 r30 f0 12 
  lwc1 r30 f1 4 
  lw r30 r2 8 
  j (test/sfiles/minrt.s)trace_reflections.3015 
(test/sfiles/minrt.s)trace_ray.3020: 
  addi r0 r4 4 
  sub r1 r4 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8633 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8633: 
  swc1 f1 r30 0 
  sw r3 r30 4 
  swc1 f0 r30 8 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt.s)p_surface_ids.2785 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 16 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  jal (test/sfiles/minrt.s)judge_intersection.2983 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8635 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  sll r1 r3 2 
  lwo r2 r3 r2 
  sw r1 r30 24 
  sw r2 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_reflectiontype.2743 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 28 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 8 
  mul.s f0 f1 f0 
  lw r30 r1 28 
  lw r30 r2 16 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)get_nvector.3005 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  lw r30 r1 28 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)utexture.3008 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r1 4 
  lw r30 r2 24 
  mult r2 r1 r1 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  add r1 r2 r1 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 20 
  swo r1 r4 r3 
  lw r30 r1 4 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)p_intersection_points.2783 
  addi r30 r30 -44 
  lw r30 r31 40 
  lw r30 r2 12 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  sw r31 r30 40 
  addi r30 r30 44 
  mov r2 r3 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -44 
  lw r30 r31 40 
  lw r30 r1 4 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)p_calc_diffuse.2787 
  addi r30 r30 -44 
  lw r30 r31 40 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r2 28 
  sw r1 r30 40 
  swc1 f0 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8636 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8637 
(test/sfiles/minrt.s)bfle_nontail_else.8636: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8637: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8638 
  addi r0 r1 0 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 40 
  swo r1 r4 r3 
  j (test/sfiles/minrt.s)beq_cont.8639 
(test/sfiles/minrt.s)beq_else.8638: 
  addi r0 r1 1 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 40 
  swo r1 r4 r3 
  lw r30 r1 4 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt.s)p_energy.2789 
  addi r30 r30 -52 
  lw r30 r31 48 
  lw r30 r2 12 
  sll r2 r3 2 
  lwo r1 r3 r3 
  addi r30 r30 48 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -48 
  sw r1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r2 r4 
  mov r1 r3 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r1 12 
  sll r1 r2 2 
  lw r30 r3 48 
  lwo r3 r2 r2 
  lui r24 15232 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 36 
  mul.s f0 f1 f0 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r1 r2 
  jal (test/sfiles/minrt.s)vecscale.2732 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r1 4 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)p_nvectors.2798 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r2 12 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 52 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -52 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r2 r3 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -56 
  lw r30 r31 52 
(test/sfiles/minrt.s)beq_cont.8639: 
  lui r24 49152 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r30 r30 52 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -52 
  lw r30 r1 16 
  swc1 f0 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  addi r30 r30 56 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -56 
  lw r30 r1 16 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt.s)vecaccum.2722 
  addi r30 r30 -60 
  lw r30 r31 56 
  lw r30 r1 28 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt.s)o_hilight.2765 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  addi r0 r1 0 
  addi r30 r30 56 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -56 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  swc1 f0 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  jal (test/sfiles/minrt.s)shadow_check_one_or_matrix.2968 
  addi r30 r30 -64 
  lw r30 r31 60 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8640 
  j (test/sfiles/minrt.s)beq_cont.8641 
(test/sfiles/minrt.s)beq_else.8640: 
  addi r30 r30 60 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -60 
  addi r30 r30 60 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -60 
  sw r31 r30 60 
  addi r30 r30 64 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -64 
  lw r30 r31 60 
  neg.s f0 f0 
  lwc1 r30 f1 36 
  mul.s f0 f1 f0 
  addi r30 r30 60 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -60 
  lw r30 r1 16 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -68 
  lw r30 r31 64 
  neg.s f0 f1 
  lwc1 r30 f0 60 
  lwc1 r30 f2 56 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt.s)add_light.3011 
  addi r30 r30 -68 
  lw r30 r31 64 
(test/sfiles/minrt.s)beq_cont.8641: 
  addi r30 r30 64 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -64 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt.s)setup_startp.2934 
  addi r30 r30 -68 
  lw r30 r31 64 
  addi r30 r30 64 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -64 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r1 
  lwc1 r30 f0 36 
  lwc1 r30 f1 56 
  lw r30 r2 16 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt.s)trace_reflections.3015 
  addi r30 r30 -68 
  lw r30 r31 64 
  lui r24 15820 
  ori r24 r24 52429 
  mtc1 r24 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8642 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8643 
(test/sfiles/minrt.s)bfle_nontail_else.8642: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8643: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8644 
  addi r0 r1 4 
  lw r30 r2 12 
  sub r1 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_nontail_else.8645 
  addi r0 r1 1 
  add r2 r1 r1 
  addi r0 r3 -1 
  sll r1 r1 2 
  lw r30 r4 20 
  swo r3 r4 r1 
  j (test/sfiles/minrt.s)ble_nontail_cont.8646 
(test/sfiles/minrt.s)ble_nontail_else.8645: 
(test/sfiles/minrt.s)ble_nontail_cont.8646: 
  addi r0 r1 2 
  lw r30 r3 32 
  sub r3 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8647 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8647: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r1 28 
  swc1 f0 r30 64 
  sw r31 r30 68 
  addi r30 r30 72 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -72 
  lw r30 r31 68 
  lwc1 r30 f1 64 
  sub.s f1 f0 f0 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  addi r0 r1 1 
  lw r30 r2 12 
  add r2 r1 r1 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  lwc1 r30 f2 0 
  add.s f2 f1 f1 
  lw r30 r2 16 
  lw r30 r3 4 
  j (test/sfiles/minrt.s)trace_ray.3020 
(test/sfiles/minrt.s)beq_tail_else.8644: 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8635: 
  addi r0 r1 -1 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 20 
  swo r1 r4 r3 
  addi r0 r1 0 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8650 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  lw r30 r1 16 
  sw r31 r30 68 
  addi r30 r30 72 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -72 
  lw r30 r31 68 
  neg.s f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8651 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8652 
(test/sfiles/minrt.s)bfle_nontail_else.8651: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8652: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8653 
  mul.s f0 f0 f1 
  mul.s f1 f0 f0 
  lwc1 r30 f1 8 
  mul.s f0 f1 f0 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_beam 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f0 f1 f0 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 0 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 1 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 2 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8653: 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8650: 
  jr r31 
(test/sfiles/minrt.s)trace_diffuse_ray.3026: 
  swc1 f0 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)judge_intersection_fast.2997 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8657 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -16 
  lw r30 r31 12 
  mov r2 r1 
  lw r30 r1 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)get_nvector.3005 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  lw r30 r1 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)utexture.3008 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)shadow_check_one_or_matrix.2968 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8658 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8658: 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -16 
  lw r30 r31 12 
  neg.s f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8660 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8661 
(test/sfiles/minrt.s)bfle_nontail_else.8660: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8661: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8662 
  j (test/sfiles/minrt.s)beq_cont.8663 
(test/sfiles/minrt.s)beq_else.8662: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
(test/sfiles/minrt.s)beq_cont.8663: 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  lwc1 r30 f1 0 
  mul.s f1 f0 f0 
  lw r30 r2 8 
  sw r1 r30 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  lw r30 r1 12 
  j (test/sfiles/minrt.s)vecaccum.2722 
(test/sfiles/minrt.s)beq_tail_else.8657: 
  jr r31 
(test/sfiles/minrt.s)iter_trace_diffuse_rays.3029: 
  addi r0 r5 0 
  sub r5 r4 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8665 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8665: 
  sll r4 r5 2 
  lwo r1 r5 r5 
  sw r3 r30 0 
  sw r1 r30 4 
  sw r4 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r5 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8667 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8668 
(test/sfiles/minrt.s)bfle_nontail_else.8667: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8668: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8669 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 4 
  lwo r3 r1 r1 
  lui r24 49942 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)trace_diffuse_ray.3026 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt.s)beq_cont.8670 
(test/sfiles/minrt.s)beq_else.8669: 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  lui r24 17174 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)trace_diffuse_ray.3026 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/minrt.s)beq_cont.8670: 
  addi r0 r1 2 
  lw r30 r2 8 
  sub r2 r1 r4 
  lw r30 r1 4 
  lw r30 r2 12 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)iter_trace_diffuse_rays.3029 
(test/sfiles/minrt.s)trace_diffuse_rays.3034: 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt.s)setup_startp.2934 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r4 118 
  lw r30 r1 8 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)iter_trace_diffuse_rays.3029 
(test/sfiles/minrt.s)trace_diffuse_ray_80percent.3038: 
  addi r0 r4 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8671 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r4 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r4 
  jal (test/sfiles/minrt.s)trace_diffuse_rays.3034 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt.s)beq_cont.8672 
(test/sfiles/minrt.s)beq_else.8671: 
(test/sfiles/minrt.s)beq_cont.8672: 
  addi r0 r1 1 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8673 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 1 
  sll r3 r3 2 
  lwo r1 r3 r1 
  lw r30 r3 4 
  lw r30 r4 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt.s)trace_diffuse_rays.3034 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt.s)beq_cont.8674 
(test/sfiles/minrt.s)beq_else.8673: 
(test/sfiles/minrt.s)beq_cont.8674: 
  addi r0 r1 2 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8675 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 2 
  sll r3 r3 2 
  lwo r1 r3 r1 
  lw r30 r3 4 
  lw r30 r4 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt.s)trace_diffuse_rays.3034 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt.s)beq_cont.8676 
(test/sfiles/minrt.s)beq_else.8675: 
(test/sfiles/minrt.s)beq_cont.8676: 
  addi r0 r1 3 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8677 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 3 
  sll r3 r3 2 
  lwo r1 r3 r1 
  lw r30 r3 4 
  lw r30 r4 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt.s)trace_diffuse_rays.3034 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt.s)beq_cont.8678 
(test/sfiles/minrt.s)beq_else.8677: 
(test/sfiles/minrt.s)beq_cont.8678: 
  addi r0 r1 4 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8679 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 4 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt.s)trace_diffuse_rays.3034 
(test/sfiles/minrt.s)beq_tail_else.8679: 
  jr r31 
(test/sfiles/minrt.s)calc_diffuse_using_1point.3042: 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_nvectors.2798 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 4 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_intersection_points.2783 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 4 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_energy.2789 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  lw r30 r3 0 
  sll r3 r4 2 
  lw r30 r5 8 
  lwo r5 r4 r4 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r1 4 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)p_group_id.2793 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  lwo r4 r3 r3 
  sll r2 r4 2 
  lw r30 r5 16 
  lwo r5 r4 r4 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt.s)trace_diffuse_ray_80percent.3038 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  lw r30 r2 0 
  sll r2 r2 2 
  lw r30 r3 20 
  lwo r3 r2 r2 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  j (test/sfiles/minrt.s)vecaccumv.2735 
(test/sfiles/minrt.s)calc_diffuse_using_5points.3045: 
  sll r1 r6 2 
  lwo r2 r6 r2 
  sw r5 r30 0 
  sw r4 r30 4 
  sw r3 r30 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 1 
  lw r30 r3 12 
  sub r3 r2 r2 
  sll r2 r2 2 
  lw r30 r4 8 
  lwo r4 r2 r2 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 8 
  lwo r4 r3 r3 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r3 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 1 
  lw r30 r3 12 
  add r3 r2 r2 
  sll r2 r2 2 
  lw r30 r4 8 
  lwo r4 r2 r2 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 4 
  lwo r4 r3 r3 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -32 
  lw r30 r3 0 
  sll r3 r4 2 
  lw r30 r5 16 
  lwo r5 r4 r4 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 20 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt.s)vecadd.2726 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 24 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt.s)vecadd.2726 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 28 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt.s)vecadd.2726 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 32 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt.s)vecadd.2726 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  lwo r2 r1 r1 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt.s)p_energy.2789 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r3 0 
  sll r3 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -36 
  mov r28 r2 
  mov r2 r1 
  mov r1 r28 
  j (test/sfiles/minrt.s)vecaccumv.2735 
(test/sfiles/minrt.s)do_without_neighbors.3051: 
  addi r0 r3 4 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8681 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8681: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)p_surface_ids.2785 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  lw r30 r3 4 
  sll r3 r4 2 
  lwo r1 r4 r1 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8683 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8683: 
  lw r30 r1 0 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)p_calc_diffuse.2787 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8685 
  lw r30 r1 0 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)calc_diffuse_using_1point.3042 
  addi r30 r30 -12 
  lw r30 r31 8 
  j (test/sfiles/minrt.s)beq_cont.8686 
(test/sfiles/minrt.s)beq_else.8685: 
(test/sfiles/minrt.s)beq_cont.8686: 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r2 
  lw r30 r1 0 
  j (test/sfiles/minrt.s)do_without_neighbors.3051 
(test/sfiles/minrt.s)neighbors_exist.3054: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 1 
  sll r4 r4 2 
  lwo r3 r4 r3 
  addi r0 r4 1 
  add r2 r4 r4 
  sub r3 r4 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8687 
  addi r0 r3 0 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8688 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 1 
  add r1 r3 r3 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8689 
  addi r0 r2 0 
  sub r1 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8690 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8690: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8689: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8688: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8687: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)get_surface_id.3058: 
  sw r2 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt.s)p_surface_ids.2785 
  addi r30 r30 -8 
  lw r30 r31 4 
  lw r30 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  jr r31 
(test/sfiles/minrt.s)neighbors_are_available.3061: 
  sll r1 r6 2 
  lwo r3 r6 r6 
  sw r3 r30 0 
  sw r4 r30 4 
  sw r5 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r2 r5 
  mov r1 r6 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 16 
  sll r2 r3 2 
  lw r30 r4 12 
  lwo r4 r3 r3 
  lw r30 r4 8 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r4 
  mov r1 r3 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8691 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8691: 
  lw r30 r1 16 
  sll r1 r3 2 
  lw r30 r4 4 
  lwo r4 r3 r3 
  lw r30 r4 8 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r4 
  mov r1 r3 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8692 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8692: 
  addi r0 r1 1 
  lw r30 r3 16 
  sub r3 r1 r1 
  sll r1 r1 2 
  lw r30 r4 0 
  lwo r4 r1 r1 
  lw r30 r5 8 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r5 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8693 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8693: 
  addi r0 r1 1 
  lw r30 r3 16 
  add r3 r1 r1 
  sll r1 r1 2 
  lw r30 r3 0 
  lwo r3 r1 r1 
  lw r30 r3 8 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r3 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8694 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8694: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt.s)try_exploit_neighbors.3067: 
  sll r1 r7 2 
  lwo r4 r7 r7 
  addi r0 r8 4 
  sub r6 r8 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8695 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8695: 
  addi r0 r8 0 
  sw r2 r30 0 
  sw r7 r30 4 
  sw r6 r30 8 
  sw r5 r30 12 
  sw r4 r30 16 
  sw r3 r30 20 
  sw r1 r30 24 
  sw r8 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r2 r6 
  mov r1 r7 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 28 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8697 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8697: 
  lw r30 r1 24 
  lw r30 r2 20 
  lw r30 r3 16 
  lw r30 r4 12 
  lw r30 r5 8 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)neighbors_are_available.3061 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8699 
  lw r30 r1 4 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)p_calc_diffuse.2787 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r5 8 
  sll r5 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8700 
  lw r30 r1 24 
  lw r30 r2 20 
  lw r30 r3 16 
  lw r30 r4 12 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)calc_diffuse_using_5points.3045 
  addi r30 r30 -36 
  lw r30 r31 32 
  j (test/sfiles/minrt.s)beq_cont.8701 
(test/sfiles/minrt.s)beq_else.8700: 
(test/sfiles/minrt.s)beq_cont.8701: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r6 
  lw r30 r1 24 
  lw r30 r2 0 
  lw r30 r3 20 
  lw r30 r4 16 
  lw r30 r5 12 
  j (test/sfiles/minrt.s)try_exploit_neighbors.3067 
(test/sfiles/minrt.s)beq_tail_else.8699: 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 16 
  lwo r2 r1 r1 
  lw r30 r2 8 
  j (test/sfiles/minrt.s)do_without_neighbors.3051 
(test/sfiles/minrt.s)write_ppm_header.3074: 
  addi r0 r1 80 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 51 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 10 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 255 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 10 
  j min_caml_print_char 
(test/sfiles/minrt.s)write_rgb_element.3076: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_int_of_float 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r2 255 
  sub r1 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_nontail_else.8702 
  addi r0 r1 255 
  j (test/sfiles/minrt.s)ble_nontail_cont.8703 
(test/sfiles/minrt.s)ble_nontail_else.8702: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_nontail_else.8704 
  addi r0 r1 0 
  j (test/sfiles/minrt.s)ble_nontail_cont.8705 
(test/sfiles/minrt.s)ble_nontail_else.8704: 
(test/sfiles/minrt.s)ble_nontail_cont.8705: 
(test/sfiles/minrt.s)ble_nontail_cont.8703: 
  j min_caml_print_int 
(test/sfiles/minrt.s)write_rgb.3078: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)write_rgb_element.3076 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)write_rgb_element.3076 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)write_rgb_element.3076 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 10 
  j min_caml_print_char 
(test/sfiles/minrt.s)pretrace_diffuse_rays.3080: 
  addi r0 r3 4 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8706 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8706: 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)get_surface_id.3058 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8708 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8708: 
  lw r30 r1 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)p_calc_diffuse.2787 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 0 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8710 
  lw r30 r1 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)p_group_id.2793 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt.s)vecbzero.2701 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r1 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)p_nvectors.2798 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 4 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_intersection_points.2783 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  lw r30 r3 8 
  sll r3 r3 2 
  lwo r2 r3 r2 
  lw r30 r3 0 
  sll r3 r4 2 
  lw r30 r5 12 
  lwo r5 r4 r4 
  sll r3 r5 2 
  lwo r1 r5 r1 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r3 r1 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)trace_diffuse_rays.3034 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 4 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)p_received_ray_20percent.2791 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 0 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt.s)beq_cont.8711 
(test/sfiles/minrt.s)beq_else.8710: 
(test/sfiles/minrt.s)beq_cont.8711: 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r2 
  lw r30 r1 4 
  j (test/sfiles/minrt.s)pretrace_diffuse_rays.3080 
(test/sfiles/minrt.s)pretrace_pixels.3083: 
  addi r0 r4 0 
  sub r4 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8712 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8712: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_scan_pitch 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r4 r5 f3 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r4 
  sub r2 r4 r4 
  sw r3 r30 0 
  sw r1 r30 4 
  sw r2 r30 8 
  swc1 f2 r30 12 
  swc1 f1 r30 16 
  swc1 f0 r30 20 
  swc1 f3 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r4 
  jal min_caml_float_of_int 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f1 f1 
  lwc1 r30 f2 20 
  add.s f1 f2 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 1 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f1 f1 
  lwc1 r30 f3 16 
  add.s f1 f3 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 12 
  add.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)vecunit_sgn.2711 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)vecbzero.2701 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 0 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  lw r30 r3 8 
  sll r3 r4 2 
  lw r30 r5 4 
  lwo r5 r4 r4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r3 r4 
  jal (test/sfiles/minrt.s)trace_ray.3020 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt.s)p_rgb.2781 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  lw r30 r4 0 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)p_set_group_id.2795 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  addi r0 r4 0 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)pretrace_diffuse_rays.3080 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 1 
  lw r30 r2 8 
  sub r2 r1 r1 
  addi r0 r2 1 
  lw r30 r3 0 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  jal (test/sfiles/minrt.s)add_mod5.2690 
  addi r30 r30 -36 
  lw r30 r31 32 
  mov r3 r1 
  lwc1 r30 f0 20 
  lwc1 r30 f1 16 
  lwc1 r30 f2 12 
  lw r30 r1 4 
  lw r30 r2 28 
  j (test/sfiles/minrt.s)pretrace_pixels.3083 
(test/sfiles/minrt.s)pretrace_line.3090: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_scan_pitch 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r4 r5 f0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 1 
  sll r5 r5 2 
  lwo r4 r5 r4 
  sub r2 r4 r2 
  sw r3 r30 0 
  sw r1 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f0 f1 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  add.s f1 f2 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  mul.s f0 f2 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f2 f3 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f0 f3 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f0 f3 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r2 
  lw r30 r1 4 
  lw r30 r3 0 
  mov.s f2 f31 
  mov.s f0 f2 
  mov.s f1 f0 
  mov.s f31 f1 
  j (test/sfiles/minrt.s)pretrace_pixels.3083 
(test/sfiles/minrt.s)scan_pixel.3094: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r7 0 
  sll r7 r7 2 
  lwo r6 r7 r6 
  sub r6 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8714 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r7 2 
  lwo r4 r7 r7 
  sw r3 r30 0 
  sw r4 r30 4 
  sw r5 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r6 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r7 
  jal (test/sfiles/minrt.s)p_rgb.2781 
  addi r30 r30 -28 
  lw r30 r31 24 
  mov r2 r1 
  lw r30 r1 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r1 16 
  lw r30 r2 12 
  lw r30 r3 8 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)neighbors_exist.3054 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_else.8715 
  addi r0 r6 0 
  lw r30 r1 16 
  lw r30 r2 12 
  lw r30 r3 0 
  lw r30 r4 4 
  lw r30 r5 8 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)try_exploit_neighbors.3067 
  addi r30 r30 -28 
  lw r30 r31 24 
  j (test/sfiles/minrt.s)beq_cont.8716 
(test/sfiles/minrt.s)beq_else.8715: 
  lw r30 r1 16 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  addi r0 r4 0 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)do_without_neighbors.3051 
  addi r30 r30 -28 
  lw r30 r31 24 
(test/sfiles/minrt.s)beq_cont.8716: 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)write_rgb.3078 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  lw r30 r2 12 
  lw r30 r3 0 
  lw r30 r4 4 
  lw r30 r5 8 
  j (test/sfiles/minrt.s)scan_pixel.3094 
(test/sfiles/minrt.s)ble_tail_else.8714: 
  jr r31 
(test/sfiles/minrt.s)scan_line.3100: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r7 1 
  sll r7 r7 2 
  lwo r6 r7 r6 
  sub r6 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8718 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r7 1 
  sll r7 r7 2 
  lwo r6 r7 r6 
  addi r0 r7 1 
  sub r6 r7 r6 
  sw r5 r30 0 
  sw r4 r30 4 
  sw r3 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sub r6 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_nontail_else.8719 
  addi r0 r6 1 
  add r1 r6 r6 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r3 r5 
  mov r2 r6 
  mov r1 r4 
  jal (test/sfiles/minrt.s)pretrace_line.3090 
  addi r30 r30 -24 
  lw r30 r31 20 
  j (test/sfiles/minrt.s)ble_nontail_cont.8720 
(test/sfiles/minrt.s)ble_nontail_else.8719: 
(test/sfiles/minrt.s)ble_nontail_cont.8720: 
  addi r0 r1 0 
  lw r30 r2 16 
  lw r30 r3 12 
  lw r30 r4 8 
  lw r30 r5 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)scan_pixel.3094 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  addi r0 r2 2 
  lw r30 r3 0 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r3 
  jal (test/sfiles/minrt.s)add_mod5.2690 
  addi r30 r30 -28 
  lw r30 r31 24 
  mov r5 r1 
  lw r30 r1 20 
  lw r30 r2 8 
  lw r30 r3 4 
  lw r30 r4 12 
  j (test/sfiles/minrt.s)scan_line.3100 
(test/sfiles/minrt.s)ble_tail_else.8718: 
  jr r31 
(test/sfiles/minrt.s)create_float5x3array.3106: 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  mov r2 r1 
  addi r0 r1 5 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r2 1 
  addi r0 r3 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  addi r0 r1 2 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  addi r0 r1 3 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 12 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  addi r0 r1 4 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 16 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  mov r1 r3 
  jr r31 
(test/sfiles/minrt.s)create_pixel.3108: 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt.s)create_float5x3array.3106 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 5 
  addi r0 r3 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r2 
  mov r2 r3 
  jal min_caml_create_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 5 
  addi r0 r3 0 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  mov r2 r3 
  jal min_caml_create_array 
  addi r30 r30 -16 
  lw r30 r31 12 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)create_float5x3array.3106 
  addi r30 r30 -20 
  lw r30 r31 16 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)create_float5x3array.3106 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 1 
  addi r0 r3 0 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  mov r2 r3 
  jal min_caml_create_array 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)create_float5x3array.3106 
  addi r30 r30 -32 
  lw r30 r31 28 
  mov r2 r27 
  addi r27 r27 32 
  sw r1 r2 28 
  lw r30 r1 24 
  sw r1 r2 24 
  lw r30 r1 20 
  sw r1 r2 20 
  lw r30 r1 16 
  sw r1 r2 16 
  lw r30 r1 12 
  sw r1 r2 12 
  lw r30 r1 8 
  sw r1 r2 8 
  lw r30 r1 4 
  sw r1 r2 4 
  lw r30 r1 0 
  sw r1 r2 0 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt.s)init_line_elements.3110: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8722 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8722: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)create_pixel.3108 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r3 2 
  lw r30 r4 0 
  swo r1 r4 r3 
  addi r0 r1 1 
  sub r2 r1 r2 
  mov r1 r4 
  j (test/sfiles/minrt.s)init_line_elements.3110 
(test/sfiles/minrt.s)create_pixelline.3113: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt.s)create_pixel.3108 
  addi r30 r30 -8 
  lw r30 r31 4 
  mov r2 r1 
  lw r30 r1 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_create_array 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 2 
  sub r2 r3 r2 
  j (test/sfiles/minrt.s)init_line_elements.3110 
(test/sfiles/minrt.s)tan.3115: 
  swc1 f0 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_sin 
  addi r30 r30 -8 
  lw r30 r31 4 
  lwc1 r30 f1 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  div.s f1 f0 f0 
  jr r31 
(test/sfiles/minrt.s)adjust_position.3117: 
  mul.s f0 f0 f0 
  lui r24 15820 
  ori r24 r24 52429 
  mtc1 r24 f2 
  add.s f0 f2 f0 
  swc1 f1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_sqrt 
  addi r30 r30 -8 
  lw r30 r31 4 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f1 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov.s f1 f0 
  jal min_caml_atan 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 0 
  mul.s f0 f1 f0 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)tan.3115 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt.s)calc_dirvec.3120: 
  addi r0 r4 5 
  sub r4 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8723 
  swc1 f2 r30 0 
  sw r3 r30 4 
  sw r2 r30 8 
  swc1 f3 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f0 
  mov.s f2 f1 
  jal (test/sfiles/minrt.s)adjust_position.3117 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  lwc1 r30 f1 12 
  swc1 f0 r30 20 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)adjust_position.3117 
  addi r30 r30 -32 
  lw r30 r31 28 
  mov.s f0 f1 
  lwc1 r30 f0 20 
  lwc1 r30 f2 0 
  lwc1 r30 f3 12 
  lw r30 r1 24 
  lw r30 r2 8 
  lw r30 r3 4 
  j (test/sfiles/minrt.s)calc_dirvec.3120 
(test/sfiles/minrt.s)ble_tail_else.8723: 
  mul.s f0 f0 f2 
  mul.s f1 f1 f3 
  add.s f2 f3 f2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  sw r3 r30 4 
  sw r2 r30 8 
  swc1 f1 r30 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov.s f2 f0 
  jal min_caml_sqrt 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  div.s f1 f0 f1 
  lwc1 r30 f2 28 
  div.s f2 f0 f2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f3 
  div.s f3 f0 f0 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 8 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 4 
  sll r2 r3 2 
  lwo r1 r3 r3 
  sw r1 r30 36 
  swc1 f0 r30 40 
  swc1 f2 r30 44 
  swc1 f1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r1 r3 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  lwc1 r30 f1 44 
  lwc1 r30 f2 40 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 40 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 44 
  neg.s f0 f2 
  lwc1 r30 f1 48 
  lwc1 r30 f3 40 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f1 f0 
  mov.s f3 f1 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 80 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  neg.s f0 f1 
  lwc1 r30 f2 44 
  neg.s f2 f3 
  lwc1 r30 f4 40 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f3 f2 
  mov.s f4 f0 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  neg.s f0 f1 
  lwc1 r30 f2 44 
  neg.s f2 f3 
  lwc1 r30 f4 40 
  neg.s f4 f5 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f5 f2 
  mov.s f1 f0 
  mov.s f3 f1 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 41 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  neg.s f0 f1 
  lwc1 r30 f2 40 
  neg.s f2 f3 
  lwc1 r30 f4 44 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f4 f2 
  mov.s f1 f0 
  mov.s f3 f1 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 81 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r2 36 
  lwo r2 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 40 
  neg.s f0 f0 
  lwc1 r30 f1 48 
  lwc1 r30 f2 44 
  j (test/sfiles/minrt.s)vecset.2693 
(test/sfiles/minrt.s)calc_dirvecs.3128: 
  addi r0 r4 0 
  sub r4 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8724 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8724: 
  sw r1 r30 0 
  swc1 f0 r30 4 
  sw r3 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_float_of_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 15948 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16230 
  ori r24 r24 26214 
  mtc1 r24 f1 
  sub.s f0 f1 f2 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  lwc1 r30 f3 4 
  lw r30 r2 12 
  lw r30 r3 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)calc_dirvec.3120 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_float_of_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 15948 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 15820 
  ori r24 r24 52429 
  mtc1 r24 f1 
  add.s f0 f1 f2 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  addi r0 r2 2 
  lw r30 r3 8 
  add r3 r2 r2 
  lwc1 r30 f3 4 
  lw r30 r4 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r3 r2 
  mov r2 r4 
  jal (test/sfiles/minrt.s)calc_dirvec.3120 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  addi r0 r2 1 
  lw r30 r3 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt.s)add_mod5.2690 
  addi r30 r30 -24 
  lw r30 r31 20 
  mov r2 r1 
  lwc1 r30 f0 4 
  lw r30 r1 16 
  lw r30 r3 8 
  j (test/sfiles/minrt.s)calc_dirvecs.3128 
(test/sfiles/minrt.s)calc_dirvec_rows.3133: 
  addi r0 r4 0 
  sub r4 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8726 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8726: 
  sw r1 r30 0 
  sw r3 r30 4 
  sw r2 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lui r24 15948 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16230 
  ori r24 r24 26214 
  mtc1 r24 f1 
  sub.s f0 f1 f0 
  addi r0 r1 4 
  lw r30 r2 8 
  lw r30 r3 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)calc_dirvecs.3128 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  addi r0 r2 2 
  lw r30 r3 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r3 
  jal (test/sfiles/minrt.s)add_mod5.2690 
  addi r30 r30 -20 
  lw r30 r31 16 
  mov r2 r1 
  addi r0 r1 4 
  lw r30 r3 4 
  add r3 r1 r3 
  lw r30 r1 12 
  j (test/sfiles/minrt.s)calc_dirvec_rows.3133 
(test/sfiles/minrt.s)create_dirvec.3137: 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  mov r2 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r1 r3 r1 
  sw r2 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_create_array 
  addi r30 r30 -8 
  lw r30 r31 4 
  mov r2 r27 
  addi r27 r27 8 
  sw r1 r2 4 
  lw r30 r1 0 
  sw r1 r2 0 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt.s)create_dirvec_elements.3139: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8728 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8728: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt.s)create_dirvec.3137 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r3 2 
  lw r30 r4 0 
  swo r1 r4 r3 
  addi r0 r1 1 
  sub r2 r1 r2 
  mov r1 r4 
  j (test/sfiles/minrt.s)create_dirvec_elements.3139 
(test/sfiles/minrt.s)create_dirvecs.3142: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8730 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8730: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 120 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)create_dirvec.3137 
  addi r30 r30 -16 
  lw r30 r31 12 
  mov r2 r1 
  lw r30 r1 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_create_array 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 4 
  sll r2 r3 2 
  lw r30 r4 0 
  swo r1 r4 r3 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r0 r3 118 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  jal (test/sfiles/minrt.s)create_dirvec_elements.3139 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 4 
  sub r2 r1 r1 
  j (test/sfiles/minrt.s)create_dirvecs.3142 
(test/sfiles/minrt.s)init_dirvec_constants.3144: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8732 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8732: 
  sll r2 r3 2 
  lwo r1 r3 r3 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal (test/sfiles/minrt.s)setup_dirvec_constants.2929 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r1 1 
  lw r30 r2 4 
  sub r2 r1 r2 
  lw r30 r1 0 
  j (test/sfiles/minrt.s)init_dirvec_constants.3144 
(test/sfiles/minrt.s)init_vecset_constants.3147: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8734 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8734: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 119 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r1 r2 
  mov r2 r3 
  jal (test/sfiles/minrt.s)init_dirvec_constants.3144 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  j (test/sfiles/minrt.s)init_vecset_constants.3147 
(test/sfiles/minrt.s)init_dirvecs.3149: 
  addi r0 r1 4 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)create_dirvecs.3142 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 9 
  addi r0 r2 0 
  addi r0 r3 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)calc_dirvec_rows.3133 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 4 
  j (test/sfiles/minrt.s)init_vecset_constants.3147 
(test/sfiles/minrt.s)add_reflection.3151: 
  sw r1 r30 0 
  sw r2 r30 4 
  swc1 f0 r30 8 
  swc1 f3 r30 12 
  swc1 f2 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)create_dirvec.3137 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f0 20 
  lwc1 r30 f1 16 
  lwc1 r30 f2 12 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)vecset.2693 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt.s)setup_dirvec_constants.2929 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  mov r2 r27 
  addi r27 r27 16 
  lwc1 r30 f0 8 
  swc1 f0 r2 8 
  lw r30 r3 24 
  sw r3 r2 4 
  lw r30 r3 4 
  sw r3 r2 0 
  lw r30 r3 0 
  sll r3 r3 2 
  swo r2 r1 r3 
  jr r31 
(test/sfiles/minrt.s)setup_rect_reflection.3158: 
  addi r0 r3 4 
  mult r1 r3 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r3 r30 0 
  sw r1 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  neg.s f1 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  neg.s f2 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  neg.s f3 f3 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f4 
  lw r30 r3 0 
  swc1 f2 r30 12 
  swc1 f3 r30 16 
  swc1 f1 r30 20 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r2 r1 
  mov r1 r3 
  mov.s f4 f1 
  jal (test/sfiles/minrt.s)add_reflection.3151 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r1 
  addi r0 r3 2 
  lw r30 r4 4 
  add r4 r3 r3 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r6 1 
  sll r6 r6 2 
  lwoc1 r5 r6 f2 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f3 16 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r2 r3 
  jal (test/sfiles/minrt.s)add_reflection.3151 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 2 
  lw r30 r2 0 
  add r2 r1 r1 
  addi r0 r3 3 
  lw r30 r4 4 
  add r4 r3 r3 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r5 2 
  sll r5 r5 2 
  lwoc1 r4 r5 f3 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 12 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r2 r3 
  jal (test/sfiles/minrt.s)add_reflection.3151 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  addi r0 r3 3 
  lw r30 r4 0 
  add r4 r3 r3 
  sll r2 r2 2 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt.s)setup_surface_reflection.3161: 
  addi r0 r3 4 
  mult r1 r3 r1 
  addi r0 r3 1 
  add r1 r3 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 0 
  sw r3 r30 4 
  sw r2 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  lw r30 r2 8 
  swc1 f0 r30 16 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_param_abc.2755 
  addi r30 r30 -28 
  lw r30 r31 24 
  mov r2 r1 
  lw r30 r1 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)veciprod.2714 
  addi r30 r30 -28 
  lw r30 r31 24 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lw r30 r1 8 
  swc1 f0 r30 24 
  swc1 f1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt.s)o_param_a.2749 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  mul.s f0 f1 f0 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -32 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  sub.s f0 f2 f0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lw r30 r1 8 
  swc1 f0 r30 32 
  swc1 f2 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt.s)o_param_b.2751 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  mul.s f0 f1 f0 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  sub.s f0 f2 f0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lw r30 r1 8 
  swc1 f0 r30 40 
  swc1 f2 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt.s)o_param_c.2753 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  mul.s f0 f1 f0 
  addi r30 r30 48 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -48 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f0 f1 f3 
  lwc1 r30 f0 16 
  lwc1 r30 f1 32 
  lwc1 r30 f2 40 
  lw r30 r1 4 
  lw r30 r2 0 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt.s)add_reflection.3151 
  addi r30 r30 -52 
  lw r30 r31 48 
  addi r30 r30 48 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -48 
  addi r0 r2 0 
  addi r0 r3 1 
  lw r30 r4 4 
  add r4 r3 r3 
  sll r2 r2 2 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt.s)setup_reflections.3164: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt.s)ble_tail_else.8739 
  jr r31 
(test/sfiles/minrt.s)ble_tail_else.8739: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r3 2 
  lwo r2 r3 r2 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r2 
  jal (test/sfiles/minrt.s)o_reflectiontype.2743 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8741 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8741: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r1 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)o_diffuse.2763 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt.s)bfle_nontail_else.8743 
  addi r0 r1 1 
  j (test/sfiles/minrt.s)bfle_nontail_cont.8744 
(test/sfiles/minrt.s)bfle_nontail_else.8743: 
  addi r0 r1 0 
(test/sfiles/minrt.s)bfle_nontail_cont.8744: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8745 
  lw r30 r1 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)o_form.2741 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8746 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt.s)beq_tail_else.8747 
  jr r31 
(test/sfiles/minrt.s)beq_tail_else.8747: 
  lw r30 r1 0 
  lw r30 r2 4 
  j (test/sfiles/minrt.s)setup_surface_reflection.3161 
(test/sfiles/minrt.s)beq_tail_else.8746: 
  lw r30 r1 0 
  lw r30 r2 4 
  j (test/sfiles/minrt.s)setup_rect_reflection.3158 
(test/sfiles/minrt.s)beq_tail_else.8745: 
  jr r31 
(test/sfiles/minrt.s)rt.3166: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  swo r1 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 1 
  sll r4 r4 2 
  swo r2 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  addi r0 r5 2 
  div r1 r5 r5 
  sll r4 r4 2 
  swo r5 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 1 
  addi r0 r5 2 
  div r2 r5 r2 
  sll r4 r4 2 
  swo r2 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_scan_pitch 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  lui r24 17152 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r3 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  div.s f1 f0 f0 
  lw r30 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  swoc1 f0 r2 r1 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt.s)create_pixelline.3113 
  addi r30 r30 -16 
  lw r30 r31 12 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt.s)create_pixelline.3113 
  addi r30 r30 -20 
  lw r30 r31 16 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt.s)create_pixelline.3113 
  addi r30 r30 -24 
  lw r30 r31 20 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)read_parameter.2831 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)write_ppm_header.3074 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)init_dirvecs.3149 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)d_vec.2800 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)veccpy.2703 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)setup_dirvec_constants.2929 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r1 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)setup_reflections.3164 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  addi r0 r3 0 
  lw r30 r1 16 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt.s)pretrace_line.3090 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r1 0 
  addi r0 r5 2 
  lw r30 r2 12 
  lw r30 r3 16 
  lw r30 r4 20 
  j (test/sfiles/minrt.s)scan_line.3100 
_min_caml_start: 
  lui r27 32 
  jal min_caml_globals 
  addi r0 r31 0 
  addi r0 r1 512 
  addi r0 r2 512 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt.s)rt.3166 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r0 0 
  halt 

(test/sfiles/minrt_new.s)xor.2742: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8386 
  addi r0 r1 0 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8387 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8387: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8386: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)sgn.2745: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8388 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8389 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8388: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8389: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8390 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8390: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8391 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8392 
(test/sfiles/minrt_new.s)bfle_nontail_else.8391: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8392: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8393 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8393: 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f0 
  jr r31 
(test/sfiles/minrt_new.s)fneg_cond.2747: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8394 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8394: 
  neg.s f0 f0 
  jr r31 
(test/sfiles/minrt_new.s)add_mod5.2750: 
  add r1 r2 r1 
  addi r0 r2 5 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8395 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8395: 
  addi r0 r2 5 
  sub r1 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)vecset.2753: 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r2 1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r0 r2 2 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)vecfill.2758: 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r2 1 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r2 2 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)vecbzero.2761: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)vecfill.2758 
(test/sfiles/minrt_new.s)veccpy.2763: 
  addi r0 r3 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 2 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)vecunit_sgn.2771: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f0 f1 f0 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_sqrt 
  addi r30 r30 -12 
  lw r30 r31 8 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8399 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8400 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8399: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8400: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8401 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8402 
(test/sfiles/minrt_new.s)beq_else.8401: 
  addi r0 r1 0 
  lw r30 r2 4 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8403 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8404 
(test/sfiles/minrt_new.s)beq_else.8403: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f0 
(test/sfiles/minrt_new.s)beq_cont.8404: 
(test/sfiles/minrt_new.s)beq_cont.8402: 
  addi r0 r1 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 0 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  sll r1 r1 2 
  swoc1 f1 r3 r1 
  addi r0 r1 1 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  sll r1 r1 2 
  swoc1 f1 r3 r1 
  addi r0 r1 2 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f0 
  sll r1 r1 2 
  swoc1 f0 r3 r1 
  jr r31 
(test/sfiles/minrt_new.s)veciprod.2774: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  mul.s f0 f1 f0 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r2 r3 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt_new.s)veciprod2.2777: 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f3 f0 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f3 f1 f1 
  add.s f0 f1 f0 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt_new.s)vecaccum.2782: 
  addi r0 r3 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r1 r4 f1 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  mul.s f0 f2 f2 
  add.s f1 f2 f1 
  sll r3 r3 2 
  swoc1 f1 r1 r3 
  addi r0 r3 1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r1 r4 f1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  mul.s f0 f2 f2 
  add.s f1 f2 f1 
  sll r3 r3 2 
  swoc1 f1 r1 r3 
  addi r0 r3 2 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r1 r4 f1 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  mul.s f0 f2 f0 
  add.s f1 f0 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)vecadd.2786: 
  addi r0 r3 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r1 r4 f0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  add.s f0 f1 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 1 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r1 r4 f0 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  add.s f0 f1 f0 
  sll r3 r3 2 
  swoc1 f0 r1 r3 
  addi r0 r3 2 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r1 r4 f0 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  add.s f0 f1 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)vecscale.2792: 
  addi r0 r2 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r0 r2 1 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r0 r2 2 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r1 r3 f1 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)vecaccumv.2795: 
  addi r0 r4 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r1 r5 f0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r2 r5 f1 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r3 r5 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r4 r4 2 
  swoc1 f0 r1 r4 
  addi r0 r4 1 
  addi r0 r5 1 
  sll r5 r5 2 
  lwoc1 r1 r5 f0 
  addi r0 r5 1 
  sll r5 r5 2 
  lwoc1 r2 r5 f1 
  addi r0 r5 1 
  sll r5 r5 2 
  lwoc1 r3 r5 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r4 r4 2 
  swoc1 f0 r1 r4 
  addi r0 r4 2 
  addi r0 r5 2 
  sll r5 r5 2 
  lwoc1 r1 r5 f0 
  addi r0 r5 2 
  sll r5 r5 2 
  lwoc1 r2 r5 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r4 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)o_texturetype.2799: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)o_form.2801: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt_new.s)o_reflectiontype.2803: 
  lw r1 r1 8 
  jr r31 
(test/sfiles/minrt_new.s)o_isinvert.2805: 
  lw r1 r1 24 
  jr r31 
(test/sfiles/minrt_new.s)o_isrot.2807: 
  lw r1 r1 12 
  jr r31 
(test/sfiles/minrt_new.s)o_param_a.2809: 
  lw r1 r1 16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_b.2811: 
  lw r1 r1 16 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_c.2813: 
  lw r1 r1 16 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_abc.2815: 
  lw r1 r1 16 
  jr r31 
(test/sfiles/minrt_new.s)o_param_x.2817: 
  lw r1 r1 20 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_y.2819: 
  lw r1 r1 20 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_z.2821: 
  lw r1 r1 20 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_diffuse.2823: 
  lw r1 r1 28 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_hilight.2825: 
  lw r1 r1 28 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_color_red.2827: 
  lw r1 r1 32 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_color_green.2829: 
  lw r1 r1 32 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_color_blue.2831: 
  lw r1 r1 32 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_r1.2833: 
  lw r1 r1 36 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_r2.2835: 
  lw r1 r1 36 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_r3.2837: 
  lw r1 r1 36 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  jr r31 
(test/sfiles/minrt_new.s)o_param_ctbl.2839: 
  lw r1 r1 40 
  jr r31 
(test/sfiles/minrt_new.s)p_rgb.2841: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)p_intersection_points.2843: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt_new.s)p_surface_ids.2845: 
  lw r1 r1 8 
  jr r31 
(test/sfiles/minrt_new.s)p_calc_diffuse.2847: 
  lw r1 r1 12 
  jr r31 
(test/sfiles/minrt_new.s)p_energy.2849: 
  lw r1 r1 16 
  jr r31 
(test/sfiles/minrt_new.s)p_received_ray_20percent.2851: 
  lw r1 r1 20 
  jr r31 
(test/sfiles/minrt_new.s)p_group_id.2853: 
  lw r1 r1 24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)p_set_group_id.2855: 
  lw r1 r1 24 
  addi r0 r3 0 
  sll r3 r3 2 
  swo r2 r1 r3 
  jr r31 
(test/sfiles/minrt_new.s)p_nvectors.2858: 
  lw r1 r1 28 
  jr r31 
(test/sfiles/minrt_new.s)d_vec.2860: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)d_const.2862: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt_new.s)r_surface_id.2864: 
  lw r1 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)r_dvec.2866: 
  lw r1 r1 4 
  jr r31 
(test/sfiles/minrt_new.s)r_bright.2868: 
  lwc1 r1 f0 8 
  jr r31 
(test/sfiles/minrt_new.s)rad.2870: 
  lui r24 15502 
  ori r24 r24 64053 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt_new.s)read_screen_settings.2872: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_read_float 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  swoc1 f0 r2 r1 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  sw r1 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_read_float 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 2 
  sw r1 r30 16 
  sw r2 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_read_float 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r1 20 
  sll r1 r1 2 
  lw r30 r2 16 
  swoc1 f0 r2 r1 
  sw r31 r30 24 
  addi r30 r30 28 
  jal min_caml_read_float 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -28 
  lw r30 r31 24 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_cos 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -36 
  lw r30 r31 32 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal min_caml_read_float 
  addi r30 r30 -40 
  lw r30 r31 36 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -40 
  lw r30 r31 36 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal min_caml_cos 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -48 
  lw r30 r31 44 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  lwc1 r30 f1 28 
  mul.s f1 f0 f2 
  lui r24 17224 
  ori r24 r24 0 
  mtc1 r24 f3 
  mul.s f2 f3 f2 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  lui r24 49992 
  ori r24 r24 0 
  mtc1 r24 f2 
  lwc1 r30 f3 32 
  mul.s f3 f2 f2 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  lwc1 r30 f2 40 
  mul.s f1 f2 f4 
  lui r24 17224 
  ori r24 r24 0 
  mtc1 r24 f5 
  mul.s f4 f5 f4 
  sll r2 r2 2 
  swoc1 f4 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sll r2 r2 2 
  swoc1 f4 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  neg.s f0 f4 
  sll r2 r2 2 
  swoc1 f4 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  neg.s f3 f4 
  mul.s f4 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  neg.s f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  neg.s f3 f0 
  mul.s f0 f2 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  sub.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 1 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  sub.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r2 2 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screen 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  addi r30 r30 44 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -44 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  sub.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)read_light.2874: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_read_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_read_float 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -4 
  lw r30 r31 0 
  swc1 f0 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_sin 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r2 1 
  neg.s f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_read_float 
  addi r30 r30 -8 
  lw r30 r31 4 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -8 
  lw r30 r31 4 
  lwc1 r30 f1 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  lwc1 r30 f0 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_cos 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_beam 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_read_float 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)rotate_quadratic_matrix.2876: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_cos 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  lwc1 r30 f2 16 
  mul.s f2 f1 f3 
  lwc1 r30 f4 20 
  lwc1 r30 f5 12 
  mul.s f5 f4 f6 
  mul.s f6 f1 f6 
  lwc1 r30 f7 8 
  mul.s f7 f0 f8 
  sub.s f6 f8 f6 
  mul.s f7 f4 f8 
  mul.s f8 f1 f8 
  mul.s f5 f0 f9 
  add.s f8 f9 f8 
  mul.s f2 f0 f9 
  mul.s f5 f4 f10 
  mul.s f10 f0 f10 
  mul.s f7 f1 f11 
  add.s f10 f11 f10 
  mul.s f7 f4 f11 
  mul.s f11 f0 f0 
  mul.s f5 f1 f1 
  sub.s f0 f1 f0 
  neg.s f4 f1 
  mul.s f5 f2 f4 
  mul.s f7 f2 f2 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f5 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f7 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f11 
  addi r0 r1 0 
  mul.s f3 f3 f12 
  mul.s f5 f12 f12 
  mul.s f9 f9 f13 
  mul.s f7 f13 f13 
  add.s f12 f13 f12 
  mul.s f1 f1 f13 
  mul.s f11 f13 f13 
  add.s f12 f13 f12 
  sll r1 r1 2 
  swoc1 f12 r2 r1 
  addi r0 r1 1 
  mul.s f6 f6 f12 
  mul.s f5 f12 f12 
  mul.s f10 f10 f13 
  mul.s f7 f13 f13 
  add.s f12 f13 f12 
  mul.s f4 f4 f13 
  mul.s f11 f13 f13 
  add.s f12 f13 f12 
  sll r1 r1 2 
  swoc1 f12 r2 r1 
  addi r0 r1 2 
  mul.s f8 f8 f12 
  mul.s f5 f12 f12 
  mul.s f0 f0 f13 
  mul.s f7 f13 f13 
  add.s f12 f13 f12 
  mul.s f2 f2 f13 
  mul.s f11 f13 f13 
  add.s f12 f13 f12 
  sll r1 r1 2 
  swoc1 f12 r2 r1 
  addi r0 r1 0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f12 
  mul.s f5 f6 f13 
  mul.s f13 f8 f13 
  mul.s f7 f10 f14 
  mul.s f14 f0 f14 
  add.s f13 f14 f13 
  mul.s f11 f4 f14 
  mul.s f14 f2 f14 
  add.s f13 f14 f13 
  mul.s f12 f13 f12 
  sll r1 r1 2 
  lw r30 r2 4 
  swoc1 f12 r2 r1 
  addi r0 r1 1 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f12 
  mul.s f5 f3 f13 
  mul.s f13 f8 f8 
  mul.s f7 f9 f13 
  mul.s f13 f0 f0 
  add.s f8 f0 f0 
  mul.s f11 f1 f8 
  mul.s f8 f2 f2 
  add.s f0 f2 f0 
  mul.s f12 f0 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f0 
  mul.s f5 f3 f2 
  mul.s f2 f6 f2 
  mul.s f7 f9 f3 
  mul.s f3 f10 f3 
  add.s f2 f3 f2 
  mul.s f11 f1 f1 
  mul.s f1 f4 f1 
  add.s f2 f1 f1 
  mul.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)read_nth_object.2879: 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_read_int 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 -1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8414 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal min_caml_read_int 
  addi r30 r30 -12 
  lw r30 r31 8 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_read_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_read_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_read_float 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal min_caml_read_float 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal min_caml_read_float 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 32 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 36 
  addi r30 r30 40 
  jal min_caml_create_float_array 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sw r1 r30 36 
  sw r2 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal min_caml_read_float 
  addi r30 r30 -48 
  lw r30 r31 44 
  lw r30 r1 40 
  sll r1 r1 2 
  lw r30 r2 36 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  jal min_caml_read_float 
  addi r30 r30 -52 
  lw r30 r31 48 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 36 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal min_caml_read_float 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r1 48 
  sll r1 r1 2 
  lw r30 r2 36 
  swoc1 f0 r2 r1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  swc1 f0 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal min_caml_read_float 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8415 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8416 
(test/sfiles/minrt_new.s)bfle_nontail_else.8415: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8416: 
  addi r0 r2 2 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -64 
  lw r30 r31 60 
  addi r0 r2 0 
  sw r1 r30 60 
  sw r2 r30 64 
  sw r31 r30 68 
  addi r30 r30 72 
  jal min_caml_read_float 
  addi r30 r30 -72 
  lw r30 r31 68 
  lw r30 r1 64 
  sll r1 r1 2 
  lw r30 r2 60 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal min_caml_read_float 
  addi r30 r30 -76 
  lw r30 r31 72 
  lw r30 r1 68 
  sll r1 r1 2 
  lw r30 r2 60 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 72 
  addi r30 r30 76 
  jal min_caml_create_float_array 
  addi r30 r30 -76 
  lw r30 r31 72 
  addi r0 r2 0 
  sw r1 r30 72 
  sw r2 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  jal min_caml_read_float 
  addi r30 r30 -84 
  lw r30 r31 80 
  lw r30 r1 76 
  sll r1 r1 2 
  lw r30 r2 72 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 80 
  sw r31 r30 84 
  addi r30 r30 88 
  jal min_caml_read_float 
  addi r30 r30 -88 
  lw r30 r31 84 
  lw r30 r1 80 
  sll r1 r1 2 
  lw r30 r2 72 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 84 
  sw r31 r30 88 
  addi r30 r30 92 
  jal min_caml_read_float 
  addi r30 r30 -92 
  lw r30 r31 88 
  lw r30 r1 84 
  sll r1 r1 2 
  lw r30 r2 72 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 88 
  addi r30 r30 92 
  jal min_caml_create_float_array 
  addi r30 r30 -92 
  lw r30 r31 88 
  addi r0 r2 0 
  lw r30 r3 16 
  sw r1 r30 88 
  sub r3 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8417 
  addi r0 r2 0 
  sw r2 r30 92 
  sw r31 r30 96 
  addi r30 r30 100 
  jal min_caml_read_float 
  addi r30 r30 -100 
  lw r30 r31 96 
  sw r31 r30 96 
  addi r30 r30 100 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -100 
  lw r30 r31 96 
  lw r30 r1 92 
  sll r1 r1 2 
  lw r30 r2 88 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sw r1 r30 96 
  sw r31 r30 100 
  addi r30 r30 104 
  jal min_caml_read_float 
  addi r30 r30 -104 
  lw r30 r31 100 
  sw r31 r30 100 
  addi r30 r30 104 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -104 
  lw r30 r31 100 
  lw r30 r1 96 
  sll r1 r1 2 
  lw r30 r2 88 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sw r1 r30 100 
  sw r31 r30 104 
  addi r30 r30 108 
  jal min_caml_read_float 
  addi r30 r30 -108 
  lw r30 r31 104 
  sw r31 r30 104 
  addi r30 r30 108 
  jal (test/sfiles/minrt_new.s)rad.2870 
  addi r30 r30 -108 
  lw r30 r31 104 
  lw r30 r1 100 
  sll r1 r1 2 
  lw r30 r2 88 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8418 
(test/sfiles/minrt_new.s)beq_else.8417: 
(test/sfiles/minrt_new.s)beq_cont.8418: 
  addi r0 r1 2 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8419 
  lw r30 r1 56 
  j (test/sfiles/minrt_new.s)beq_cont.8420 
(test/sfiles/minrt_new.s)beq_else.8419: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)beq_cont.8420: 
  addi r0 r3 4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 104 
  sw r31 r30 108 
  addi r30 r30 112 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -112 
  lw r30 r31 108 
  mov r2 r27 
  addi r27 r27 48 
  sw r1 r2 40 
  lw r30 r1 88 
  sw r1 r2 36 
  lw r30 r3 72 
  sw r3 r2 32 
  lw r30 r3 60 
  sw r3 r2 28 
  lw r30 r3 104 
  sw r3 r2 24 
  lw r30 r3 36 
  sw r3 r2 20 
  lw r30 r3 20 
  sw r3 r2 16 
  lw r30 r4 16 
  sw r4 r2 12 
  lw r30 r5 12 
  sw r5 r2 8 
  lw r30 r5 8 
  sw r5 r2 4 
  lw r30 r6 4 
  sw r6 r2 0 
  addi r30 r30 108 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -108 
  lw r30 r7 0 
  sll r7 r7 2 
  swo r2 r6 r7 
  addi r0 r2 3 
  sub r5 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8421 
  addi r0 r2 2 
  sub r5 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8423 
  j (test/sfiles/minrt_new.s)beq_cont.8424 
(test/sfiles/minrt_new.s)beq_else.8423: 
  addi r0 r2 0 
  lw r30 r5 56 
  sub r5 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8425 
  addi r0 r2 0 
  j (test/sfiles/minrt_new.s)beq_cont.8426 
(test/sfiles/minrt_new.s)beq_else.8425: 
  addi r0 r2 1 
(test/sfiles/minrt_new.s)beq_cont.8426: 
  sw r31 r30 108 
  addi r30 r30 112 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)vecunit_sgn.2771 
  addi r30 r30 -112 
  lw r30 r31 108 
(test/sfiles/minrt_new.s)beq_cont.8424: 
  j (test/sfiles/minrt_new.s)beq_cont.8422 
(test/sfiles/minrt_new.s)beq_else.8421: 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r3 r2 f0 
  addi r0 r2 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8427 
  addi r0 r5 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8428 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8427: 
  addi r0 r5 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8428: 
  addi r0 r6 0 
  sw r2 r30 108 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8429 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8430 
(test/sfiles/minrt_new.s)beq_else.8429: 
  swc1 f0 r30 112 
  sw r31 r30 116 
  addi r30 r30 120 
  jal (test/sfiles/minrt_new.s)sgn.2745 
  addi r30 r30 -120 
  lw r30 r31 116 
  lwc1 r30 f1 112 
  mul.s f1 f1 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt_new.s)beq_cont.8430: 
  lw r30 r1 108 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f0 
  addi r0 r1 1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8431 
  addi r0 r3 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8432 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8431: 
  addi r0 r3 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8432: 
  addi r0 r4 0 
  sw r1 r30 116 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8433 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8434 
(test/sfiles/minrt_new.s)beq_else.8433: 
  swc1 f0 r30 120 
  sw r31 r30 124 
  addi r30 r30 128 
  jal (test/sfiles/minrt_new.s)sgn.2745 
  addi r30 r30 -128 
  lw r30 r31 124 
  lwc1 r30 f1 120 
  mul.s f1 f1 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt_new.s)beq_cont.8434: 
  lw r30 r1 116 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f0 
  addi r0 r1 2 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8435 
  addi r0 r3 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8436 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8435: 
  addi r0 r3 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8436: 
  addi r0 r4 0 
  sw r1 r30 124 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8437 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8438 
(test/sfiles/minrt_new.s)beq_else.8437: 
  swc1 f0 r30 128 
  sw r31 r30 132 
  addi r30 r30 136 
  jal (test/sfiles/minrt_new.s)sgn.2745 
  addi r30 r30 -136 
  lw r30 r31 132 
  lwc1 r30 f1 128 
  mul.s f1 f1 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt_new.s)beq_cont.8438: 
  lw r30 r1 124 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8422: 
  addi r0 r1 0 
  lw r30 r2 16 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8439 
  lw r30 r1 20 
  lw r30 r2 88 
  sw r31 r30 132 
  addi r30 r30 136 
  jal (test/sfiles/minrt_new.s)rotate_quadratic_matrix.2876 
  addi r30 r30 -136 
  lw r30 r31 132 
  j (test/sfiles/minrt_new.s)beq_cont.8440 
(test/sfiles/minrt_new.s)beq_else.8439: 
(test/sfiles/minrt_new.s)beq_cont.8440: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8414: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)read_object.2881: 
  addi r0 r2 60 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8441 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt_new.s)read_nth_object.2879 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8442 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r1 
  j (test/sfiles/minrt_new.s)read_object.2881 
(test/sfiles/minrt_new.s)beq_tail_else.8442: 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8441: 
  jr r31 
(test/sfiles/minrt_new.s)read_all_object.2883: 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)read_object.2881 
(test/sfiles/minrt_new.s)read_net_item.2885: 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_read_int 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 -1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8445 
  addi r0 r2 1 
  lw r30 r3 0 
  add r3 r2 r2 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)read_net_item.2885 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8445: 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r1 
  addi r0 r2 -1 
  j min_caml_create_array 
(test/sfiles/minrt_new.s)read_or_network.2887: 
  addi r0 r2 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)read_net_item.2885 
  addi r30 r30 -8 
  lw r30 r31 4 
  mov r2 r1 
  addi r0 r1 0 
  sll r1 r1 2 
  lwo r2 r1 r1 
  addi r0 r3 -1 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8446 
  addi r0 r1 1 
  lw r30 r3 0 
  add r3 r1 r1 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)read_or_network.2887 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8446: 
  addi r0 r1 1 
  lw r30 r3 0 
  add r3 r1 r1 
  j min_caml_create_array 
(test/sfiles/minrt_new.s)read_and_network.2889: 
  addi r0 r2 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)read_net_item.2885 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r2 
  addi r0 r3 -1 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8447 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -4 
  lw r30 r3 0 
  sll r3 r4 2 
  swo r1 r2 r4 
  addi r0 r1 1 
  add r3 r1 r1 
  j (test/sfiles/minrt_new.s)read_and_network.2889 
(test/sfiles/minrt_new.s)beq_tail_else.8447: 
  jr r31 
(test/sfiles/minrt_new.s)read_parameter.2891: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)read_screen_settings.2872 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)read_light.2874 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)read_all_object.2883 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)read_and_network.2889 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  addi r0 r3 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)read_or_network.2887 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  jr r31 
(test/sfiles/minrt_new.s)solver_rect_surface.2893: 
  sll r3 r6 2 
  lwoc1 r2 r6 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8450 
  addi r0 r6 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8451 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8450: 
  addi r0 r6 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8451: 
  addi r0 r7 0 
  sub r6 r7 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8452 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8452: 
  swc1 f2 r30 0 
  sw r5 r30 4 
  swc1 f1 r30 8 
  sw r4 r30 12 
  swc1 f0 r30 16 
  sw r2 r30 20 
  sw r3 r30 24 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_abc.2815 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 28 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -40 
  lw r30 r31 36 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r2 24 
  sll r2 r3 2 
  lw r30 r4 20 
  lwoc1 r4 r3 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8453 
  addi r0 r3 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8454 
(test/sfiles/minrt_new.s)bfle_nontail_else.8453: 
  addi r0 r3 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8454: 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)xor.2742 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r2 24 
  sll r2 r3 2 
  lw r30 r4 32 
  lwoc1 r4 r3 f0 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)fneg_cond.2747 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 16 
  sub.s f0 f1 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  lwoc1 r2 r1 f1 
  div.s f0 f1 f0 
  lw r30 r1 12 
  sll r1 r3 2 
  lw r30 r4 32 
  lwoc1 r4 r3 f1 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  mul.s f0 f2 f2 
  lwc1 r30 f3 8 
  add.s f2 f3 f2 
  abs.s f2 f2 
  sub.s f1 f2 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8455 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8456 
(test/sfiles/minrt_new.s)bfle_nontail_else.8455: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8456: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8457 
  lw r30 r1 4 
  sll r1 r3 2 
  lwoc1 r4 r3 f1 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  mul.s f0 f2 f2 
  lwc1 r30 f3 0 
  add.s f2 f3 f2 
  abs.s f2 f2 
  sub.s f1 f2 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8458 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8459 
(test/sfiles/minrt_new.s)bfle_nontail_else.8458: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8459: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8460 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8460: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8457: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_rect.2902: 
  addi r0 r3 0 
  addi r0 r4 1 
  addi r0 r5 2 
  swc1 f0 r30 0 
  swc1 f2 r30 4 
  swc1 f1 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)solver_rect_surface.2893 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8461 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8461: 
  addi r0 r3 1 
  addi r0 r4 2 
  addi r0 r5 0 
  lwc1 r30 f0 8 
  lwc1 r30 f1 4 
  lwc1 r30 f2 0 
  lw r30 r1 16 
  lw r30 r2 12 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)solver_rect_surface.2893 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8462 
  addi r0 r1 2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8462: 
  addi r0 r3 2 
  addi r0 r4 0 
  addi r0 r5 1 
  lwc1 r30 f0 4 
  lwc1 r30 f1 0 
  lwc1 r30 f2 8 
  lw r30 r1 16 
  lw r30 r2 12 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)solver_rect_surface.2893 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8463 
  addi r0 r1 3 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8463: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_surface.2908: 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_abc.2815 
  addi r30 r30 -20 
  lw r30 r31 16 
  mov r2 r1 
  lw r30 r1 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -24 
  lw r30 r31 20 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8464 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8465 
(test/sfiles/minrt_new.s)bfle_nontail_else.8464: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8465: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8466 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 0 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  lwc1 r30 f3 0 
  lw r30 r3 16 
  sw r1 r30 20 
  sw r2 r30 24 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt_new.s)veciprod2.2777 
  addi r30 r30 -36 
  lw r30 r31 32 
  neg.s f0 f0 
  lwc1 r30 f1 28 
  div.s f0 f1 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8466: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)quadratic.2914: 
  mul.s f0 f0 f3 
  swc1 f0 r30 0 
  swc1 f2 r30 4 
  sw r1 r30 8 
  swc1 f1 r30 12 
  swc1 f3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lwc1 r30 f1 12 
  mul.s f1 f1 f2 
  lw r30 r1 8 
  swc1 f0 r30 20 
  swc1 f2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lwc1 r30 f1 20 
  add.s f1 f0 f0 
  lwc1 r30 f1 4 
  mul.s f1 f1 f2 
  lw r30 r1 8 
  swc1 f0 r30 28 
  swc1 f2 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  mul.s f1 f0 f0 
  lwc1 r30 f1 28 
  add.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_isrot.2807 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8467 
  lwc1 r30 f0 4 
  lwc1 r30 f1 12 
  mul.s f1 f0 f2 
  lw r30 r1 8 
  swc1 f2 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)o_param_r1.2833 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  mul.s f1 f0 f0 
  lwc1 r30 f1 36 
  add.s f1 f0 f0 
  lwc1 r30 f1 0 
  lwc1 r30 f2 4 
  mul.s f2 f1 f2 
  lw r30 r1 8 
  swc1 f0 r30 44 
  swc1 f2 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)o_param_r2.2835 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f1 48 
  mul.s f1 f0 f0 
  lwc1 r30 f1 44 
  add.s f1 f0 f0 
  lwc1 r30 f1 12 
  lwc1 r30 f2 0 
  mul.s f2 f1 f1 
  lw r30 r1 8 
  swc1 f0 r30 52 
  swc1 f1 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  jal (test/sfiles/minrt_new.s)o_param_r3.2837 
  addi r30 r30 -64 
  lw r30 r31 60 
  lwc1 r30 f1 56 
  mul.s f1 f0 f0 
  lwc1 r30 f1 52 
  add.s f1 f0 f0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8467: 
  lwc1 r30 f0 36 
  jr r31 
(test/sfiles/minrt_new.s)bilinear.2919: 
  mul.s f0 f3 f6 
  swc1 f3 r30 0 
  swc1 f0 r30 4 
  swc1 f5 r30 8 
  swc1 f2 r30 12 
  sw r1 r30 16 
  swc1 f4 r30 20 
  swc1 f1 r30 24 
  swc1 f6 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  mul.s f1 f0 f0 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  mul.s f2 f1 f3 
  lw r30 r1 16 
  swc1 f0 r30 32 
  swc1 f3 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  mul.s f1 f0 f0 
  lwc1 r30 f1 32 
  add.s f1 f0 f0 
  lwc1 r30 f1 8 
  lwc1 r30 f2 12 
  mul.s f2 f1 f3 
  lw r30 r1 16 
  swc1 f0 r30 40 
  swc1 f3 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  mul.s f1 f0 f0 
  lwc1 r30 f1 40 
  add.s f1 f0 f0 
  lw r30 r1 16 
  swc1 f0 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)o_isrot.2807 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8468 
  lwc1 r30 f0 20 
  lwc1 r30 f1 12 
  mul.s f1 f0 f2 
  lwc1 r30 f3 8 
  lwc1 r30 f4 24 
  mul.s f4 f3 f5 
  add.s f2 f5 f2 
  lw r30 r1 16 
  swc1 f2 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt_new.s)o_param_r1.2833 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  mul.s f2 f1 f1 
  lwc1 r30 f3 0 
  lwc1 r30 f4 12 
  mul.s f4 f3 f4 
  add.s f1 f4 f1 
  lw r30 r1 16 
  swc1 f0 r30 56 
  swc1 f1 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt_new.s)o_param_r2.2835 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 60 
  mul.s f1 f0 f0 
  lwc1 r30 f1 56 
  add.s f1 f0 f0 
  lwc1 r30 f1 20 
  lwc1 r30 f2 4 
  mul.s f2 f1 f1 
  lwc1 r30 f2 0 
  lwc1 r30 f3 24 
  mul.s f3 f2 f2 
  add.s f1 f2 f1 
  lw r30 r1 16 
  swc1 f0 r30 64 
  swc1 f1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal (test/sfiles/minrt_new.s)o_param_r3.2837 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 68 
  mul.s f1 f0 f0 
  lwc1 r30 f1 64 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 48 
  add.s f1 f0 f0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8468: 
  lwc1 r30 f0 48 
  jr r31 
(test/sfiles/minrt_new.s)solver_second.2927: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f3 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r2 r3 f4 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r2 r3 f5 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f5 f2 
  mov.s f4 f1 
  mov.s f3 f0 
  jal (test/sfiles/minrt_new.s)quadratic.2914 
  addi r30 r30 -24 
  lw r30 r31 20 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8469 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8470 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8469: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8470: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8471 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8471: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 16 
  lwoc1 r2 r1 f1 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f3 
  lwc1 r30 f4 8 
  lwc1 r30 f5 4 
  lwc1 r30 f6 0 
  lw r30 r1 12 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  mov.s f4 f3 
  mov.s f5 f4 
  mov.s f6 f5 
  jal (test/sfiles/minrt_new.s)bilinear.2919 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  lwc1 r30 f3 0 
  lw r30 r1 12 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt_new.s)quadratic.2914 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 12 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r2 3 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8472 
  lwc1 r30 f0 28 
  j (test/sfiles/minrt_new.s)beq_cont.8473 
(test/sfiles/minrt_new.s)beq_else.8472: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
(test/sfiles/minrt_new.s)beq_cont.8473: 
  lwc1 r30 f1 24 
  mul.s f1 f1 f2 
  lwc1 r30 f3 20 
  mul.s f3 f0 f0 
  sub.s f2 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8474 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8475 
(test/sfiles/minrt_new.s)bfle_nontail_else.8474: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8475: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8476 
  sw r31 r30 32 
  addi r30 r30 36 
  jal min_caml_sqrt 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r1 12 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8477 
  lwc1 r30 f0 32 
  j (test/sfiles/minrt_new.s)beq_cont.8478 
(test/sfiles/minrt_new.s)beq_else.8477: 
  lwc1 r30 f0 32 
  neg.s f0 f0 
(test/sfiles/minrt_new.s)beq_cont.8478: 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  lwc1 r30 f1 24 
  sub.s f0 f1 f0 
  lwc1 r30 f1 20 
  div.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8476: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver.2933: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r1 2 
  lwo r4 r1 r1 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 8 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)o_param_y.2819 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 8 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 24 
  swc1 f1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8479 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8480 
  lwc1 r30 f0 16 
  lwc1 r30 f1 24 
  lwc1 r30 f2 32 
  lw r30 r1 4 
  lw r30 r2 0 
  j (test/sfiles/minrt_new.s)solver_second.2927 
(test/sfiles/minrt_new.s)beq_tail_else.8480: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 24 
  lwc1 r30 f2 32 
  lw r30 r1 4 
  lw r30 r2 0 
  j (test/sfiles/minrt_new.s)solver_surface.2908 
(test/sfiles/minrt_new.s)beq_tail_else.8479: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 24 
  lwc1 r30 f2 32 
  lw r30 r1 4 
  lw r30 r2 0 
  j (test/sfiles/minrt_new.s)solver_rect.2902 
(test/sfiles/minrt_new.s)solver_rect_fast.2937: 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f3 
  sub.s f3 f0 f3 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f4 
  mul.s f3 f4 f3 
  swc1 f0 r30 0 
  sw r3 r30 4 
  swc1 f2 r30 8 
  sw r1 r30 12 
  swc1 f1 r30 16 
  swc1 f3 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 20 
  mul.s f2 f1 f1 
  lwc1 r30 f3 16 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8481 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8482 
(test/sfiles/minrt_new.s)bfle_nontail_else.8481: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8482: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8483 
  lw r30 r1 12 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 20 
  mul.s f2 f1 f1 
  lwc1 r30 f3 8 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8485 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8486 
(test/sfiles/minrt_new.s)bfle_nontail_else.8485: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8486: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8487 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8489 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8490 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8489: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8490: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8491 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)beq_cont.8492 
(test/sfiles/minrt_new.s)beq_else.8491: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)beq_cont.8492: 
  j (test/sfiles/minrt_new.s)beq_cont.8488 
(test/sfiles/minrt_new.s)beq_else.8487: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8488: 
  j (test/sfiles/minrt_new.s)beq_cont.8484 
(test/sfiles/minrt_new.s)beq_else.8483: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8484: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8493 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8493: 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lwc1 r30 f1 16 
  sub.s f0 f1 f0 
  addi r0 r1 3 
  sll r1 r1 2 
  lwoc1 r3 r1 f2 
  mul.s f0 f2 f0 
  lw r30 r1 12 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 28 
  mul.s f2 f1 f1 
  lwc1 r30 f3 0 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8494 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8495 
(test/sfiles/minrt_new.s)bfle_nontail_else.8494: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8495: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8496 
  lw r30 r1 12 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 28 
  mul.s f2 f1 f1 
  lwc1 r30 f3 8 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8498 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8499 
(test/sfiles/minrt_new.s)bfle_nontail_else.8498: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8499: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8500 
  addi r0 r1 3 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8502 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8503 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8502: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8503: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8504 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)beq_cont.8505 
(test/sfiles/minrt_new.s)beq_else.8504: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)beq_cont.8505: 
  j (test/sfiles/minrt_new.s)beq_cont.8501 
(test/sfiles/minrt_new.s)beq_else.8500: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8501: 
  j (test/sfiles/minrt_new.s)beq_cont.8497 
(test/sfiles/minrt_new.s)beq_else.8496: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8497: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8506 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -32 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r0 r1 2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8506: 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r3 4 
  lwoc1 r3 r1 f0 
  lwc1 r30 f1 8 
  sub.s f0 f1 f0 
  addi r0 r1 5 
  sll r1 r1 2 
  lwoc1 r3 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 12 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 32 
  mul.s f2 f1 f1 
  lwc1 r30 f3 0 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8507 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8508 
(test/sfiles/minrt_new.s)bfle_nontail_else.8507: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8508: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8509 
  lw r30 r1 12 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 24 
  lwoc1 r2 r1 f1 
  lwc1 r30 f2 32 
  mul.s f2 f1 f1 
  lwc1 r30 f3 16 
  add.s f1 f3 f1 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8511 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8512 
(test/sfiles/minrt_new.s)bfle_nontail_else.8511: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8512: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8513 
  addi r0 r1 5 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8515 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8516 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8515: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8516: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8517 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)beq_cont.8518 
(test/sfiles/minrt_new.s)beq_else.8517: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)beq_cont.8518: 
  j (test/sfiles/minrt_new.s)beq_cont.8514 
(test/sfiles/minrt_new.s)beq_else.8513: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8514: 
  j (test/sfiles/minrt_new.s)beq_cont.8510 
(test/sfiles/minrt_new.s)beq_else.8509: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8510: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8519 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  swoc1 f2 r1 r2 
  addi r0 r1 3 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8519: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_surface_fast.2944: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f3 
  addi r0 r1 0 
  sll r1 r1 2 
  lwoc1 r2 r1 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8520 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8521 
(test/sfiles/minrt_new.s)bfle_nontail_else.8520: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8521: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8522 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  mul.s f3 f0 f0 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  mul.s f3 f1 f1 
  add.s f0 f1 f0 
  addi r0 r4 3 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  sll r3 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8522: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_second_fast.2950: 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8523 
  addi r0 r3 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8524 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8523: 
  addi r0 r3 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8524: 
  addi r0 r4 0 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8525 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8525: 
  addi r0 r3 1 
  sll r3 r3 2 
  lwoc1 r2 r3 f4 
  mul.s f4 f0 f4 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r2 r3 f5 
  mul.s f5 f1 f5 
  add.s f4 f5 f4 
  addi r0 r3 3 
  sll r3 r3 2 
  lwoc1 r2 r3 f5 
  mul.s f5 f2 f5 
  add.s f4 f5 f4 
  sw r2 r30 0 
  swc1 f3 r30 4 
  swc1 f4 r30 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)quadratic.2914 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 3 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8526 
  lwc1 r30 f0 16 
  j (test/sfiles/minrt_new.s)beq_cont.8527 
(test/sfiles/minrt_new.s)beq_else.8526: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 16 
  sub.s f1 f0 f0 
(test/sfiles/minrt_new.s)beq_cont.8527: 
  lwc1 r30 f1 8 
  mul.s f1 f1 f2 
  lwc1 r30 f3 4 
  mul.s f3 f0 f0 
  sub.s f2 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8528 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8529 
(test/sfiles/minrt_new.s)bfle_nontail_else.8528: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8529: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8530 
  lw r30 r1 12 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8531 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  lwc1 r30 f0 20 
  sw r1 r30 24 
  sw r2 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal min_caml_sqrt 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 8 
  add.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 24 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8532 
(test/sfiles/minrt_new.s)beq_else.8531: 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -32 
  addi r0 r2 0 
  lwc1 r30 f0 20 
  sw r1 r30 32 
  sw r2 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal min_caml_sqrt 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 36 
  sll r1 r1 2 
  lw r30 r2 32 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8532: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8530: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_fast.2956: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r5 2 
  lwo r4 r5 r4 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r3 r5 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r4 r30 8 
  sw r3 r30 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  sub.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 12 
  lwoc1 r2 r1 f1 
  lw r30 r1 8 
  swc1 f0 r30 20 
  swc1 f1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_param_y.2819 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  sub.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 12 
  lwoc1 r2 r1 f1 
  lw r30 r1 8 
  swc1 f0 r30 28 
  swc1 f1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)d_const.2862 
  addi r30 r30 -44 
  lw r30 r31 40 
  lw r30 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 8 
  sw r1 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -48 
  lw r30 r31 44 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8533 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8534 
  lwc1 r30 f0 20 
  lwc1 r30 f1 28 
  lwc1 r30 f2 36 
  lw r30 r1 8 
  lw r30 r2 40 
  j (test/sfiles/minrt_new.s)solver_second_fast.2950 
(test/sfiles/minrt_new.s)beq_tail_else.8534: 
  lwc1 r30 f0 20 
  lwc1 r30 f1 28 
  lwc1 r30 f2 36 
  lw r30 r1 8 
  lw r30 r2 40 
  j (test/sfiles/minrt_new.s)solver_surface_fast.2944 
(test/sfiles/minrt_new.s)beq_tail_else.8533: 
  lw r30 r1 4 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -48 
  lw r30 r31 44 
  mov r2 r1 
  lwc1 r30 f0 20 
  lwc1 r30 f1 28 
  lwc1 r30 f2 36 
  lw r30 r1 8 
  lw r30 r3 40 
  j (test/sfiles/minrt_new.s)solver_rect_fast.2937 
(test/sfiles/minrt_new.s)solver_surface_fast2.2960: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lwoc1 r2 r1 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8535 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8536 
(test/sfiles/minrt_new.s)bfle_nontail_else.8535: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8536: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8537 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r2 r5 f0 
  addi r0 r2 3 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  mul.s f0 f1 f0 
  sll r4 r2 2 
  swoc1 f0 r1 r2 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8537: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_second_fast2.2967: 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8538 
  addi r0 r4 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8539 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8538: 
  addi r0 r4 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8539: 
  addi r0 r5 0 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8540 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8540: 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f4 
  mul.s f4 f0 f0 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f4 
  mul.s f4 f1 f1 
  add.s f0 f1 f0 
  addi r0 r4 3 
  sll r4 r4 2 
  lwoc1 r2 r4 f1 
  mul.s f1 f2 f1 
  add.s f0 f1 f0 
  addi r0 r4 3 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f0 f2 
  mul.s f3 f1 f1 
  sub.s f2 f1 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8541 
  addi r0 r3 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8542 
(test/sfiles/minrt_new.s)bfle_nontail_else.8541: 
  addi r0 r3 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8542: 
  addi r0 r4 0 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8543 
  sw r2 r30 0 
  swc1 f0 r30 4 
  swc1 f1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8544 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  lwc1 r30 f0 8 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal min_caml_sqrt 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 4 
  add.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8545 
(test/sfiles/minrt_new.s)beq_else.8544: 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 0 
  lwc1 r30 f0 8 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal min_caml_sqrt 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
  addi r0 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  mul.s f0 f1 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8545: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8543: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solver_fast2.2974: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r4 2 
  lwo r3 r4 r3 
  sw r3 r30 0 
  sw r1 r30 4 
  sw r2 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_ctbl.2839 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  lw r30 r2 8 
  sw r1 r30 12 
  swc1 f2 r30 16 
  swc1 f1 r30 20 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)d_const.2862 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r2 4 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 0 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8546 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8547 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 16 
  lw r30 r1 0 
  lw r30 r2 28 
  lw r30 r3 12 
  j (test/sfiles/minrt_new.s)solver_second_fast2.2967 
(test/sfiles/minrt_new.s)beq_tail_else.8547: 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 16 
  lw r30 r1 0 
  lw r30 r2 28 
  lw r30 r3 12 
  j (test/sfiles/minrt_new.s)solver_surface_fast2.2960 
(test/sfiles/minrt_new.s)beq_tail_else.8546: 
  lw r30 r1 8 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -36 
  lw r30 r31 32 
  mov r2 r1 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 16 
  lw r30 r1 0 
  lw r30 r3 28 
  j (test/sfiles/minrt_new.s)solver_rect_fast.2937 
(test/sfiles/minrt_new.s)setup_rect_table.2977: 
  addi r0 r3 6 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8548 
  addi r0 r2 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8549 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8548: 
  addi r0 r2 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8549: 
  addi r0 r4 0 
  sw r1 r30 8 
  sub r2 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8550 
  addi r0 r2 1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  j (test/sfiles/minrt_new.s)beq_cont.8551 
(test/sfiles/minrt_new.s)beq_else.8550: 
  addi r0 r2 0 
  lw r30 r4 0 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8552 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8553 
(test/sfiles/minrt_new.s)bfle_nontail_else.8552: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8553: 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)xor.2742 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 0 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)fneg_cond.2747 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r3 0 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f1 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8551: 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8554 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8555 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8554: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8555: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8556 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r1 r1 2 
  lw r30 r3 8 
  swoc1 f0 r3 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8557 
(test/sfiles/minrt_new.s)beq_else.8556: 
  addi r0 r1 2 
  lw r30 r3 0 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -28 
  lw r30 r31 24 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8558 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8559 
(test/sfiles/minrt_new.s)bfle_nontail_else.8558: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8559: 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)xor.2742 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 0 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)fneg_cond.2747 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 20 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r3 1 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f1 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8557: 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8560 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8561 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8560: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8561: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8562 
  addi r0 r1 5 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8563 
(test/sfiles/minrt_new.s)beq_else.8562: 
  addi r0 r1 4 
  lw r30 r3 0 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -36 
  lw r30 r31 32 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r2 2 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8564 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8565 
(test/sfiles/minrt_new.s)bfle_nontail_else.8564: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8565: 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)xor.2742 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 0 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)fneg_cond.2747 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 5 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r0 r3 2 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f1 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8563: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)setup_surface_table.2980: 
  addi r0 r3 4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  lw r30 r2 0 
  sw r1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  mul.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  mul.s f1 f0 f0 
  lwc1 r30 f1 16 
  add.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 24 
  swc1 f1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  add.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8566 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8567 
(test/sfiles/minrt_new.s)bfle_nontail_else.8566: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8567: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8568 
  addi r0 r1 0 
  lui r24 49024 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f1 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f1 r2 r1 
  addi r0 r1 1 
  lw r30 r3 0 
  sw r1 r30 32 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  div.s f0 f1 f0 
  neg.s f0 f0 
  lw r30 r1 32 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  lw r30 r3 0 
  sw r1 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 36 
  div.s f0 f1 f0 
  neg.s f0 f0 
  lw r30 r1 40 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  lw r30 r3 0 
  sw r1 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 36 
  div.s f0 f1 f0 
  neg.s f0 f0 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8569 
(test/sfiles/minrt_new.s)beq_else.8568: 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8569: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)setup_second_table.2983: 
  addi r0 r3 5 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  lw r30 r2 0 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)quadratic.2914 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 12 
  swc1 f1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  neg.s f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 20 
  swc1 f1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  neg.s f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 28 
  swc1 f1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  mul.s f1 f0 f0 
  neg.s f0 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 8 
  lwc1 r30 f1 12 
  swoc1 f1 r2 r1 
  lw r30 r1 0 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_isrot.2807 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8570 
  addi r0 r1 1 
  addi r0 r2 2 
  sll r2 r2 2 
  lw r30 r3 4 
  lwoc1 r3 r2 f0 
  lw r30 r2 0 
  sw r1 r30 40 
  swc1 f0 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_r2.2835 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  mul.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 48 
  swc1 f1 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt_new.s)o_param_r3.2837 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  lwc1 r30 f1 48 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  lw r30 r1 40 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  addi r0 r3 2 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 0 
  sw r1 r30 56 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_r1.2833 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 60 
  mul.s f1 f0 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 64 
  swc1 f1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal (test/sfiles/minrt_new.s)o_param_r3.2837 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 68 
  mul.s f1 f0 f0 
  lwc1 r30 f1 64 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 28 
  sub.s f1 f0 f0 
  lw r30 r1 56 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  addi r0 r3 1 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 0 
  sw r1 r30 72 
  swc1 f0 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_r1.2833 
  addi r30 r30 -84 
  lw r30 r31 80 
  lwc1 r30 f1 76 
  mul.s f1 f0 f0 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 4 
  lwoc1 r2 r1 f1 
  lw r30 r1 0 
  swc1 f0 r30 80 
  swc1 f1 r30 84 
  sw r31 r30 88 
  addi r30 r30 92 
  jal (test/sfiles/minrt_new.s)o_param_r2.2835 
  addi r30 r30 -92 
  lw r30 r31 88 
  lwc1 r30 f1 84 
  mul.s f1 f0 f0 
  lwc1 r30 f1 80 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 36 
  sub.s f1 f0 f0 
  lw r30 r1 72 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8571 
(test/sfiles/minrt_new.s)beq_else.8570: 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 8 
  lwc1 r30 f0 20 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwc1 r30 f0 28 
  swoc1 f0 r2 r1 
  addi r0 r1 3 
  sll r1 r1 2 
  lwc1 r30 f0 36 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8571: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 12 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  sll r25 r25 1 
  beq r25 r0 (test/sfiles/minrt_new.s)bfeq_nontail_else.8572 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)bfeq_nontail_cont.8573 
(test/sfiles/minrt_new.s)bfeq_nontail_else.8572: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)bfeq_nontail_cont.8573: 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8574 
  j (test/sfiles/minrt_new.s)beq_cont.8575 
(test/sfiles/minrt_new.s)beq_else.8574: 
  addi r0 r1 4 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  div.s f0 f1 f0 
  sll r1 r1 2 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8575: 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)iter_setup_dirvec_constants.2986: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8576 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8576: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r2 r4 2 
  lwo r3 r4 r3 
  sw r2 r30 0 
  sw r3 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)d_const.2862 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 4 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8578 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8580 
  lw r30 r1 16 
  lw r30 r2 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)setup_second_table.2983 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  swo r1 r4 r3 
  j (test/sfiles/minrt_new.s)beq_cont.8581 
(test/sfiles/minrt_new.s)beq_else.8580: 
  lw r30 r1 16 
  lw r30 r2 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)setup_surface_table.2980 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  swo r1 r4 r3 
(test/sfiles/minrt_new.s)beq_cont.8581: 
  j (test/sfiles/minrt_new.s)beq_cont.8579 
(test/sfiles/minrt_new.s)beq_else.8578: 
  lw r30 r1 16 
  lw r30 r2 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)setup_rect_table.2977 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  swo r1 r4 r3 
(test/sfiles/minrt_new.s)beq_cont.8579: 
  addi r0 r1 1 
  sub r2 r1 r2 
  lw r30 r1 8 
  j (test/sfiles/minrt_new.s)iter_setup_dirvec_constants.2986 
(test/sfiles/minrt_new.s)setup_dirvec_constants.2989: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 1 
  sub r2 r3 r2 
  j (test/sfiles/minrt_new.s)iter_setup_dirvec_constants.2986 
(test/sfiles/minrt_new.s)setup_startp_constants.2991: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8582 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8582: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r2 r4 2 
  lwo r3 r4 r3 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_ctbl.2839 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 8 
  sw r1 r30 16 
  sw r2 r30 20 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  sub.s f1 f0 f0 
  lw r30 r1 20 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  addi r0 r3 1 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 8 
  sw r1 r30 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_y.2819 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  sub.s f1 f0 f0 
  lw r30 r1 28 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  addi r0 r3 2 
  sll r3 r3 2 
  lw r30 r4 4 
  lwoc1 r4 r3 f0 
  lw r30 r3 8 
  sw r1 r30 36 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  sub.s f1 f0 f0 
  lw r30 r1 36 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r0 r1 2 
  lw r30 r3 16 
  sub r3 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8584 
  addi r0 r1 2 
  sub r3 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_nontail_else.8586 
  addi r0 r1 0 
  sll r1 r1 2 
  lwoc1 r2 r1 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lwoc1 r2 r1 f1 
  addi r0 r1 2 
  sll r1 r1 2 
  lwoc1 r2 r1 f2 
  lw r30 r1 8 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)quadratic.2914 
  addi r30 r30 -48 
  lw r30 r31 44 
  addi r0 r1 3 
  addi r0 r2 3 
  lw r30 r3 16 
  sub r3 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8588 
  j (test/sfiles/minrt_new.s)beq_cont.8589 
(test/sfiles/minrt_new.s)beq_else.8588: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f0 
(test/sfiles/minrt_new.s)beq_cont.8589: 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)ble_nontail_cont.8587 
(test/sfiles/minrt_new.s)ble_nontail_else.8586: 
(test/sfiles/minrt_new.s)ble_nontail_cont.8587: 
  j (test/sfiles/minrt_new.s)beq_cont.8585 
(test/sfiles/minrt_new.s)beq_else.8584: 
  addi r0 r1 3 
  lw r30 r3 8 
  sw r1 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_abc.2815 
  addi r30 r30 -52 
  lw r30 r31 48 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 12 
  lwoc1 r3 r2 f0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f1 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt_new.s)veciprod2.2777 
  addi r30 r30 -52 
  lw r30 r31 48 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
(test/sfiles/minrt_new.s)beq_cont.8585: 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r2 
  lw r30 r1 4 
  j (test/sfiles/minrt_new.s)setup_startp_constants.2991 
(test/sfiles/minrt_new.s)setup_startp.2994: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r28 r2 
  mov r2 r1 
  mov r1 r28 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r2 
  lw r30 r1 0 
  j (test/sfiles/minrt_new.s)setup_startp_constants.2991 
(test/sfiles/minrt_new.s)is_rect_outside.2996: 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sw r1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8590 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8591 
(test/sfiles/minrt_new.s)bfle_nontail_else.8590: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8591: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8592 
  lw r30 r1 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 4 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8594 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8595 
(test/sfiles/minrt_new.s)bfle_nontail_else.8594: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8595: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8596 
  lw r30 r1 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 0 
  abs.s f1 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8598 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8599 
(test/sfiles/minrt_new.s)bfle_nontail_else.8598: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8599: 
  j (test/sfiles/minrt_new.s)beq_cont.8597 
(test/sfiles/minrt_new.s)beq_else.8596: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8597: 
  j (test/sfiles/minrt_new.s)beq_cont.8593 
(test/sfiles/minrt_new.s)beq_else.8592: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8593: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8600 
  lw r30 r1 8 
  j (test/sfiles/minrt_new.s)o_isinvert.2805 
(test/sfiles/minrt_new.s)beq_tail_else.8600: 
  lw r30 r1 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8601 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8601: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)is_plane_outside.3001: 
  sw r1 r30 0 
  swc1 f2 r30 4 
  swc1 f1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_abc.2815 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f0 12 
  lwc1 r30 f1 8 
  lwc1 r30 f2 4 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)veciprod2.2777 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 0 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -24 
  lw r30 r31 20 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 16 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8602 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8603 
(test/sfiles/minrt_new.s)bfle_nontail_else.8602: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8603: 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)xor.2742 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8604 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8604: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)is_second_outside.3006: 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt_new.s)quadratic.2914 
  addi r30 r30 -8 
  lw r30 r31 4 
  lw r30 r1 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 3 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8605 
  lwc1 r30 f0 4 
  j (test/sfiles/minrt_new.s)beq_cont.8606 
(test/sfiles/minrt_new.s)beq_else.8605: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
(test/sfiles/minrt_new.s)beq_cont.8606: 
  lw r30 r1 0 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -16 
  lw r30 r31 12 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 8 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8607 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8608 
(test/sfiles/minrt_new.s)bfle_nontail_else.8607: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8608: 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)xor.2742 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8609 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8609: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)is_outside.3011: 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sw r1 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)o_param_y.2819 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 0 
  sub.s f1 f0 f0 
  lw r30 r1 8 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8610 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8611 
  lwc1 r30 f0 16 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  lw r30 r1 8 
  j (test/sfiles/minrt_new.s)is_second_outside.3006 
(test/sfiles/minrt_new.s)beq_tail_else.8611: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  lw r30 r1 8 
  j (test/sfiles/minrt_new.s)is_plane_outside.3001 
(test/sfiles/minrt_new.s)beq_tail_else.8610: 
  lwc1 r30 f0 16 
  lwc1 r30 f1 20 
  lwc1 r30 f2 24 
  lw r30 r1 8 
  j (test/sfiles/minrt_new.s)is_rect_outside.2996 
(test/sfiles/minrt_new.s)check_all_inside.3016: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 -1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8612 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r3 r3 2 
  lwo r4 r3 r3 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  swc1 f0 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)is_outside.3011 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8613 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8613: 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  lwc1 r30 f0 8 
  lwc1 r30 f1 4 
  lwc1 r30 f2 0 
  lw r30 r2 12 
  j (test/sfiles/minrt_new.s)check_all_inside.3016 
(test/sfiles/minrt_new.s)beq_tail_else.8612: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)shadow_check_and_group.3022: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 -1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8614 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r4 
  mov r1 r3 
  mov r3 r5 
  jal (test/sfiles/minrt_new.s)solver_fast.2956 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8615 
  lui r24 48716 
  ori r24 r24 52429 
  mtc1 r24 f1 
  sub.s f1 f0 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8617 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8618 
(test/sfiles/minrt_new.s)bfle_nontail_else.8617: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8618: 
  j (test/sfiles/minrt_new.s)beq_cont.8616 
(test/sfiles/minrt_new.s)beq_else.8615: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8616: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8619 
  lui r24 15395 
  ori r24 r24 55050 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f1 f0 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  add.s f1 f2 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  mul.s f2 f0 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f2 f3 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f3 f0 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f0 f3 f0 
  addi r0 r1 0 
  lw r30 r2 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov.s f2 f31 
  mov.s f0 f2 
  mov.s f1 f0 
  mov.s f31 f1 
  jal (test/sfiles/minrt_new.s)check_all_inside.3016 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8620 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8620: 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  lw r30 r2 0 
  j (test/sfiles/minrt_new.s)shadow_check_and_group.3022 
(test/sfiles/minrt_new.s)beq_tail_else.8619: 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  lw r30 r2 8 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8621 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  lw r30 r2 0 
  j (test/sfiles/minrt_new.s)shadow_check_and_group.3022 
(test/sfiles/minrt_new.s)beq_tail_else.8621: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8614: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)shadow_check_one_or_group.3025: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 -1 
  sub r3 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8622 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r3 r3 2 
  lwo r4 r3 r3 
  addi r0 r4 0 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r2 r3 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)shadow_check_and_group.3022 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8623 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8623: 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  lw r30 r2 0 
  j (test/sfiles/minrt_new.s)shadow_check_one_or_group.3025 
(test/sfiles/minrt_new.s)beq_tail_else.8622: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)shadow_check_one_or_matrix.3028: 
  sll r1 r3 2 
  lwo r2 r3 r3 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8624 
  addi r0 r5 99 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8625 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r3 r6 
  mov r2 r5 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)solver_fast.2956 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8627 
  lui r24 48588 
  ori r24 r24 52429 
  mtc1 r24 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f0 f1 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8629 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8630 
(test/sfiles/minrt_new.s)bfle_nontail_else.8629: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8630: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8631 
  addi r0 r1 1 
  lw r30 r2 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)shadow_check_one_or_group.3025 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8633 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)beq_cont.8634 
(test/sfiles/minrt_new.s)beq_else.8633: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8634: 
  j (test/sfiles/minrt_new.s)beq_cont.8632 
(test/sfiles/minrt_new.s)beq_else.8631: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8632: 
  j (test/sfiles/minrt_new.s)beq_cont.8628 
(test/sfiles/minrt_new.s)beq_else.8627: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)beq_cont.8628: 
  j (test/sfiles/minrt_new.s)beq_cont.8626 
(test/sfiles/minrt_new.s)beq_else.8625: 
  addi r0 r1 1 
(test/sfiles/minrt_new.s)beq_cont.8626: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8635 
  addi r0 r1 1 
  lw r30 r2 0 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)shadow_check_one_or_group.3025 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8636 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8636: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  j (test/sfiles/minrt_new.s)shadow_check_one_or_matrix.3028 
(test/sfiles/minrt_new.s)beq_tail_else.8635: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  j (test/sfiles/minrt_new.s)shadow_check_one_or_matrix.3028 
(test/sfiles/minrt_new.s)beq_tail_else.8624: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solve_each_element.3031: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8637 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r4 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  mov r1 r4 
  mov r3 r5 
  jal (test/sfiles/minrt_new.s)solver.2933 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8638 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8639 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8640 
(test/sfiles/minrt_new.s)bfle_nontail_else.8639: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8640: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8641 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  sub.s f1 f0 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8643 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8644 
(test/sfiles/minrt_new.s)bfle_nontail_else.8643: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8644: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8645 
  lui r24 15395 
  ori r24 r24 55050 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 0 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  add.s f1 f2 f1 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  mul.s f2 f0 f2 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  add.s f2 f3 f2 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f3 
  mul.s f3 f0 f3 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r2 r4 f4 
  add.s f3 f4 f3 
  addi r0 r2 0 
  lw r30 r4 4 
  sw r1 r30 16 
  swc1 f3 r30 20 
  swc1 f2 r30 24 
  swc1 f1 r30 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  mov r2 r4 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt_new.s)check_all_inside.3016 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8647 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  lwc1 r30 f0 32 
  swoc1 f0 r1 r2 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lwc1 r30 f0 28 
  lwc1 r30 f1 24 
  lwc1 r30 f2 20 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 12 
  swo r3 r1 r2 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 16 
  swo r3 r1 r2 
  j (test/sfiles/minrt_new.s)beq_cont.8648 
(test/sfiles/minrt_new.s)beq_else.8647: 
(test/sfiles/minrt_new.s)beq_cont.8648: 
  j (test/sfiles/minrt_new.s)beq_cont.8646 
(test/sfiles/minrt_new.s)beq_else.8645: 
(test/sfiles/minrt_new.s)beq_cont.8646: 
  j (test/sfiles/minrt_new.s)beq_cont.8642 
(test/sfiles/minrt_new.s)beq_else.8641: 
(test/sfiles/minrt_new.s)beq_cont.8642: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)solve_each_element.3031 
(test/sfiles/minrt_new.s)beq_tail_else.8638: 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 12 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8649 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)solve_each_element.3031 
(test/sfiles/minrt_new.s)beq_tail_else.8649: 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8637: 
  jr r31 
(test/sfiles/minrt_new.s)solve_one_or_network.3035: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8652 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r4 r4 2 
  lwo r5 r4 r4 
  addi r0 r5 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt_new.s)solve_each_element.3031 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)solve_one_or_network.3035 
(test/sfiles/minrt_new.s)beq_tail_else.8652: 
  jr r31 
(test/sfiles/minrt_new.s)trace_or_matrix.3039: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r5 
  addi r0 r6 -1 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8654 
  addi r0 r6 99 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8655 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  sw r4 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  mov r1 r5 
  mov r3 r6 
  jal (test/sfiles/minrt_new.s)solver.2933 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8657 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8659 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8660 
(test/sfiles/minrt_new.s)bfle_nontail_else.8659: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8660: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8661 
  addi r0 r1 1 
  lw r30 r2 12 
  lw r30 r3 0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)solve_one_or_network.3035 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt_new.s)beq_cont.8662 
(test/sfiles/minrt_new.s)beq_else.8661: 
(test/sfiles/minrt_new.s)beq_cont.8662: 
  j (test/sfiles/minrt_new.s)beq_cont.8658 
(test/sfiles/minrt_new.s)beq_else.8657: 
(test/sfiles/minrt_new.s)beq_cont.8658: 
  j (test/sfiles/minrt_new.s)beq_cont.8656 
(test/sfiles/minrt_new.s)beq_else.8655: 
  addi r0 r5 1 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt_new.s)solve_one_or_network.3035 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/minrt_new.s)beq_cont.8656: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)trace_or_matrix.3039 
(test/sfiles/minrt_new.s)beq_tail_else.8654: 
  jr r31 
(test/sfiles/minrt_new.s)judge_intersection.3043: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  lui r24 20078 
  ori r24 r24 27432 
  mtc1 r24 f0 
  sll r3 r3 2 
  swoc1 f0 r2 r3 
  addi r0 r2 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  sw r31 r30 0 
  addi r30 r30 4 
  mov r28 r3 
  mov r3 r1 
  mov r1 r2 
  mov r2 r28 
  jal (test/sfiles/minrt_new.s)trace_or_matrix.3039 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  lui r24 48588 
  ori r24 r24 52429 
  mtc1 r24 f1 
  sub.s f0 f1 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8664 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8665 
(test/sfiles/minrt_new.s)bfle_nontail_else.8664: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8665: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8666 
  lui r24 19646 
  ori r24 r24 48160 
  mtc1 r24 f1 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_tail_else.8667 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)bfle_tail_else.8667: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8666: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)solve_each_element_fast.3045: 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sll r2 r3 2 
  lw r30 r4 4 
  lwo r4 r3 r3 
  addi r0 r5 -1 
  sub r3 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8668 
  lw r30 r5 0 
  sw r1 r30 12 
  sw r3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r2 r5 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)solver_fast2.2974 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8669 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8670 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8671 
(test/sfiles/minrt_new.s)bfle_nontail_else.8670: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8671: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8672 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  sub.s f1 f0 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8674 
  addi r0 r2 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8675 
(test/sfiles/minrt_new.s)bfle_nontail_else.8674: 
  addi r0 r2 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8675: 
  addi r0 r3 0 
  sub r2 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8676 
  lui r24 15395 
  ori r24 r24 55050 
  mtc1 r24 f1 
  add.s f0 f1 f0 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 12 
  lwoc1 r3 r2 f1 
  mul.s f1 f0 f1 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r2 r4 f2 
  add.s f1 f2 f1 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r3 r2 f2 
  mul.s f2 f0 f2 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r2 r4 f3 
  add.s f2 f3 f2 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r3 r2 f3 
  mul.s f3 f0 f3 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp_fast 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r3 2 
  sll r3 r3 2 
  lwoc1 r2 r3 f4 
  add.s f3 f4 f3 
  addi r0 r2 0 
  lw r30 r3 4 
  sw r1 r30 20 
  swc1 f3 r30 24 
  swc1 f2 r30 28 
  swc1 f1 r30 32 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  mov r1 r2 
  mov r2 r3 
  mov.s f1 f0 
  mov.s f2 f1 
  mov.s f3 f2 
  jal (test/sfiles/minrt_new.s)check_all_inside.3016 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8678 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  sll r2 r2 2 
  lwc1 r30 f0 36 
  swoc1 f0 r1 r2 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  lwc1 r30 f0 32 
  lwc1 r30 f1 28 
  lwc1 r30 f2 24 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 16 
  swo r3 r1 r2 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  sll r2 r2 2 
  lw r30 r3 20 
  swo r3 r1 r2 
  j (test/sfiles/minrt_new.s)beq_cont.8679 
(test/sfiles/minrt_new.s)beq_else.8678: 
(test/sfiles/minrt_new.s)beq_cont.8679: 
  j (test/sfiles/minrt_new.s)beq_cont.8677 
(test/sfiles/minrt_new.s)beq_else.8676: 
(test/sfiles/minrt_new.s)beq_cont.8677: 
  j (test/sfiles/minrt_new.s)beq_cont.8673 
(test/sfiles/minrt_new.s)beq_else.8672: 
(test/sfiles/minrt_new.s)beq_cont.8673: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)solve_each_element_fast.3045 
(test/sfiles/minrt_new.s)beq_tail_else.8669: 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  lw r30 r2 16 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8680 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)solve_each_element_fast.3045 
(test/sfiles/minrt_new.s)beq_tail_else.8680: 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8668: 
  jr r31 
(test/sfiles/minrt_new.s)solve_one_or_network_fast.3049: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 -1 
  sub r4 r5 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8683 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_and_net 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r4 r4 2 
  lwo r5 r4 r4 
  addi r0 r5 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt_new.s)solve_each_element_fast.3045 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)solve_one_or_network_fast.3049 
(test/sfiles/minrt_new.s)beq_tail_else.8683: 
  jr r31 
(test/sfiles/minrt_new.s)trace_or_matrix_fast.3053: 
  sll r1 r4 2 
  lwo r2 r4 r4 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r5 
  addi r0 r6 -1 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8685 
  addi r0 r6 99 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r5 r6 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8686 
  sw r4 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  mov r1 r5 
  jal (test/sfiles/minrt_new.s)solver_fast2.2974 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8688 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_solver_dist 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8690 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8691 
(test/sfiles/minrt_new.s)bfle_nontail_else.8690: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8691: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8692 
  addi r0 r1 1 
  lw r30 r2 12 
  lw r30 r3 0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)solve_one_or_network_fast.3049 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt_new.s)beq_cont.8693 
(test/sfiles/minrt_new.s)beq_else.8692: 
(test/sfiles/minrt_new.s)beq_cont.8693: 
  j (test/sfiles/minrt_new.s)beq_cont.8689 
(test/sfiles/minrt_new.s)beq_else.8688: 
(test/sfiles/minrt_new.s)beq_cont.8689: 
  j (test/sfiles/minrt_new.s)beq_cont.8687 
(test/sfiles/minrt_new.s)beq_else.8686: 
  addi r0 r5 1 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r4 
  mov r1 r5 
  jal (test/sfiles/minrt_new.s)solve_one_or_network_fast.3049 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/minrt_new.s)beq_cont.8687: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)trace_or_matrix_fast.3053 
(test/sfiles/minrt_new.s)beq_tail_else.8685: 
  jr r31 
(test/sfiles/minrt_new.s)judge_intersection_fast.3057: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  lui r24 20078 
  ori r24 r24 27432 
  mtc1 r24 f0 
  sll r3 r3 2 
  swoc1 f0 r2 r3 
  addi r0 r2 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  sw r31 r30 0 
  addi r30 r30 4 
  mov r28 r3 
  mov r3 r1 
  mov r1 r2 
  mov r2 r28 
  jal (test/sfiles/minrt_new.s)trace_or_matrix_fast.3053 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  lui r24 48588 
  ori r24 r24 52429 
  mtc1 r24 f1 
  sub.s f0 f1 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f1 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8695 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8696 
(test/sfiles/minrt_new.s)bfle_nontail_else.8695: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8696: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8697 
  lui r24 19646 
  ori r24 r24 48160 
  mtc1 r24 f1 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_tail_else.8698 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)bfle_tail_else.8698: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8697: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)get_nvector_rect.3059: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)vecbzero.2761 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  lw r30 r3 4 
  sub r3 r2 r2 
  addi r0 r4 1 
  sub r3 r4 r3 
  sll r3 r3 2 
  lw r30 r4 0 
  lwoc1 r4 r3 f0 
  sw r1 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)sgn.2745 
  addi r30 r30 -20 
  lw r30 r31 16 
  neg.s f0 f0 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)get_nvector_plane.3061: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -16 
  lw r30 r31 12 
  neg.s f0 f0 
  lw r30 r1 8 
  sll r1 r1 2 
  lw r30 r2 4 
  swoc1 f0 r2 r1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  lw r30 r3 0 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -24 
  lw r30 r31 20 
  neg.s f0 f0 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 2 
  lw r30 r3 0 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -32 
  lw r30 r31 28 
  neg.s f0 f0 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)get_nvector_second.3063: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f0 
  sw r1 r30 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  sub.s f1 f0 f0 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  lw r30 r1 0 
  swc1 f0 r30 8 
  swc1 f1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)o_param_y.2819 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  lw r30 r1 0 
  swc1 f0 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -28 
  lw r30 r31 24 
  lwc1 r30 f1 20 
  sub.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_isrot.2807 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8701 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 0 
  lw r30 r3 0 
  sw r1 r30 40 
  sw r2 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_r3.2837 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)o_param_r2.2835 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lwc1 r30 f2 48 
  add.s f2 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f2 
  mul.s f0 f2 f0 
  lwc1 r30 f2 28 
  add.s f2 f0 f0 
  lw r30 r1 44 
  sll r1 r1 2 
  lw r30 r2 40 
  swoc1 f0 r2 r1 
  addi r30 r30 52 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -52 
  addi r0 r2 1 
  lw r30 r3 0 
  sw r1 r30 52 
  sw r2 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_r3.2837 
  addi r30 r30 -64 
  lw r30 r31 60 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt_new.s)o_param_r1.2833 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  lwc1 r30 f1 60 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 32 
  add.s f1 f0 f0 
  lw r30 r1 56 
  sll r1 r1 2 
  lw r30 r2 52 
  swoc1 f0 r2 r1 
  addi r30 r30 64 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -64 
  addi r0 r2 2 
  lw r30 r3 0 
  sw r1 r30 64 
  sw r2 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_param_r2.2835 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  lw r30 r1 0 
  swc1 f0 r30 72 
  sw r31 r30 76 
  addi r30 r30 80 
  jal (test/sfiles/minrt_new.s)o_param_r1.2833 
  addi r30 r30 -80 
  lw r30 r31 76 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  lwc1 r30 f1 72 
  add.s f1 f0 f0 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 36 
  add.s f1 f0 f0 
  lw r30 r1 68 
  sll r1 r1 2 
  lw r30 r2 64 
  swoc1 f0 r2 r1 
  j (test/sfiles/minrt_new.s)beq_cont.8702 
(test/sfiles/minrt_new.s)beq_else.8701: 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  addi r0 r2 0 
  sll r2 r2 2 
  lwc1 r30 f0 28 
  swoc1 f0 r1 r2 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  addi r0 r2 1 
  sll r2 r2 2 
  lwc1 r30 f0 32 
  swoc1 f0 r1 r2 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  addi r0 r2 2 
  sll r2 r2 2 
  lwc1 r30 f0 36 
  swoc1 f0 r1 r2 
(test/sfiles/minrt_new.s)beq_cont.8702: 
  addi r30 r30 76 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -76 
  lw r30 r2 0 
  sw r1 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_isinvert.2805 
  addi r30 r30 -84 
  lw r30 r31 80 
  mov r2 r1 
  lw r30 r1 76 
  j (test/sfiles/minrt_new.s)vecunit_sgn.2771 
(test/sfiles/minrt_new.s)get_nvector.3065: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8703 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8704 
  lw r30 r1 0 
  j (test/sfiles/minrt_new.s)get_nvector_second.3063 
(test/sfiles/minrt_new.s)beq_tail_else.8704: 
  lw r30 r1 0 
  j (test/sfiles/minrt_new.s)get_nvector_plane.3061 
(test/sfiles/minrt_new.s)beq_tail_else.8703: 
  lw r30 r1 4 
  j (test/sfiles/minrt_new.s)get_nvector_rect.3059 
(test/sfiles/minrt_new.s)utexture.3068: 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)o_texturetype.2799 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r3 0 
  lw r30 r4 4 
  sw r1 r30 8 
  sw r2 r30 12 
  sw r3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)o_color_red.2827 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r1 16 
  sll r1 r1 2 
  lw r30 r2 12 
  swoc1 f0 r2 r1 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -20 
  addi r0 r2 1 
  lw r30 r3 4 
  sw r1 r30 20 
  sw r2 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_color_green.2829 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 20 
  swoc1 f0 r2 r1 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 2 
  lw r30 r3 4 
  sw r1 r30 28 
  sw r2 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)o_color_blue.2831 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 32 
  sll r1 r1 2 
  lw r30 r2 28 
  swoc1 f0 r2 r1 
  addi r0 r1 1 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8705 
  addi r0 r1 2 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8706 
  addi r0 r1 3 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8707 
  addi r0 r1 4 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8708 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8708: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lw r30 r1 4 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -48 
  lw r30 r31 44 
  sw r31 r30 44 
  addi r30 r30 48 
  jal min_caml_sqrt 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  mul.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 44 
  swc1 f1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f1 48 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -60 
  lw r30 r31 56 
  sw r31 r30 56 
  addi r30 r30 60 
  jal min_caml_sqrt 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  lwc1 r30 f1 44 
  mul.s f1 f1 f2 
  mul.s f0 f0 f3 
  add.s f2 f3 f2 
  lui r24 14545 
  ori r24 r24 46871 
  mtc1 r24 f3 
  abs.s f1 f4 
  sub.s f3 f4 f3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f3 f4 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8710 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8711 
(test/sfiles/minrt_new.s)bfle_nontail_else.8710: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8711: 
  addi r0 r2 0 
  swc1 f2 r30 56 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8712 
  lui r24 16752 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8713 
(test/sfiles/minrt_new.s)beq_else.8712: 
  div.s f0 f1 f0 
  abs.s f0 f0 
  sw r31 r30 60 
  addi r30 r30 64 
  jal min_caml_atan 
  addi r30 r30 -64 
  lw r30 r31 60 
  lui r24 16880 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt_new.s)beq_cont.8713: 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal min_caml_floor 
  addi r30 r30 -68 
  lw r30 r31 64 
  lwc1 r30 f1 60 
  sub.s f1 f0 f0 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 64 
  swc1 f1 r30 68 
  sw r31 r30 72 
  addi r30 r30 76 
  jal (test/sfiles/minrt_new.s)o_param_y.2819 
  addi r30 r30 -76 
  lw r30 r31 72 
  lwc1 r30 f1 68 
  sub.s f1 f0 f0 
  lw r30 r1 4 
  swc1 f0 r30 72 
  sw r31 r30 76 
  addi r30 r30 80 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -80 
  lw r30 r31 76 
  sw r31 r30 76 
  addi r30 r30 80 
  jal min_caml_sqrt 
  addi r30 r30 -80 
  lw r30 r31 76 
  lwc1 r30 f1 72 
  mul.s f1 f0 f0 
  lui r24 14545 
  ori r24 r24 46871 
  mtc1 r24 f1 
  lwc1 r30 f2 56 
  abs.s f2 f3 
  sub.s f1 f3 f1 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f1 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8714 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8715 
(test/sfiles/minrt_new.s)bfle_nontail_else.8714: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8715: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8716 
  lui r24 16752 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8717 
(test/sfiles/minrt_new.s)beq_else.8716: 
  div.s f0 f2 f0 
  abs.s f0 f0 
  sw r31 r30 76 
  addi r30 r30 80 
  jal min_caml_atan 
  addi r30 r30 -80 
  lw r30 r31 76 
  lui r24 16880 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  div.s f0 f1 f0 
(test/sfiles/minrt_new.s)beq_cont.8717: 
  swc1 f0 r30 76 
  sw r31 r30 80 
  addi r30 r30 84 
  jal min_caml_floor 
  addi r30 r30 -84 
  lw r30 r31 80 
  lwc1 r30 f1 76 
  sub.s f1 f0 f0 
  lui r24 15897 
  ori r24 r24 39322 
  mtc1 r24 f1 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f2 
  lwc1 r30 f3 64 
  sub.s f2 f3 f2 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f4 
  sub.s f4 f3 f3 
  mul.s f2 f3 f2 
  sub.s f1 f2 f1 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f2 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f3 f0 f0 
  mul.s f2 f0 f0 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8718 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8719 
(test/sfiles/minrt_new.s)bfle_nontail_else.8718: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8719: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8720 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8721 
(test/sfiles/minrt_new.s)beq_else.8720: 
(test/sfiles/minrt_new.s)beq_cont.8721: 
  addi r30 r30 80 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -80 
  addi r0 r2 2 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f1 f0 f0 
  lui r24 16025 
  ori r24 r24 39322 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8707: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lw r30 r1 4 
  swc1 f0 r30 80 
  sw r31 r30 84 
  addi r30 r30 88 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -88 
  lw r30 r31 84 
  lwc1 r30 f1 80 
  sub.s f1 f0 f0 
  addi r0 r1 2 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lw r30 r1 4 
  swc1 f0 r30 84 
  swc1 f1 r30 88 
  sw r31 r30 92 
  addi r30 r30 96 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -96 
  lw r30 r31 92 
  lwc1 r30 f1 88 
  sub.s f1 f0 f0 
  lwc1 r30 f1 84 
  mul.s f1 f1 f1 
  mul.s f0 f0 f0 
  add.s f1 f0 f0 
  sw r31 r30 92 
  addi r30 r30 96 
  jal min_caml_sqrt 
  addi r30 r30 -96 
  lw r30 r31 92 
  lui r24 16672 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  swc1 f0 r30 92 
  sw r31 r30 96 
  addi r30 r30 100 
  jal min_caml_floor 
  addi r30 r30 -100 
  lw r30 r31 96 
  lwc1 r30 f1 92 
  sub.s f1 f0 f0 
  lui r24 16457 
  ori r24 r24 4059 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  swc1 f0 r30 96 
  sw r31 r30 100 
  addi r30 r30 104 
  jal min_caml_cos 
  addi r30 r30 -104 
  lw r30 r31 100 
  lwc1 r30 f1 96 
  swc1 f0 r30 100 
  sw r31 r30 104 
  addi r30 r30 108 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -108 
  lw r30 r31 104 
  lwc1 r30 f1 100 
  mul.s f1 f0 f0 
  addi r30 r30 104 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -104 
  addi r0 r2 1 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 104 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -104 
  addi r0 r2 2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f0 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8706: 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lui r24 16000 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  sw r31 r30 104 
  addi r30 r30 108 
  jal min_caml_sin 
  addi r30 r30 -108 
  lw r30 r31 104 
  addi r0 r1 1 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f1 
  lui r24 16000 
  ori r24 r24 0 
  mtc1 r24 f2 
  mul.s f1 f2 f1 
  swc1 f0 r30 104 
  sw r31 r30 108 
  addi r30 r30 112 
  mov.s f1 f0 
  jal min_caml_sin 
  addi r30 r30 -112 
  lw r30 r31 108 
  lwc1 r30 f1 104 
  mul.s f1 f0 f0 
  addi r30 r30 108 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -108 
  addi r0 r2 0 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 108 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -108 
  addi r0 r2 1 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f1 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f2 f0 f0 
  mul.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8705: 
  addi r0 r1 0 
  sll r1 r1 2 
  lw r30 r2 0 
  lwoc1 r2 r1 f0 
  lw r30 r1 4 
  swc1 f0 r30 108 
  sw r31 r30 112 
  addi r30 r30 116 
  jal (test/sfiles/minrt_new.s)o_param_x.2817 
  addi r30 r30 -116 
  lw r30 r31 112 
  lwc1 r30 f1 108 
  sub.s f1 f0 f0 
  lui r24 15692 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f1 
  swc1 f0 r30 112 
  sw r31 r30 116 
  addi r30 r30 120 
  mov.s f1 f0 
  jal min_caml_floor 
  addi r30 r30 -120 
  lw r30 r31 116 
  lui r24 16800 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16672 
  ori r24 r24 0 
  mtc1 r24 f1 
  lwc1 r30 f2 112 
  sub.s f2 f0 f0 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8725 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8726 
(test/sfiles/minrt_new.s)bfle_nontail_else.8725: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8726: 
  addi r0 r2 2 
  sll r2 r2 2 
  lw r30 r3 0 
  lwoc1 r3 r2 f0 
  lw r30 r2 4 
  sw r1 r30 116 
  swc1 f0 r30 120 
  sw r31 r30 124 
  addi r30 r30 128 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_z.2821 
  addi r30 r30 -128 
  lw r30 r31 124 
  lwc1 r30 f1 120 
  sub.s f1 f0 f0 
  lui r24 15692 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f1 
  swc1 f0 r30 124 
  sw r31 r30 128 
  addi r30 r30 132 
  mov.s f1 f0 
  jal min_caml_floor 
  addi r30 r30 -132 
  lw r30 r31 128 
  lui r24 16800 
  ori r24 r24 0 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16672 
  ori r24 r24 0 
  mtc1 r24 f1 
  lwc1 r30 f2 124 
  sub.s f2 f0 f0 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8727 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8728 
(test/sfiles/minrt_new.s)bfle_nontail_else.8727: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8728: 
  addi r30 r30 128 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -128 
  addi r0 r3 1 
  addi r0 r4 0 
  lw r30 r5 116 
  sub r5 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8729 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8731 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8732 
(test/sfiles/minrt_new.s)beq_else.8731: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
(test/sfiles/minrt_new.s)beq_cont.8732: 
  j (test/sfiles/minrt_new.s)beq_cont.8730 
(test/sfiles/minrt_new.s)beq_else.8729: 
  addi r0 r4 0 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8733 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  j (test/sfiles/minrt_new.s)beq_cont.8734 
(test/sfiles/minrt_new.s)beq_else.8733: 
  lui r24 17279 
  ori r24 r24 0 
  mtc1 r24 f0 
(test/sfiles/minrt_new.s)beq_cont.8734: 
(test/sfiles/minrt_new.s)beq_cont.8730: 
  sll r3 r1 2 
  swoc1 f0 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)add_light.3071: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f3 
  sub.s f0 f3 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8736 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8737 
(test/sfiles/minrt_new.s)bfle_nontail_else.8736: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8737: 
  addi r0 r2 0 
  swc1 f2 r30 0 
  swc1 f1 r30 4 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8738 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)vecaccum.2782 
  addi r30 r30 -12 
  lw r30 r31 8 
  j (test/sfiles/minrt_new.s)beq_cont.8739 
(test/sfiles/minrt_new.s)beq_else.8738: 
(test/sfiles/minrt_new.s)beq_cont.8739: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 4 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8740 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8741 
(test/sfiles/minrt_new.s)bfle_nontail_else.8740: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8741: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8742 
  mul.s f1 f1 f0 
  mul.s f1 f1 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 0 
  mul.s f0 f1 f0 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 0 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 1 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r2 2 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8742: 
  jr r31 
(test/sfiles/minrt_new.s)trace_reflections.3075: 
  addi r0 r3 0 
  sub r3 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8745 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8745: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_reflections 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r4 2 
  lwo r3 r4 r3 
  sw r1 r30 0 
  swc1 f1 r30 4 
  sw r2 r30 8 
  swc1 f0 r30 12 
  sw r3 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)r_dvec.2866 
  addi r30 r30 -24 
  lw r30 r31 20 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)judge_intersection_fast.3057 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8747 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 4 
  mult r1 r2 r1 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  add r1 r2 r1 
  lw r30 r2 16 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)r_surface_id.2864 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r2 24 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8749 
  j (test/sfiles/minrt_new.s)beq_cont.8750 
(test/sfiles/minrt_new.s)beq_else.8749: 
  addi r0 r1 0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)shadow_check_one_or_matrix.3028 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8751 
  j (test/sfiles/minrt_new.s)beq_cont.8752 
(test/sfiles/minrt_new.s)beq_else.8751: 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  lw r30 r2 20 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -36 
  lw r30 r31 32 
  mov r2 r1 
  lw r30 r1 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r1 16 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)r_bright.2868 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 12 
  mul.s f0 f1 f2 
  lwc1 r30 f3 32 
  mul.s f2 f3 f2 
  lw r30 r1 20 
  swc1 f2 r30 36 
  swc1 f0 r30 40 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -48 
  lw r30 r31 44 
  mov r2 r1 
  lw r30 r1 8 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -48 
  lw r30 r31 44 
  lwc1 r30 f1 40 
  mul.s f1 f0 f1 
  lwc1 r30 f0 36 
  lwc1 r30 f2 4 
  sw r31 r30 44 
  addi r30 r30 48 
  jal (test/sfiles/minrt_new.s)add_light.3071 
  addi r30 r30 -48 
  lw r30 r31 44 
(test/sfiles/minrt_new.s)beq_cont.8752: 
(test/sfiles/minrt_new.s)beq_cont.8750: 
  j (test/sfiles/minrt_new.s)beq_cont.8748 
(test/sfiles/minrt_new.s)beq_else.8747: 
(test/sfiles/minrt_new.s)beq_cont.8748: 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  lwc1 r30 f0 12 
  lwc1 r30 f1 4 
  lw r30 r2 8 
  j (test/sfiles/minrt_new.s)trace_reflections.3075 
(test/sfiles/minrt_new.s)trace_ray.3080: 
  addi r0 r4 4 
  sub r1 r4 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8753 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8753: 
  swc1 f1 r30 0 
  sw r3 r30 4 
  swc1 f0 r30 8 
  sw r1 r30 12 
  sw r2 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)p_surface_ids.2845 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 16 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)judge_intersection.3043 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8755 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  sll r1 r3 2 
  lwo r2 r3 r2 
  sw r1 r30 24 
  sw r2 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_reflectiontype.2803 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 28 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 8 
  mul.s f0 f1 f0 
  lw r30 r1 28 
  lw r30 r2 16 
  swc1 f0 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)get_nvector.3065 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  lw r30 r1 28 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)utexture.3068 
  addi r30 r30 -44 
  lw r30 r31 40 
  addi r0 r1 4 
  lw r30 r2 24 
  mult r2 r1 r1 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intsec_rectside 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  add r1 r2 r1 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 20 
  swo r1 r4 r3 
  lw r30 r1 4 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)p_intersection_points.2843 
  addi r30 r30 -44 
  lw r30 r31 40 
  lw r30 r2 12 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -40 
  sw r31 r30 40 
  addi r30 r30 44 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -44 
  lw r30 r31 40 
  lw r30 r1 4 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)p_calc_diffuse.2847 
  addi r30 r30 -44 
  lw r30 r31 40 
  lui r24 16128 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r2 28 
  sw r1 r30 40 
  swc1 f0 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8756 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8757 
(test/sfiles/minrt_new.s)bfle_nontail_else.8756: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8757: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8758 
  addi r0 r1 0 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 40 
  swo r1 r4 r3 
  j (test/sfiles/minrt_new.s)beq_cont.8759 
(test/sfiles/minrt_new.s)beq_else.8758: 
  addi r0 r1 1 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 40 
  swo r1 r4 r3 
  lw r30 r1 4 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt_new.s)p_energy.2849 
  addi r30 r30 -52 
  lw r30 r31 48 
  lw r30 r2 12 
  sll r2 r3 2 
  lwo r1 r3 r3 
  addi r30 r30 48 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -48 
  sw r1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r2 r4 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r1 12 
  sll r1 r2 2 
  lw r30 r3 48 
  lwo r3 r2 r2 
  lui r24 15232 
  ori r24 r24 0 
  mtc1 r24 f0 
  lwc1 r30 f1 36 
  mul.s f0 f1 f0 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)vecscale.2792 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r1 4 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)p_nvectors.2858 
  addi r30 r30 -56 
  lw r30 r31 52 
  lw r30 r2 12 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 52 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -52 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -56 
  lw r30 r31 52 
(test/sfiles/minrt_new.s)beq_cont.8759: 
  lui r24 49152 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r30 r30 52 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -52 
  lw r30 r1 16 
  swc1 f0 r30 52 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 52 
  mul.s f1 f0 f0 
  addi r30 r30 56 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -56 
  lw r30 r1 16 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt_new.s)vecaccum.2782 
  addi r30 r30 -60 
  lw r30 r31 56 
  lw r30 r1 28 
  sw r31 r30 56 
  addi r30 r30 60 
  jal (test/sfiles/minrt_new.s)o_hilight.2825 
  addi r30 r30 -60 
  lw r30 r31 56 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  addi r0 r1 0 
  addi r30 r30 56 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -56 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  swc1 f0 r30 56 
  sw r31 r30 60 
  addi r30 r30 64 
  jal (test/sfiles/minrt_new.s)shadow_check_one_or_matrix.3028 
  addi r30 r30 -64 
  lw r30 r31 60 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8760 
  j (test/sfiles/minrt_new.s)beq_cont.8761 
(test/sfiles/minrt_new.s)beq_else.8760: 
  addi r30 r30 60 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -60 
  addi r30 r30 60 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -60 
  sw r31 r30 60 
  addi r30 r30 64 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -64 
  lw r30 r31 60 
  neg.s f0 f0 
  lwc1 r30 f1 36 
  mul.s f0 f1 f0 
  addi r30 r30 60 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -60 
  lw r30 r1 16 
  swc1 f0 r30 60 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -68 
  lw r30 r31 64 
  neg.s f0 f1 
  lwc1 r30 f0 60 
  lwc1 r30 f2 56 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt_new.s)add_light.3071 
  addi r30 r30 -68 
  lw r30 r31 64 
(test/sfiles/minrt_new.s)beq_cont.8761: 
  addi r30 r30 64 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -64 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt_new.s)setup_startp.2994 
  addi r30 r30 -68 
  lw r30 r31 64 
  addi r30 r30 64 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -64 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r1 
  lwc1 r30 f0 36 
  lwc1 r30 f1 56 
  lw r30 r2 16 
  sw r31 r30 64 
  addi r30 r30 68 
  jal (test/sfiles/minrt_new.s)trace_reflections.3075 
  addi r30 r30 -68 
  lw r30 r31 64 
  lui r24 15820 
  ori r24 r24 52429 
  mtc1 r24 f0 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f2 
  sub.s f0 f2 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8762 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8763 
(test/sfiles/minrt_new.s)bfle_nontail_else.8762: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8763: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8764 
  addi r0 r1 4 
  lw r30 r2 12 
  sub r1 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_nontail_else.8765 
  addi r0 r1 1 
  add r2 r1 r1 
  addi r0 r3 -1 
  sll r1 r1 2 
  lw r30 r4 20 
  swo r3 r4 r1 
  j (test/sfiles/minrt_new.s)ble_nontail_cont.8766 
(test/sfiles/minrt_new.s)ble_nontail_else.8765: 
(test/sfiles/minrt_new.s)ble_nontail_cont.8766: 
  addi r0 r1 2 
  lw r30 r3 32 
  sub r3 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8767 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8767: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r1 28 
  swc1 f0 r30 64 
  sw r31 r30 68 
  addi r30 r30 72 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -72 
  lw r30 r31 68 
  lwc1 r30 f1 64 
  sub.s f1 f0 f0 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  addi r0 r1 1 
  lw r30 r2 12 
  add r2 r1 r1 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_tmin 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r3 0 
  sll r3 r3 2 
  lwoc1 r2 r3 f1 
  lwc1 r30 f2 0 
  add.s f2 f1 f1 
  lw r30 r2 16 
  lw r30 r3 4 
  j (test/sfiles/minrt_new.s)trace_ray.3080 
(test/sfiles/minrt_new.s)beq_tail_else.8764: 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8755: 
  addi r0 r1 -1 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 20 
  swo r1 r4 r3 
  addi r0 r1 0 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8770 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  lw r30 r1 16 
  sw r31 r30 68 
  addi r30 r30 72 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -72 
  lw r30 r31 68 
  neg.s f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8771 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8772 
(test/sfiles/minrt_new.s)bfle_nontail_else.8771: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8772: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8773 
  mul.s f0 f0 f1 
  mul.s f1 f0 f0 
  lwc1 r30 f1 8 
  mul.s f0 f1 f0 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_beam 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f0 f1 f0 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 0 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 1 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r2 2 
  addi r30 r30 68 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -68 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  add.s f1 f0 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8773: 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8770: 
  jr r31 
(test/sfiles/minrt_new.s)trace_diffuse_ray.3086: 
  swc1 f0 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)judge_intersection_fast.3057 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8777 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersected_object_id 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -16 
  lw r30 r31 12 
  mov r2 r1 
  lw r30 r1 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)get_nvector.3065 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_intersection_point 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  lw r30 r1 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)utexture.3068 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_or_net 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)shadow_check_one_or_matrix.3028 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8778 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8778: 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_nvector 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -16 
  lw r30 r31 12 
  neg.s f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8780 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8781 
(test/sfiles/minrt_new.s)bfle_nontail_else.8780: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8781: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8782 
  j (test/sfiles/minrt_new.s)beq_cont.8783 
(test/sfiles/minrt_new.s)beq_else.8782: 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
(test/sfiles/minrt_new.s)beq_cont.8783: 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  lwc1 r30 f1 0 
  mul.s f1 f0 f0 
  lw r30 r2 8 
  sw r1 r30 12 
  swc1 f0 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -24 
  lw r30 r31 20 
  lwc1 r30 f1 16 
  mul.s f1 f0 f0 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_texture_color 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  lw r30 r1 12 
  j (test/sfiles/minrt_new.s)vecaccum.2782 
(test/sfiles/minrt_new.s)beq_tail_else.8777: 
  jr r31 
(test/sfiles/minrt_new.s)iter_trace_diffuse_rays.3089: 
  addi r0 r5 0 
  sub r5 r4 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8785 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8785: 
  sll r4 r5 2 
  lwo r1 r5 r5 
  sw r3 r30 0 
  sw r1 r30 4 
  sw r4 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r5 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f1 f0 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8787 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8788 
(test/sfiles/minrt_new.s)bfle_nontail_else.8787: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8788: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8789 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 4 
  lwo r3 r1 r1 
  lui r24 49942 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)trace_diffuse_ray.3086 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt_new.s)beq_cont.8790 
(test/sfiles/minrt_new.s)beq_else.8789: 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  lui r24 17174 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f0 f1 f0 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)trace_diffuse_ray.3086 
  addi r30 r30 -20 
  lw r30 r31 16 
(test/sfiles/minrt_new.s)beq_cont.8790: 
  addi r0 r1 2 
  lw r30 r2 8 
  sub r2 r1 r4 
  lw r30 r1 4 
  lw r30 r2 12 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)iter_trace_diffuse_rays.3089 
(test/sfiles/minrt_new.s)trace_diffuse_rays.3094: 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)setup_startp.2994 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r4 118 
  lw r30 r1 8 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)iter_trace_diffuse_rays.3089 
(test/sfiles/minrt_new.s)trace_diffuse_ray_80percent.3098: 
  addi r0 r4 0 
  sw r3 r30 0 
  sw r2 r30 4 
  sw r1 r30 8 
  sub r1 r4 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8791 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r4 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)trace_diffuse_rays.3094 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt_new.s)beq_cont.8792 
(test/sfiles/minrt_new.s)beq_else.8791: 
(test/sfiles/minrt_new.s)beq_cont.8792: 
  addi r0 r1 1 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8793 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 1 
  sll r3 r3 2 
  lwo r1 r3 r1 
  lw r30 r3 4 
  lw r30 r4 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt_new.s)trace_diffuse_rays.3094 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt_new.s)beq_cont.8794 
(test/sfiles/minrt_new.s)beq_else.8793: 
(test/sfiles/minrt_new.s)beq_cont.8794: 
  addi r0 r1 2 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8795 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 2 
  sll r3 r3 2 
  lwo r1 r3 r1 
  lw r30 r3 4 
  lw r30 r4 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt_new.s)trace_diffuse_rays.3094 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt_new.s)beq_cont.8796 
(test/sfiles/minrt_new.s)beq_else.8795: 
(test/sfiles/minrt_new.s)beq_cont.8796: 
  addi r0 r1 3 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8797 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r3 3 
  sll r3 r3 2 
  lwo r1 r3 r1 
  lw r30 r3 4 
  lw r30 r4 0 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt_new.s)trace_diffuse_rays.3094 
  addi r30 r30 -16 
  lw r30 r31 12 
  j (test/sfiles/minrt_new.s)beq_cont.8798 
(test/sfiles/minrt_new.s)beq_else.8797: 
(test/sfiles/minrt_new.s)beq_cont.8798: 
  addi r0 r1 4 
  lw r30 r2 8 
  sub r2 r1 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8799 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 4 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 4 
  lw r30 r3 0 
  j (test/sfiles/minrt_new.s)trace_diffuse_rays.3094 
(test/sfiles/minrt_new.s)beq_tail_else.8799: 
  jr r31 
(test/sfiles/minrt_new.s)calc_diffuse_using_1point.3102: 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_nvectors.2858 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 4 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_intersection_points.2843 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 4 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_energy.2849 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r30 r30 20 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -20 
  lw r30 r3 0 
  sll r3 r4 2 
  lw r30 r5 8 
  lwo r5 r4 r4 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r1 4 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)p_group_id.2853 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 12 
  lwo r4 r3 r3 
  sll r2 r4 2 
  lw r30 r5 16 
  lwo r5 r4 r4 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r3 
  mov r3 r4 
  jal (test/sfiles/minrt_new.s)trace_diffuse_ray_80percent.3098 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  lw r30 r2 0 
  sll r2 r2 2 
  lw r30 r3 20 
  lwo r3 r2 r2 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  j (test/sfiles/minrt_new.s)vecaccumv.2795 
(test/sfiles/minrt_new.s)calc_diffuse_using_5points.3105: 
  sll r1 r6 2 
  lwo r2 r6 r2 
  sw r5 r30 0 
  sw r4 r30 4 
  sw r3 r30 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r2 1 
  lw r30 r3 12 
  sub r3 r2 r2 
  sll r2 r2 2 
  lw r30 r4 8 
  lwo r4 r2 r2 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 8 
  lwo r4 r3 r3 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 1 
  lw r30 r3 12 
  add r3 r2 r2 
  sll r2 r2 2 
  lw r30 r4 8 
  lwo r4 r2 r2 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r2 12 
  sll r2 r3 2 
  lw r30 r4 4 
  lwo r4 r3 r3 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -32 
  lw r30 r3 0 
  sll r3 r4 2 
  lw r30 r5 16 
  lwo r5 r4 r4 
  sw r1 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 20 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)vecadd.2786 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 24 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)vecadd.2786 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 28 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)vecadd.2786 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 0 
  sll r2 r3 2 
  lw r30 r4 32 
  lwo r4 r3 r3 
  sw r31 r30 36 
  addi r30 r30 40 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)vecadd.2786 
  addi r30 r30 -40 
  lw r30 r31 36 
  lw r30 r1 12 
  sll r1 r1 2 
  lw r30 r2 8 
  lwo r2 r1 r1 
  sw r31 r30 36 
  addi r30 r30 40 
  jal (test/sfiles/minrt_new.s)p_energy.2849 
  addi r30 r30 -40 
  lw r30 r31 36 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r3 0 
  sll r3 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -36 
  mov r28 r2 
  mov r2 r1 
  mov r1 r28 
  j (test/sfiles/minrt_new.s)vecaccumv.2795 
(test/sfiles/minrt_new.s)do_without_neighbors.3111: 
  addi r0 r3 4 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8801 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8801: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)p_surface_ids.2845 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  lw r30 r3 4 
  sll r3 r4 2 
  lwo r1 r4 r1 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8803 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8803: 
  lw r30 r1 0 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)p_calc_diffuse.2847 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8805 
  lw r30 r1 0 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)calc_diffuse_using_1point.3102 
  addi r30 r30 -12 
  lw r30 r31 8 
  j (test/sfiles/minrt_new.s)beq_cont.8806 
(test/sfiles/minrt_new.s)beq_else.8805: 
(test/sfiles/minrt_new.s)beq_cont.8806: 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r2 
  lw r30 r1 0 
  j (test/sfiles/minrt_new.s)do_without_neighbors.3111 
(test/sfiles/minrt_new.s)neighbors_exist.3114: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 1 
  sll r4 r4 2 
  lwo r3 r4 r3 
  addi r0 r4 1 
  add r2 r4 r4 
  sub r3 r4 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8807 
  addi r0 r3 0 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8808 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 1 
  add r1 r3 r3 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8809 
  addi r0 r2 0 
  sub r1 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8810 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8810: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8809: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8808: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8807: 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)get_surface_id.3118: 
  sw r2 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt_new.s)p_surface_ids.2845 
  addi r30 r30 -8 
  lw r30 r31 4 
  lw r30 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  jr r31 
(test/sfiles/minrt_new.s)neighbors_are_available.3121: 
  sll r1 r6 2 
  lwo r3 r6 r6 
  sw r3 r30 0 
  sw r4 r30 4 
  sw r5 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r2 r5 
  mov r1 r6 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 16 
  sll r2 r3 2 
  lw r30 r4 12 
  lwo r4 r3 r3 
  lw r30 r4 8 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r4 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8811 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8811: 
  lw r30 r1 16 
  sll r1 r3 2 
  lw r30 r4 4 
  lwo r4 r3 r3 
  lw r30 r4 8 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r4 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8812 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8812: 
  addi r0 r1 1 
  lw r30 r3 16 
  sub r3 r1 r1 
  sll r1 r1 2 
  lw r30 r4 0 
  lwo r4 r1 r1 
  lw r30 r5 8 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r5 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8813 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8813: 
  addi r0 r1 1 
  lw r30 r3 16 
  add r3 r1 r1 
  sll r1 r1 2 
  lw r30 r3 0 
  lwo r3 r1 r1 
  lw r30 r3 8 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r2 20 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8814 
  addi r0 r1 0 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8814: 
  addi r0 r1 1 
  jr r31 
(test/sfiles/minrt_new.s)try_exploit_neighbors.3127: 
  sll r1 r7 2 
  lwo r4 r7 r7 
  addi r0 r8 4 
  sub r6 r8 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8815 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8815: 
  addi r0 r8 0 
  sw r2 r30 0 
  sw r7 r30 4 
  sw r6 r30 8 
  sw r5 r30 12 
  sw r4 r30 16 
  sw r3 r30 20 
  sw r1 r30 24 
  sw r8 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r2 r6 
  mov r1 r7 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r2 28 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8817 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8817: 
  lw r30 r1 24 
  lw r30 r2 20 
  lw r30 r3 16 
  lw r30 r4 12 
  lw r30 r5 8 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)neighbors_are_available.3121 
  addi r30 r30 -36 
  lw r30 r31 32 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8819 
  lw r30 r1 4 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)p_calc_diffuse.2847 
  addi r30 r30 -36 
  lw r30 r31 32 
  lw r30 r5 8 
  sll r5 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8820 
  lw r30 r1 24 
  lw r30 r2 20 
  lw r30 r3 16 
  lw r30 r4 12 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)calc_diffuse_using_5points.3105 
  addi r30 r30 -36 
  lw r30 r31 32 
  j (test/sfiles/minrt_new.s)beq_cont.8821 
(test/sfiles/minrt_new.s)beq_else.8820: 
(test/sfiles/minrt_new.s)beq_cont.8821: 
  addi r0 r1 1 
  lw r30 r2 8 
  add r2 r1 r6 
  lw r30 r1 24 
  lw r30 r2 0 
  lw r30 r3 20 
  lw r30 r4 16 
  lw r30 r5 12 
  j (test/sfiles/minrt_new.s)try_exploit_neighbors.3127 
(test/sfiles/minrt_new.s)beq_tail_else.8819: 
  lw r30 r1 24 
  sll r1 r1 2 
  lw r30 r2 16 
  lwo r2 r1 r1 
  lw r30 r2 8 
  j (test/sfiles/minrt_new.s)do_without_neighbors.3111 
(test/sfiles/minrt_new.s)write_ppm_header.3134: 
  addi r0 r1 80 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 51 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 10 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 255 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_int 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 10 
  j min_caml_print_char 
(test/sfiles/minrt_new.s)write_rgb_element.3136: 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_int_of_float 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r2 255 
  sub r1 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_nontail_else.8822 
  addi r0 r1 255 
  j (test/sfiles/minrt_new.s)ble_nontail_cont.8823 
(test/sfiles/minrt_new.s)ble_nontail_else.8822: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_nontail_else.8824 
  addi r0 r1 0 
  j (test/sfiles/minrt_new.s)ble_nontail_cont.8825 
(test/sfiles/minrt_new.s)ble_nontail_else.8824: 
(test/sfiles/minrt_new.s)ble_nontail_cont.8825: 
(test/sfiles/minrt_new.s)ble_nontail_cont.8823: 
  j min_caml_print_int 
(test/sfiles/minrt_new.s)write_rgb.3138: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)write_rgb_element.3136 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)write_rgb_element.3136 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 32 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_print_char 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)write_rgb_element.3136 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 10 
  j min_caml_print_char 
(test/sfiles/minrt_new.s)pretrace_diffuse_rays.3140: 
  addi r0 r3 4 
  sub r2 r3 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8826 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8826: 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)get_surface_id.3118 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8828 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8828: 
  lw r30 r1 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)p_calc_diffuse.2847 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 0 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r0 r3 0 
  sub r1 r3 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8830 
  lw r30 r1 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)p_group_id.2853 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r30 r30 8 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -8 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)vecbzero.2761 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r1 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)p_nvectors.2858 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 4 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_intersection_points.2843 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  lw r30 r3 8 
  sll r3 r3 2 
  lwo r2 r3 r2 
  lw r30 r3 0 
  sll r3 r4 2 
  lw r30 r5 12 
  lwo r5 r4 r4 
  sll r3 r5 2 
  lwo r1 r5 r1 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r3 r1 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)trace_diffuse_rays.3094 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 4 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)p_received_ray_20percent.2851 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 0 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_diffuse_ray 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -16 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -20 
  lw r30 r31 16 
  j (test/sfiles/minrt_new.s)beq_cont.8831 
(test/sfiles/minrt_new.s)beq_else.8830: 
(test/sfiles/minrt_new.s)beq_cont.8831: 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r2 
  lw r30 r1 4 
  j (test/sfiles/minrt_new.s)pretrace_diffuse_rays.3140 
(test/sfiles/minrt_new.s)pretrace_pixels.3143: 
  addi r0 r4 0 
  sub r4 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8832 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8832: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_scan_pitch 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r4 r5 f3 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwo r4 r5 r4 
  sub r2 r4 r4 
  sw r3 r30 0 
  sw r1 r30 4 
  sw r2 r30 8 
  swc1 f2 r30 12 
  swc1 f1 r30 16 
  swc1 f0 r30 20 
  swc1 f3 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r4 
  jal min_caml_float_of_int 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f1 24 
  mul.s f1 f0 f0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f1 f1 
  lwc1 r30 f2 20 
  add.s f1 f2 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 1 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r4 1 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f1 f1 
  lwc1 r30 f3 16 
  add.s f1 f3 f1 
  sll r2 r2 2 
  swoc1 f1 r1 r2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenx_dir 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r4 2 
  sll r4 r4 2 
  lwoc1 r3 r4 f1 
  mul.s f0 f1 f0 
  lwc1 r30 f1 12 
  add.s f0 f1 f0 
  sll r2 r2 2 
  swoc1 f0 r1 r2 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)vecunit_sgn.2771 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)vecbzero.2761 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_startp 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_viewpoint 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 0 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_ptrace_dirvec 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  lw r30 r3 8 
  sll r3 r4 2 
  lw r30 r5 4 
  lwo r5 r4 r4 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r3 r4 
  jal (test/sfiles/minrt_new.s)trace_ray.3080 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)p_rgb.2841 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  lw r30 r4 0 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)p_set_group_id.2855 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 8 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  addi r0 r4 0 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)pretrace_diffuse_rays.3140 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 1 
  lw r30 r2 8 
  sub r2 r1 r1 
  addi r0 r2 1 
  lw r30 r3 0 
  sw r1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)add_mod5.2750 
  addi r30 r30 -36 
  lw r30 r31 32 
  mov r3 r1 
  lwc1 r30 f0 20 
  lwc1 r30 f1 16 
  lwc1 r30 f2 12 
  lw r30 r1 4 
  lw r30 r2 28 
  j (test/sfiles/minrt_new.s)pretrace_pixels.3143 
(test/sfiles/minrt_new.s)pretrace_line.3150: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_scan_pitch 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 0 
  sll r5 r5 2 
  lwoc1 r4 r5 f0 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r5 1 
  sll r5 r5 2 
  lwo r4 r5 r4 
  sub r2 r4 r2 
  sw r3 r30 0 
  sw r1 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  mul.s f1 f0 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  mul.s f0 f1 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  add.s f1 f2 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  mul.s f0 f2 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f2 f3 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screeny_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  mul.s f0 f3 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_screenz_dir 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  add.s f0 f3 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r2 
  lw r30 r1 4 
  lw r30 r3 0 
  mov.s f2 f31 
  mov.s f0 f2 
  mov.s f1 f0 
  mov.s f31 f1 
  j (test/sfiles/minrt_new.s)pretrace_pixels.3143 
(test/sfiles/minrt_new.s)scan_pixel.3154: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r7 0 
  sll r7 r7 2 
  lwo r6 r7 r6 
  sub r6 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8834 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_rgb 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r7 2 
  lwo r4 r7 r7 
  sw r3 r30 0 
  sw r4 r30 4 
  sw r5 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sw r6 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r7 
  jal (test/sfiles/minrt_new.s)p_rgb.2841 
  addi r30 r30 -28 
  lw r30 r31 24 
  mov r2 r1 
  lw r30 r1 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -28 
  lw r30 r31 24 
  lw r30 r1 16 
  lw r30 r2 12 
  lw r30 r3 8 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)neighbors_exist.3114 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_else.8835 
  addi r0 r6 0 
  lw r30 r1 16 
  lw r30 r2 12 
  lw r30 r3 0 
  lw r30 r4 4 
  lw r30 r5 8 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)try_exploit_neighbors.3127 
  addi r30 r30 -28 
  lw r30 r31 24 
  j (test/sfiles/minrt_new.s)beq_cont.8836 
(test/sfiles/minrt_new.s)beq_else.8835: 
  lw r30 r1 16 
  sll r1 r2 2 
  lw r30 r3 4 
  lwo r3 r2 r2 
  addi r0 r4 0 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)do_without_neighbors.3111 
  addi r30 r30 -28 
  lw r30 r31 24 
(test/sfiles/minrt_new.s)beq_cont.8836: 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)write_rgb.3138 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  lw r30 r2 12 
  lw r30 r3 0 
  lw r30 r4 4 
  lw r30 r5 8 
  j (test/sfiles/minrt_new.s)scan_pixel.3154 
(test/sfiles/minrt_new.s)ble_tail_else.8834: 
  jr r31 
(test/sfiles/minrt_new.s)scan_line.3160: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r7 1 
  sll r7 r7 2 
  lwo r6 r7 r6 
  sub r6 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8838 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r6 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r7 1 
  sll r7 r7 2 
  lwo r6 r7 r6 
  addi r0 r7 1 
  sub r6 r7 r6 
  sw r5 r30 0 
  sw r4 r30 4 
  sw r3 r30 8 
  sw r2 r30 12 
  sw r1 r30 16 
  sub r6 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_nontail_else.8839 
  addi r0 r6 1 
  add r1 r6 r6 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r3 r5 
  mov r2 r6 
  mov r1 r4 
  jal (test/sfiles/minrt_new.s)pretrace_line.3150 
  addi r30 r30 -24 
  lw r30 r31 20 
  j (test/sfiles/minrt_new.s)ble_nontail_cont.8840 
(test/sfiles/minrt_new.s)ble_nontail_else.8839: 
(test/sfiles/minrt_new.s)ble_nontail_cont.8840: 
  addi r0 r1 0 
  lw r30 r2 16 
  lw r30 r3 12 
  lw r30 r4 8 
  lw r30 r5 4 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)scan_pixel.3154 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  addi r0 r2 2 
  lw r30 r3 0 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)add_mod5.2750 
  addi r30 r30 -28 
  lw r30 r31 24 
  mov r5 r1 
  lw r30 r1 20 
  lw r30 r2 8 
  lw r30 r3 4 
  lw r30 r4 12 
  j (test/sfiles/minrt_new.s)scan_line.3160 
(test/sfiles/minrt_new.s)ble_tail_else.8838: 
  jr r31 
(test/sfiles/minrt_new.s)create_float5x3array.3166: 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  mov r2 r1 
  addi r0 r1 5 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r2 1 
  addi r0 r3 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal min_caml_create_float_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  addi r0 r1 2 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 8 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  addi r0 r1 3 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r2 12 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  addi r0 r1 4 
  addi r0 r2 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r2 
  jal min_caml_create_float_array 
  addi r30 r30 -24 
  lw r30 r31 20 
  lw r30 r2 16 
  sll r2 r2 2 
  lw r30 r3 0 
  swo r1 r3 r2 
  mov r1 r3 
  jr r31 
(test/sfiles/minrt_new.s)create_pixel.3168: 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt_new.s)create_float5x3array.3166 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r2 5 
  addi r0 r3 0 
  sw r1 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r2 
  mov r2 r3 
  jal min_caml_create_array 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 5 
  addi r0 r3 0 
  sw r1 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  mov r2 r3 
  jal min_caml_create_array 
  addi r30 r30 -16 
  lw r30 r31 12 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)create_float5x3array.3166 
  addi r30 r30 -20 
  lw r30 r31 16 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)create_float5x3array.3166 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r2 1 
  addi r0 r3 0 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  mov r2 r3 
  jal min_caml_create_array 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)create_float5x3array.3166 
  addi r30 r30 -32 
  lw r30 r31 28 
  mov r2 r27 
  addi r27 r27 32 
  sw r1 r2 28 
  lw r30 r1 24 
  sw r1 r2 24 
  lw r30 r1 20 
  sw r1 r2 20 
  lw r30 r1 16 
  sw r1 r2 16 
  lw r30 r1 12 
  sw r1 r2 12 
  lw r30 r1 8 
  sw r1 r2 8 
  lw r30 r1 4 
  sw r1 r2 4 
  lw r30 r1 0 
  sw r1 r2 0 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)init_line_elements.3170: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8842 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8842: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)create_pixel.3168 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r3 2 
  lw r30 r4 0 
  swo r1 r4 r3 
  addi r0 r1 1 
  sub r2 r1 r2 
  mov r1 r4 
  j (test/sfiles/minrt_new.s)init_line_elements.3170 
(test/sfiles/minrt_new.s)create_pixelline.3173: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal (test/sfiles/minrt_new.s)create_pixel.3168 
  addi r30 r30 -8 
  lw r30 r31 4 
  mov r2 r1 
  lw r30 r1 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_create_array 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r30 r30 4 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -4 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 2 
  sub r2 r3 r2 
  j (test/sfiles/minrt_new.s)init_line_elements.3170 
(test/sfiles/minrt_new.s)tan.3175: 
  swc1 f0 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_sin 
  addi r30 r30 -8 
  lw r30 r31 4 
  lwc1 r30 f1 0 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov.s f1 f0 
  jal min_caml_cos 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  div.s f1 f0 f0 
  jr r31 
(test/sfiles/minrt_new.s)adjust_position.3177: 
  mul.s f0 f0 f0 
  lui r24 15820 
  ori r24 r24 52429 
  mtc1 r24 f2 
  add.s f0 f2 f0 
  swc1 f1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_sqrt 
  addi r30 r30 -8 
  lw r30 r31 4 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f1 
  div.s f1 f0 f1 
  swc1 f0 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov.s f1 f0 
  jal min_caml_atan 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 0 
  mul.s f0 f1 f0 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)tan.3175 
  addi r30 r30 -12 
  lw r30 r31 8 
  lwc1 r30 f1 4 
  mul.s f0 f1 f0 
  jr r31 
(test/sfiles/minrt_new.s)calc_dirvec.3180: 
  addi r0 r4 5 
  sub r4 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8843 
  swc1 f2 r30 0 
  sw r3 r30 4 
  sw r2 r30 8 
  swc1 f3 r30 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov.s f1 f0 
  mov.s f2 f1 
  jal (test/sfiles/minrt_new.s)adjust_position.3177 
  addi r30 r30 -24 
  lw r30 r31 20 
  addi r0 r1 1 
  lw r30 r2 16 
  add r2 r1 r1 
  lwc1 r30 f1 12 
  swc1 f0 r30 20 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)adjust_position.3177 
  addi r30 r30 -32 
  lw r30 r31 28 
  mov.s f0 f1 
  lwc1 r30 f0 20 
  lwc1 r30 f2 0 
  lwc1 r30 f3 12 
  lw r30 r1 24 
  lw r30 r2 8 
  lw r30 r3 4 
  j (test/sfiles/minrt_new.s)calc_dirvec.3180 
(test/sfiles/minrt_new.s)ble_tail_else.8843: 
  mul.s f0 f0 f2 
  mul.s f1 f1 f3 
  add.s f2 f3 f2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f3 
  add.s f2 f3 f2 
  sw r3 r30 4 
  sw r2 r30 8 
  swc1 f1 r30 28 
  swc1 f0 r30 32 
  sw r31 r30 36 
  addi r30 r30 40 
  mov.s f2 f0 
  jal min_caml_sqrt 
  addi r30 r30 -40 
  lw r30 r31 36 
  lwc1 r30 f1 32 
  div.s f1 f0 f1 
  lwc1 r30 f2 28 
  div.s f2 f0 f2 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f3 
  div.s f3 f0 f0 
  addi r30 r30 36 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -36 
  lw r30 r2 8 
  sll r2 r2 2 
  lwo r1 r2 r1 
  lw r30 r2 4 
  sll r2 r3 2 
  lwo r1 r3 r3 
  sw r1 r30 36 
  swc1 f0 r30 40 
  swc1 f2 r30 44 
  swc1 f1 r30 48 
  sw r31 r30 52 
  addi r30 r30 56 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  lwc1 r30 f1 44 
  lwc1 r30 f2 40 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 40 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 44 
  neg.s f0 f2 
  lwc1 r30 f1 48 
  lwc1 r30 f3 40 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f1 f0 
  mov.s f3 f1 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 80 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  neg.s f0 f1 
  lwc1 r30 f2 44 
  neg.s f2 f3 
  lwc1 r30 f4 40 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f3 f2 
  mov.s f4 f0 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  neg.s f0 f1 
  lwc1 r30 f2 44 
  neg.s f2 f3 
  lwc1 r30 f4 40 
  neg.s f4 f5 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f5 f2 
  mov.s f1 f0 
  mov.s f3 f1 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 41 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r3 36 
  lwo r3 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 48 
  neg.s f0 f1 
  lwc1 r30 f2 40 
  neg.s f2 f3 
  lwc1 r30 f4 44 
  sw r31 r30 52 
  addi r30 r30 56 
  mov.s f4 f2 
  mov.s f1 f0 
  mov.s f3 f1 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -56 
  lw r30 r31 52 
  addi r0 r1 81 
  lw r30 r2 4 
  add r2 r1 r1 
  sll r1 r1 2 
  lw r30 r2 36 
  lwo r2 r1 r1 
  sw r31 r30 52 
  addi r30 r30 56 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -56 
  lw r30 r31 52 
  lwc1 r30 f0 40 
  neg.s f0 f0 
  lwc1 r30 f1 48 
  lwc1 r30 f2 44 
  j (test/sfiles/minrt_new.s)vecset.2753 
(test/sfiles/minrt_new.s)calc_dirvecs.3188: 
  addi r0 r4 0 
  sub r4 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8844 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8844: 
  sw r1 r30 0 
  swc1 f0 r30 4 
  sw r3 r30 8 
  sw r2 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_float_of_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 15948 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16230 
  ori r24 r24 26214 
  mtc1 r24 f1 
  sub.s f0 f1 f2 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  lwc1 r30 f3 4 
  lw r30 r2 12 
  lw r30 r3 8 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)calc_dirvec.3180 
  addi r30 r30 -20 
  lw r30 r31 16 
  lw r30 r1 0 
  sw r31 r30 16 
  addi r30 r30 20 
  jal min_caml_float_of_int 
  addi r30 r30 -20 
  lw r30 r31 16 
  lui r24 15948 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 15820 
  ori r24 r24 52429 
  mtc1 r24 f1 
  add.s f0 f1 f2 
  addi r0 r1 0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  addi r0 r2 2 
  lw r30 r3 8 
  add r3 r2 r2 
  lwc1 r30 f3 4 
  lw r30 r4 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r3 r2 
  mov r2 r4 
  jal (test/sfiles/minrt_new.s)calc_dirvec.3180 
  addi r30 r30 -20 
  lw r30 r31 16 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  addi r0 r2 1 
  lw r30 r3 12 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)add_mod5.2750 
  addi r30 r30 -24 
  lw r30 r31 20 
  mov r2 r1 
  lwc1 r30 f0 4 
  lw r30 r1 16 
  lw r30 r3 8 
  j (test/sfiles/minrt_new.s)calc_dirvecs.3188 
(test/sfiles/minrt_new.s)calc_dirvec_rows.3193: 
  addi r0 r4 0 
  sub r4 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8846 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8846: 
  sw r1 r30 0 
  sw r3 r30 4 
  sw r2 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lui r24 15948 
  ori r24 r24 52429 
  mtc1 r24 f1 
  mul.s f0 f1 f0 
  lui r24 16230 
  ori r24 r24 26214 
  mtc1 r24 f1 
  sub.s f0 f1 f0 
  addi r0 r1 4 
  lw r30 r2 8 
  lw r30 r3 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)calc_dirvecs.3188 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  addi r0 r2 2 
  lw r30 r3 8 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)add_mod5.2750 
  addi r30 r30 -20 
  lw r30 r31 16 
  mov r2 r1 
  addi r0 r1 4 
  lw r30 r3 4 
  add r3 r1 r3 
  lw r30 r1 12 
  j (test/sfiles/minrt_new.s)calc_dirvec_rows.3193 
(test/sfiles/minrt_new.s)create_dirvec.3197: 
  addi r0 r1 3 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal min_caml_create_float_array 
  addi r30 r30 -4 
  lw r30 r31 0 
  mov r2 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  sll r3 r3 2 
  lwo r1 r3 r1 
  sw r2 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  jal min_caml_create_array 
  addi r30 r30 -8 
  lw r30 r31 4 
  mov r2 r27 
  addi r27 r27 8 
  sw r1 r2 4 
  lw r30 r1 0 
  sw r1 r2 0 
  mov r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)create_dirvec_elements.3199: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8848 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8848: 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  jal (test/sfiles/minrt_new.s)create_dirvec.3197 
  addi r30 r30 -12 
  lw r30 r31 8 
  lw r30 r2 4 
  sll r2 r3 2 
  lw r30 r4 0 
  swo r1 r4 r3 
  addi r0 r1 1 
  sub r2 r1 r2 
  mov r1 r4 
  j (test/sfiles/minrt_new.s)create_dirvec_elements.3199 
(test/sfiles/minrt_new.s)create_dirvecs.3202: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8850 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8850: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 120 
  sw r2 r30 0 
  sw r1 r30 4 
  sw r3 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)create_dirvec.3197 
  addi r30 r30 -16 
  lw r30 r31 12 
  mov r2 r1 
  lw r30 r1 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_create_array 
  addi r30 r30 -16 
  lw r30 r31 12 
  lw r30 r2 4 
  sll r2 r3 2 
  lw r30 r4 0 
  swo r1 r4 r3 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  sll r2 r3 2 
  lwo r1 r3 r1 
  addi r0 r3 118 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)create_dirvec_elements.3199 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r1 1 
  lw r30 r2 4 
  sub r2 r1 r1 
  j (test/sfiles/minrt_new.s)create_dirvecs.3202 
(test/sfiles/minrt_new.s)init_dirvec_constants.3204: 
  addi r0 r3 0 
  sub r3 r2 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8852 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8852: 
  sll r2 r3 2 
  lwo r1 r3 r3 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r3 
  jal (test/sfiles/minrt_new.s)setup_dirvec_constants.2989 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r1 1 
  lw r30 r2 4 
  sub r2 r1 r2 
  lw r30 r1 0 
  j (test/sfiles/minrt_new.s)init_dirvec_constants.3204 
(test/sfiles/minrt_new.s)init_vecset_constants.3207: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8854 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8854: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_dirvecs 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r3 2 
  lwo r2 r3 r2 
  addi r0 r3 119 
  sw r1 r30 0 
  sw r31 r30 4 
  addi r30 r30 8 
  mov r1 r2 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)init_dirvec_constants.3204 
  addi r30 r30 -8 
  lw r30 r31 4 
  addi r0 r1 1 
  lw r30 r2 0 
  sub r2 r1 r1 
  j (test/sfiles/minrt_new.s)init_vecset_constants.3207 
(test/sfiles/minrt_new.s)init_dirvecs.3209: 
  addi r0 r1 4 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)create_dirvecs.3202 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 9 
  addi r0 r2 0 
  addi r0 r3 0 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)calc_dirvec_rows.3193 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r1 4 
  j (test/sfiles/minrt_new.s)init_vecset_constants.3207 
(test/sfiles/minrt_new.s)add_reflection.3211: 
  sw r1 r30 0 
  sw r2 r30 4 
  swc1 f0 r30 8 
  swc1 f3 r30 12 
  swc1 f2 r30 16 
  swc1 f1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)create_dirvec.3197 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r1 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -32 
  lw r30 r31 28 
  lwc1 r30 f0 20 
  lwc1 r30 f1 16 
  lwc1 r30 f2 12 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)vecset.2753 
  addi r30 r30 -32 
  lw r30 r31 28 
  lw r30 r1 24 
  sw r31 r30 28 
  addi r30 r30 32 
  jal (test/sfiles/minrt_new.s)setup_dirvec_constants.2989 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  mov r2 r27 
  addi r27 r27 16 
  lwc1 r30 f0 8 
  swc1 f0 r2 8 
  lw r30 r3 24 
  sw r3 r2 4 
  lw r30 r3 4 
  sw r3 r2 0 
  lw r30 r3 0 
  sll r3 r3 2 
  swo r2 r1 r3 
  jr r31 
(test/sfiles/minrt_new.s)setup_rect_reflection.3218: 
  addi r0 r3 4 
  mult r1 r3 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r3 r30 0 
  sw r1 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  neg.s f1 f1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  neg.s f2 f2 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f3 
  neg.s f3 f3 
  addi r0 r1 1 
  lw r30 r2 4 
  add r2 r1 r1 
  addi r30 r30 12 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -12 
  addi r0 r4 0 
  sll r4 r4 2 
  lwoc1 r3 r4 f4 
  lw r30 r3 0 
  swc1 f2 r30 12 
  swc1 f3 r30 16 
  swc1 f1 r30 20 
  swc1 f0 r30 24 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r2 r1 
  mov r1 r3 
  mov.s f4 f1 
  jal (test/sfiles/minrt_new.s)add_reflection.3211 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 1 
  lw r30 r2 0 
  add r2 r1 r1 
  addi r0 r3 2 
  lw r30 r4 4 
  add r4 r3 r3 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r5 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r6 1 
  sll r6 r6 2 
  lwoc1 r5 r6 f2 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f3 16 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)add_reflection.3211 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r0 r1 2 
  lw r30 r2 0 
  add r2 r1 r1 
  addi r0 r3 3 
  lw r30 r4 4 
  add r4 r3 r3 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r4 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r5 2 
  sll r5 r5 2 
  lwoc1 r4 r5 f3 
  lwc1 r30 f0 24 
  lwc1 r30 f1 20 
  lwc1 r30 f2 12 
  sw r31 r30 28 
  addi r30 r30 32 
  mov r2 r3 
  jal (test/sfiles/minrt_new.s)add_reflection.3211 
  addi r30 r30 -32 
  lw r30 r31 28 
  addi r30 r30 28 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -28 
  addi r0 r2 0 
  addi r0 r3 3 
  lw r30 r4 0 
  add r4 r3 r3 
  sll r2 r2 2 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)setup_surface_reflection.3221: 
  addi r0 r3 4 
  mult r1 r3 r1 
  addi r0 r3 1 
  add r1 r3 r1 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  lwo r3 r4 r3 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r1 r30 0 
  sw r3 r30 4 
  sw r2 r30 8 
  swc1 f0 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -20 
  lw r30 r31 16 
  lwc1 r30 f1 12 
  sub.s f1 f0 f0 
  addi r30 r30 16 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -16 
  lw r30 r2 8 
  swc1 f0 r30 16 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_param_abc.2815 
  addi r30 r30 -28 
  lw r30 r31 24 
  mov r2 r1 
  lw r30 r1 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)veciprod.2774 
  addi r30 r30 -28 
  lw r30 r31 24 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f1 
  lw r30 r1 8 
  swc1 f0 r30 24 
  swc1 f1 r30 28 
  sw r31 r30 32 
  addi r30 r30 36 
  jal (test/sfiles/minrt_new.s)o_param_a.2809 
  addi r30 r30 -36 
  lw r30 r31 32 
  lwc1 r30 f1 28 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  mul.s f0 f1 f0 
  addi r30 r30 32 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -32 
  addi r0 r2 0 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  sub.s f0 f2 f0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lw r30 r1 8 
  swc1 f0 r30 32 
  swc1 f2 r30 36 
  sw r31 r30 40 
  addi r30 r30 44 
  jal (test/sfiles/minrt_new.s)o_param_b.2811 
  addi r30 r30 -44 
  lw r30 r31 40 
  lwc1 r30 f1 36 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  mul.s f0 f1 f0 
  addi r30 r30 40 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -40 
  addi r0 r2 1 
  sll r2 r2 2 
  lwoc1 r1 r2 f2 
  sub.s f0 f2 f0 
  lui r24 16384 
  ori r24 r24 0 
  mtc1 r24 f2 
  lw r30 r1 8 
  swc1 f0 r30 40 
  swc1 f2 r30 44 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt_new.s)o_param_c.2813 
  addi r30 r30 -52 
  lw r30 r31 48 
  lwc1 r30 f1 44 
  mul.s f1 f0 f0 
  lwc1 r30 f1 24 
  mul.s f0 f1 f0 
  addi r30 r30 48 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -48 
  addi r0 r2 2 
  sll r2 r2 2 
  lwoc1 r1 r2 f1 
  sub.s f0 f1 f3 
  lwc1 r30 f0 16 
  lwc1 r30 f1 32 
  lwc1 r30 f2 40 
  lw r30 r1 4 
  lw r30 r2 0 
  sw r31 r30 48 
  addi r30 r30 52 
  jal (test/sfiles/minrt_new.s)add_reflection.3211 
  addi r30 r30 -52 
  lw r30 r31 48 
  addi r30 r30 48 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_reflections 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -48 
  addi r0 r2 0 
  addi r0 r3 1 
  lw r30 r4 4 
  add r4 r3 r3 
  sll r2 r2 2 
  swo r3 r1 r2 
  jr r31 
(test/sfiles/minrt_new.s)setup_reflections.3224: 
  addi r0 r2 0 
  sub r2 r1 r25 
  blez r25 (test/sfiles/minrt_new.s)ble_tail_else.8859 
  jr r31 
(test/sfiles/minrt_new.s)ble_tail_else.8859: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_objects 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  sll r1 r3 2 
  lwo r2 r3 r2 
  sw r1 r30 0 
  sw r2 r30 4 
  sw r31 r30 8 
  addi r30 r30 12 
  mov r1 r2 
  jal (test/sfiles/minrt_new.s)o_reflectiontype.2803 
  addi r30 r30 -12 
  lw r30 r31 8 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8861 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8861: 
  lui r24 16256 
  ori r24 r24 0 
  mtc1 r24 f0 
  lw r30 r1 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)o_diffuse.2823 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  sub.s f1 f0 f0 
  lui r24 0 
  ori r24 r24 0 
  mtc1 r24 f1 
  sub.s f0 f1 f30 
  mfc1 f30 r25 
  blez r25 (test/sfiles/minrt_new.s)bfle_nontail_else.8863 
  addi r0 r1 1 
  j (test/sfiles/minrt_new.s)bfle_nontail_cont.8864 
(test/sfiles/minrt_new.s)bfle_nontail_else.8863: 
  addi r0 r1 0 
(test/sfiles/minrt_new.s)bfle_nontail_cont.8864: 
  addi r0 r2 0 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8865 
  lw r30 r1 4 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)o_form.2801 
  addi r30 r30 -16 
  lw r30 r31 12 
  addi r0 r2 1 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8866 
  addi r0 r2 2 
  sub r1 r2 r25 
  beq r25 r0 (test/sfiles/minrt_new.s)beq_tail_else.8867 
  jr r31 
(test/sfiles/minrt_new.s)beq_tail_else.8867: 
  lw r30 r1 0 
  lw r30 r2 4 
  j (test/sfiles/minrt_new.s)setup_surface_reflection.3221 
(test/sfiles/minrt_new.s)beq_tail_else.8866: 
  lw r30 r1 0 
  lw r30 r2 4 
  j (test/sfiles/minrt_new.s)setup_rect_reflection.3218 
(test/sfiles/minrt_new.s)beq_tail_else.8865: 
  jr r31 
(test/sfiles/minrt_new.s)rt.3226: 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  sll r4 r4 2 
  swo r1 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_size 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 1 
  sll r4 r4 2 
  swo r2 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 0 
  addi r0 r5 2 
  div r1 r5 r5 
  sll r4 r4 2 
  swo r5 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_image_center 
  mov r3 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r4 1 
  addi r0 r5 2 
  div r2 r5 r2 
  sll r4 r4 2 
  swo r2 r3 r4 
  addi r30 r30 0 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_scan_pitch 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 0 
  addi r0 r3 0 
  lui r24 17152 
  ori r24 r24 0 
  mtc1 r24 f0 
  sw r2 r30 0 
  sw r3 r30 4 
  swc1 f0 r30 8 
  sw r31 r30 12 
  addi r30 r30 16 
  jal min_caml_float_of_int 
  addi r30 r30 -16 
  lw r30 r31 12 
  lwc1 r30 f1 8 
  div.s f1 f0 f0 
  lw r30 r1 4 
  sll r1 r1 2 
  lw r30 r2 0 
  swoc1 f0 r2 r1 
  sw r31 r30 12 
  addi r30 r30 16 
  jal (test/sfiles/minrt_new.s)create_pixelline.3173 
  addi r30 r30 -16 
  lw r30 r31 12 
  sw r1 r30 12 
  sw r31 r30 16 
  addi r30 r30 20 
  jal (test/sfiles/minrt_new.s)create_pixelline.3173 
  addi r30 r30 -20 
  lw r30 r31 16 
  sw r1 r30 16 
  sw r31 r30 20 
  addi r30 r30 24 
  jal (test/sfiles/minrt_new.s)create_pixelline.3173 
  addi r30 r30 -24 
  lw r30 r31 20 
  sw r1 r30 20 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)read_parameter.2891 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)write_ppm_header.3134 
  addi r30 r30 -28 
  lw r30 r31 24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)init_dirvecs.3209 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)d_vec.2860 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light 
  mov r2 r1 
  lw r30 r1 0 
  lw r30 r31 4 
  addi r30 r30 -24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)veccpy.2763 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_light_dirvec 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)setup_dirvec_constants.2989 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r30 r30 24 
  sw r1 r30 0 
  sw r31 r30 4 
  jal min_caml_load_n_objects 
  mov r1 r1 
  lw r30 r31 4 
  addi r30 r30 -24 
  addi r0 r2 0 
  sll r2 r2 2 
  lwo r1 r2 r1 
  addi r0 r2 1 
  sub r1 r2 r1 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)setup_reflections.3224 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r2 0 
  addi r0 r3 0 
  lw r30 r1 16 
  sw r31 r30 24 
  addi r30 r30 28 
  jal (test/sfiles/minrt_new.s)pretrace_line.3150 
  addi r30 r30 -28 
  lw r30 r31 24 
  addi r0 r1 0 
  addi r0 r5 2 
  lw r30 r2 12 
  lw r30 r3 16 
  lw r30 r4 20 
  j (test/sfiles/minrt_new.s)scan_line.3160 
_min_caml_start: 
  lui r27 32 
  jal min_caml_globals 
  addi r0 r31 0 
  addi r0 r1 512 
  addi r0 r2 512 
  sw r31 r30 0 
  addi r30 r30 4 
  jal (test/sfiles/minrt_new.s)rt.3226 
  addi r30 r30 -4 
  lw r30 r31 0 
  addi r0 r0 0 
  halt 

