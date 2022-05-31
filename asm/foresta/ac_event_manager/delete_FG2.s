lbl_8041BB9C:
/* 8041BB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BBA0  7C 08 02 A6 */	mflr r0
/* 8041BBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BBAC  7C 9F 23 78 */	mr r31, r4
/* 8041BBB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8041BBB4  7C 7E 1B 78 */	mr r30, r3
/* 8041BBB8  4B F8 90 D9 */	bl mFI_CheckFieldData
/* 8041BBBC  2C 03 00 01 */	cmpwi r3, 1
/* 8041BBC0  41 82 00 0C */	beq lbl_8041BBCC
/* 8041BBC4  38 60 00 00 */	li r3, 0
/* 8041BBC8  48 00 00 48 */	b lbl_8041BC10
lbl_8041BBCC:
/* 8041BBCC  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 8041BBD0  7F C3 F3 78 */	mr r3, r30
/* 8041BBD4  7F E4 FB 78 */	mr r4, r31
/* 8041BBD8  4B F8 26 D5 */	bl mEv_get_common_place
/* 8041BBDC  7C 67 1B 79 */	or. r7, r3, r3
/* 8041BBE0  41 82 00 2C */	beq lbl_8041BC0C
/* 8041BBE4  A0 67 00 10 */	lhz r3, 0x10(r7)
/* 8041BBE8  39 00 00 01 */	li r8, 1
/* 8041BBEC  80 87 00 04 */	lwz r4, 4(r7)
/* 8041BBF0  80 A7 00 00 */	lwz r5, 0(r7)
/* 8041BBF4  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 8041BBF8  80 E7 00 08 */	lwz r7, 8(r7)
/* 8041BBFC  4B F8 E0 A1 */	bl mFI_SetFGStructure_common
/* 8041BC00  7F C3 F3 78 */	mr r3, r30
/* 8041BC04  7F E4 FB 78 */	mr r4, r31
/* 8041BC08  4B F8 27 15 */	bl mEv_clear_common_place
lbl_8041BC0C:
/* 8041BC0C  38 60 00 01 */	li r3, 1
lbl_8041BC10:
/* 8041BC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BC14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BC18  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041BC1C  7C 08 03 A6 */	mtlr r0
/* 8041BC20  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BC24  4E 80 00 20 */	blr 
