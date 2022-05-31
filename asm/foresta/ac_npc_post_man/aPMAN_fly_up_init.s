lbl_8056EBF0:
/* 8056EBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EBF4  7C 08 02 A6 */	mflr r0
/* 8056EBF8  3C A0 80 57 */	lis r5, aPMAN_eff_wings@ha /* 0x8056E218@ha */
/* 8056EBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EC00  38 05 E2 18 */	addi r0, r5, aPMAN_eff_wings@l /* 0x8056E218@l */
/* 8056EC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056EC08  7C 7F 1B 78 */	mr r31, r3
/* 8056EC0C  38 64 1C C0 */	addi r3, r4, 0x1cc0
/* 8056EC10  7C 04 03 78 */	mr r4, r0
/* 8056EC14  7F E5 FB 78 */	mr r5, r31
/* 8056EC18  4B E4 75 F1 */	bl mEnv_regist_nature
/* 8056EC1C  7F E3 FB 78 */	mr r3, r31
/* 8056EC20  4B FF FD C5 */	bl aPMAN_clear_xz_spd
/* 8056EC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056EC2C  7C 08 03 A6 */	mtlr r0
/* 8056EC30  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EC34  4E 80 00 20 */	blr 
