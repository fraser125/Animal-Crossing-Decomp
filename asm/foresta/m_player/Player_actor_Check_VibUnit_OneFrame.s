lbl_804DA9DC:
/* 804DA9DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804DA9E0  7C 08 02 A6 */	mflr r0
/* 804DA9E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DA9E8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804DA9EC  7C 9F 23 78 */	mr r31, r4
/* 804DA9F0  38 81 00 30 */	addi r4, r1, 0x30
/* 804DA9F4  4B FF FE F1 */	bl Player_actor_Check_HitAxe
/* 804DA9F8  2C 03 00 00 */	cmpwi r3, 0
/* 804DA9FC  41 82 00 9C */	beq lbl_804DAA98
/* 804DAA00  80 FF 00 00 */	lwz r7, 0(r31)
/* 804DAA04  38 61 00 14 */	addi r3, r1, 0x14
/* 804DAA08  80 DF 00 04 */	lwz r6, 4(r31)
/* 804DAA0C  38 81 00 10 */	addi r4, r1, 0x10
/* 804DAA10  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DAA14  38 A1 00 24 */	addi r5, r1, 0x24
/* 804DAA18  90 E1 00 24 */	stw r7, 0x24(r1)
/* 804DAA1C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804DAA20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804DAA24  4B EC AD 3D */	bl mFI_Wpos2BlockNum
/* 804DAA28  2C 03 00 00 */	cmpwi r3, 0
/* 804DAA2C  40 82 00 0C */	bne lbl_804DAA38
/* 804DAA30  38 60 00 00 */	li r3, 0
/* 804DAA34  48 00 00 68 */	b lbl_804DAA9C
lbl_804DAA38:
/* 804DAA38  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 804DAA3C  38 61 00 0C */	addi r3, r1, 0xc
/* 804DAA40  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 804DAA44  38 81 00 08 */	addi r4, r1, 8
/* 804DAA48  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804DAA4C  38 A1 00 18 */	addi r5, r1, 0x18
/* 804DAA50  90 E1 00 18 */	stw r7, 0x18(r1)
/* 804DAA54  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804DAA58  90 01 00 20 */	stw r0, 0x20(r1)
/* 804DAA5C  4B EC AD 05 */	bl mFI_Wpos2BlockNum
/* 804DAA60  2C 03 00 00 */	cmpwi r3, 0
/* 804DAA64  40 82 00 0C */	bne lbl_804DAA70
/* 804DAA68  38 60 00 00 */	li r3, 0
/* 804DAA6C  48 00 00 30 */	b lbl_804DAA9C
lbl_804DAA70:
/* 804DAA70  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804DAA74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804DAA78  7C 03 00 00 */	cmpw r3, r0
/* 804DAA7C  40 82 00 1C */	bne lbl_804DAA98
/* 804DAA80  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804DAA84  80 01 00 08 */	lwz r0, 8(r1)
/* 804DAA88  7C 03 00 00 */	cmpw r3, r0
/* 804DAA8C  40 82 00 0C */	bne lbl_804DAA98
/* 804DAA90  38 60 00 01 */	li r3, 1
/* 804DAA94  48 00 00 08 */	b lbl_804DAA9C
lbl_804DAA98:
/* 804DAA98  38 60 00 00 */	li r3, 0
lbl_804DAA9C:
/* 804DAA9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DAAA0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804DAAA4  7C 08 03 A6 */	mtlr r0
/* 804DAAA8  38 21 00 50 */	addi r1, r1, 0x50
/* 804DAAAC  4E 80 00 20 */	blr 
