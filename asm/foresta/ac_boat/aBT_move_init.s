lbl_805A82B4:
/* 805A82B4  80 03 02 C4 */	lwz r0, 0x2c4(r3)
/* 805A82B8  3C 80 80 6C */	lis r4, chk_point_idx@ha /* 0x806C43DC@ha */
/* 805A82BC  38 84 43 DC */	addi r4, r4, chk_point_idx@l /* 0x806C43DC@l */
/* 805A82C0  54 00 10 3A */	slwi r0, r0, 2
/* 805A82C4  7C 04 00 2E */	lwzx r0, r4, r0
/* 805A82C8  90 03 02 C0 */	stw r0, 0x2c0(r3)
/* 805A82CC  4E 80 00 20 */	blr 
