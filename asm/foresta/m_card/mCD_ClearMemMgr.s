lbl_803FA568:
/* 803FA568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA56C  7C 08 02 A6 */	mflr r0
/* 803FA570  3C 60 81 19 */	lis r3, l_memMgr@ha /* 0x81197638@ha */
/* 803FA574  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA578  38 63 76 38 */	addi r3, r3, l_memMgr@l /* 0x81197638@l */
/* 803FA57C  4B FF FF 0D */	bl mCD_ClearMemMgr_com
/* 803FA580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA584  7C 08 03 A6 */	mtlr r0
/* 803FA588  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA58C  4E 80 00 20 */	blr 
