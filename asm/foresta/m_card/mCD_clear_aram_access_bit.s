lbl_803F9EF0:
/* 803F9EF0  3C 60 81 17 */	lis r3, l_aram_access_bit@ha /* 0x81171618@ha */
/* 803F9EF4  38 00 00 00 */	li r0, 0
/* 803F9EF8  90 03 16 18 */	stw r0, l_aram_access_bit@l(r3)  /* 0x81171618@l */
/* 803F9EFC  4E 80 00 20 */	blr 
