lbl_805A2ED0:
/* 805A2ED0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A2ED4  38 60 00 00 */	li r3, 0
/* 805A2ED8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A2EDC  3C 84 00 02 */	addis r4, r4, 2
/* 805A2EE0  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 805A2EE4  A0 04 04 A4 */	lhz r0, 0x4a4(r4)
/* 805A2EE8  28 00 22 3C */	cmplwi r0, 0x223c
/* 805A2EEC  4C 82 00 20 */	bnelr 
/* 805A2EF0  38 60 00 01 */	li r3, 1
/* 805A2EF4  4E 80 00 20 */	blr 
