lbl_803EF590:
/* 803EF590  3C 80 81 17 */	lis r4, SubmenuArea_allocp@ha /* 0x8117153C@ha */
/* 803EF594  38 A0 00 01 */	li r5, 1
/* 803EF598  3C 60 81 17 */	lis r3, data_81171538@ha /* 0x81171538@ha */
/* 803EF59C  38 00 00 00 */	li r0, 0
/* 803EF5A0  90 A4 15 3C */	stw r5, SubmenuArea_allocp@l(r4)  /* 0x8117153C@l */
/* 803EF5A4  90 03 15 38 */	stw r0, data_81171538@l(r3)  /* 0x81171538@l */
/* 803EF5A8  4E 80 00 20 */	blr 
