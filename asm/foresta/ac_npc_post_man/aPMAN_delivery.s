lbl_8056E6AC:
/* 8056E6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E6B0  7C 08 02 A6 */	mflr r0
/* 8056E6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E6BC  7C 9F 23 78 */	mr r31, r4
/* 8056E6C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8056E6C4  7C 7E 1B 78 */	mr r30, r3
/* 8056E6C8  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8056E6CC  2C 00 00 01 */	cmpwi r0, 1
/* 8056E6D0  40 82 00 38 */	bne lbl_8056E708
/* 8056E6D4  88 1E 09 9B */	lbz r0, 0x99b(r30)
/* 8056E6D8  38 A0 00 0B */	li r5, 0xb
/* 8056E6DC  7C 00 07 74 */	extsb r0, r0
/* 8056E6E0  2C 00 FF FF */	cmpwi r0, -1
/* 8056E6E4  41 82 00 18 */	beq lbl_8056E6FC
/* 8056E6E8  4B FF FA 49 */	bl aPMAN_set_move_idx
/* 8056E6EC  98 7E 09 9C */	stb r3, 0x99c(r30)
/* 8056E6F0  38 00 00 05 */	li r0, 5
/* 8056E6F4  38 A0 00 04 */	li r5, 4
/* 8056E6F8  98 1E 09 99 */	stb r0, 0x999(r30)
lbl_8056E6FC:
/* 8056E6FC  7F C3 F3 78 */	mr r3, r30
/* 8056E700  7F E4 FB 78 */	mr r4, r31
/* 8056E704  48 00 05 CD */	bl aPMAN_setupAction
lbl_8056E708:
/* 8056E708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E710  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056E714  7C 08 03 A6 */	mtlr r0
/* 8056E718  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E71C  4E 80 00 20 */	blr 
