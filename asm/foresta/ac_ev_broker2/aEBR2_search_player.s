lbl_8051AE00:
/* 8051AE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051AE04  7C 08 02 A6 */	mflr r0
/* 8051AE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051AE0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051AE10  7C 7F 1B 78 */	mr r31, r3
/* 8051AE14  7C 83 23 78 */	mr r3, r4
/* 8051AE18  4B EB E8 29 */	bl get_player_actor_withoutCheck
/* 8051AE1C  28 03 00 00 */	cmplwi r3, 0
/* 8051AE20  41 82 00 4C */	beq lbl_8051AE6C
/* 8051AE24  A8 9F 09 A2 */	lha r4, 0x9a2(r31)
/* 8051AE28  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8051AE2C  7C 04 00 50 */	subf r0, r4, r0
/* 8051AE30  7C 03 07 35 */	extsh. r3, r0
/* 8051AE34  7C 03 00 D0 */	neg r0, r3
/* 8051AE38  41 80 00 08 */	blt lbl_8051AE40
/* 8051AE3C  7C 60 1B 78 */	mr r0, r3
lbl_8051AE40:
/* 8051AE40  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8051AE44  40 81 00 14 */	ble lbl_8051AE58
/* 8051AE48  7F E3 FB 78 */	mr r3, r31
/* 8051AE4C  38 80 00 05 */	li r4, 5
/* 8051AE50  48 00 0D 15 */	bl aEBR2_setupAction
/* 8051AE54  48 00 00 18 */	b lbl_8051AE6C
lbl_8051AE58:
/* 8051AE58  38 7F 00 DE */	addi r3, r31, 0xde
/* 8051AE5C  38 A0 08 00 */	li r5, 0x800
/* 8051AE60  4B E9 FC E5 */	bl chase_angle
/* 8051AE64  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8051AE68  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_8051AE6C:
/* 8051AE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051AE70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051AE74  7C 08 03 A6 */	mtlr r0
/* 8051AE78  38 21 00 10 */	addi r1, r1, 0x10
/* 8051AE7C  4E 80 00 20 */	blr 
