lbl_803CF128:
/* 803CF128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CF12C  7C 08 02 A6 */	mflr r0
/* 803CF130  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CF134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CF138  93 C1 00 08 */	stw r30, 8(r1)
/* 803CF13C  7C 9E 23 78 */	mr r30, r4
/* 803CF140  38 80 00 20 */	li r4, 0x20
/* 803CF144  4B C8 DF 25 */	bl bzero
/* 803CF148  3B E0 00 00 */	li r31, 0
lbl_803CF14C:
/* 803CF14C  7F C3 F3 78 */	mr r3, r30
/* 803CF150  4B FF D4 6D */	bl mNpc_CheckFreeAnimalInfo
/* 803CF154  2C 03 00 00 */	cmpwi r3, 0
/* 803CF158  40 82 00 0C */	bne lbl_803CF164
/* 803CF15C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803CF160  4B FF FE 71 */	bl mNpc_SetHaveAppeared
lbl_803CF164:
/* 803CF164  3B FF 00 01 */	addi r31, r31, 1
/* 803CF168  3B DE 09 88 */	addi r30, r30, 0x988
/* 803CF16C  2C 1F 00 0F */	cmpwi r31, 0xf
/* 803CF170  41 80 FF DC */	blt lbl_803CF14C
/* 803CF174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CF178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CF17C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CF180  7C 08 03 A6 */	mtlr r0
/* 803CF184  38 21 00 10 */	addi r1, r1, 0x10
/* 803CF188  4E 80 00 20 */	blr 
