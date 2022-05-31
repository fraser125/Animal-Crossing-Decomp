lbl_803EF484:
/* 803EF484  3C C0 81 17 */	lis r6, SubmenuArea_allocp@ha /* 0x8117153C@ha */
/* 803EF488  38 00 00 00 */	li r0, 0
/* 803EF48C  38 C6 15 3C */	addi r6, r6, SubmenuArea_allocp@l /* 0x8117153C@l */
/* 803EF490  3C A0 81 17 */	lis r5, data_81171538@ha /* 0x81171538@ha */
/* 803EF494  80 C6 00 00 */	lwz r6, 0(r6)
/* 803EF498  90 C3 00 00 */	stw r6, 0(r3)
/* 803EF49C  90 03 00 14 */	stw r0, 0x14(r3)
/* 803EF4A0  90 65 15 38 */	stw r3, data_81171538@l(r5)  /* 0x81171538@l */
/* 803EF4A4  80 03 00 00 */	lwz r0, 0(r3)
/* 803EF4A8  90 04 00 24 */	stw r0, 0x24(r4)
/* 803EF4AC  80 03 00 00 */	lwz r0, 0(r3)
/* 803EF4B0  90 04 00 28 */	stw r0, 0x28(r4)
/* 803EF4B4  4E 80 00 20 */	blr 
