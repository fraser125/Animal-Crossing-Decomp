lbl_8053A17C:
/* 8053A17C  3C 80 81 1E */	lis r4, aNPC_n_overlay@ha /* 0x811D93C0@ha */
/* 8053A180  38 00 00 00 */	li r0, 0
/* 8053A184  38 84 93 C0 */	addi r4, r4, aNPC_n_overlay@l /* 0x811D93C0@l */
/* 8053A188  38 84 00 08 */	addi r4, r4, 8
/* 8053A18C  90 83 00 00 */	stw r4, 0(r3)
/* 8053A190  90 03 00 04 */	stw r0, 4(r3)
/* 8053A194  4E 80 00 20 */	blr 
