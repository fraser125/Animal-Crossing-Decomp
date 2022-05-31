lbl_8056B630:
/* 8056B630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056B634  7C 08 02 A6 */	mflr r0
/* 8056B638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B63C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056B640  7C 7F 1B 78 */	mr r31, r3
/* 8056B644  7C 83 23 78 */	mr r3, r4
/* 8056B648  4B E6 DF F9 */	bl get_player_actor_withoutCheck
/* 8056B64C  28 03 00 00 */	cmplwi r3, 0
/* 8056B650  41 82 00 4C */	beq lbl_8056B69C
/* 8056B654  A8 9F 09 A0 */	lha r4, 0x9a0(r31)
/* 8056B658  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056B65C  7C 04 00 50 */	subf r0, r4, r0
/* 8056B660  7C 03 07 35 */	extsh. r3, r0
/* 8056B664  7C 03 00 D0 */	neg r0, r3
/* 8056B668  41 80 00 08 */	blt lbl_8056B670
/* 8056B66C  7C 60 1B 78 */	mr r0, r3
lbl_8056B670:
/* 8056B670  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8056B674  40 81 00 14 */	ble lbl_8056B688
/* 8056B678  7F E3 FB 78 */	mr r3, r31
/* 8056B67C  38 80 00 06 */	li r4, 6
/* 8056B680  48 00 0A 81 */	bl aPOL2_setupAction
/* 8056B684  48 00 00 18 */	b lbl_8056B69C
lbl_8056B688:
/* 8056B688  38 7F 00 DE */	addi r3, r31, 0xde
/* 8056B68C  38 A0 08 00 */	li r5, 0x800
/* 8056B690  4B E4 F4 B5 */	bl chase_angle
/* 8056B694  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056B698  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_8056B69C:
/* 8056B69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056B6A4  7C 08 03 A6 */	mtlr r0
/* 8056B6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B6AC  4E 80 00 20 */	blr 
