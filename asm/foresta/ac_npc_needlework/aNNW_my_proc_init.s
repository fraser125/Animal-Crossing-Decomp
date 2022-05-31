lbl_80565570:
/* 80565570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565574  7C 08 02 A6 */	mflr r0
/* 80565578  3C C0 80 6C */	lis r6, meg_my_init_proc_table@ha /* 0x806BE234@ha */
/* 8056557C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565580  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 80565584  98 A3 09 B7 */	stb r5, 0x9b7(r3)
/* 80565588  38 A6 E2 34 */	addi r5, r6, meg_my_init_proc_table@l /* 0x806BE234@l */
/* 8056558C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80565590  7D 89 03 A6 */	mtctr r12
/* 80565594  4E 80 04 21 */	bctrl 
/* 80565598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056559C  7C 08 03 A6 */	mtlr r0
/* 805655A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805655A4  4E 80 00 20 */	blr 
