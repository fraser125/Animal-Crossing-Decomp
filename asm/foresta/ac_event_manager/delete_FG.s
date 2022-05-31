lbl_8041BAF4:
/* 8041BAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BAF8  7C 08 02 A6 */	mflr r0
/* 8041BAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BB04  7C 9F 23 78 */	mr r31, r4
/* 8041BB08  93 C1 00 08 */	stw r30, 8(r1)
/* 8041BB0C  7C 7E 1B 78 */	mr r30, r3
/* 8041BB10  4B F8 91 81 */	bl mFI_CheckFieldData
/* 8041BB14  2C 03 00 01 */	cmpwi r3, 1
/* 8041BB18  41 82 00 0C */	beq lbl_8041BB24
/* 8041BB1C  38 60 00 00 */	li r3, 0
/* 8041BB20  48 00 00 64 */	b lbl_8041BB84
lbl_8041BB24:
/* 8041BB24  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 8041BB28  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041BB2C  7F E4 FB 78 */	mr r4, r31
/* 8041BB30  4B F8 27 7D */	bl mEv_get_common_place
/* 8041BB34  7C 67 1B 79 */	or. r7, r3, r3
/* 8041BB38  41 82 00 48 */	beq lbl_8041BB80
/* 8041BB3C  A0 67 00 10 */	lhz r3, 0x10(r7)
/* 8041BB40  39 00 00 01 */	li r8, 1
/* 8041BB44  80 87 00 04 */	lwz r4, 4(r7)
/* 8041BB48  80 A7 00 00 */	lwz r5, 0(r7)
/* 8041BB4C  80 C7 00 0C */	lwz r6, 0xc(r7)
/* 8041BB50  80 E7 00 08 */	lwz r7, 8(r7)
/* 8041BB54  4B F8 E1 49 */	bl mFI_SetFGStructure_common
/* 8041BB58  2C 03 00 00 */	cmpwi r3, 0
/* 8041BB5C  40 82 00 18 */	bne lbl_8041BB74
/* 8041BB60  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041BB64  38 80 00 20 */	li r4, 0x20
/* 8041BB68  4B F8 1E 69 */	bl mEv_set_status
/* 8041BB6C  38 60 00 00 */	li r3, 0
/* 8041BB70  48 00 00 14 */	b lbl_8041BB84
lbl_8041BB74:
/* 8041BB74  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041BB78  7F E4 FB 78 */	mr r4, r31
/* 8041BB7C  4B F8 27 A1 */	bl mEv_clear_common_place
lbl_8041BB80:
/* 8041BB80  38 60 00 01 */	li r3, 1
lbl_8041BB84:
/* 8041BB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BB8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041BB90  7C 08 03 A6 */	mtlr r0
/* 8041BB94  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BB98  4E 80 00 20 */	blr 
