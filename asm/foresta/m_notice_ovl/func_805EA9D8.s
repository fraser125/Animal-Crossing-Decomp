lbl_805EA9D8:
/* 805EA9D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EA9DC  7C 08 02 A6 */	mflr r0
/* 805EA9E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EA9E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805EA9E8  4B AB 04 E9 */	bl func_8009AED0
/* 805EA9EC  7C 7C 1B 78 */	mr r28, r3
/* 805EA9F0  7C BD 2B 78 */	mr r29, r5
/* 805EA9F4  80 A3 00 00 */	lwz r5, 0(r3)
/* 805EA9F8  7C DE 33 78 */	mr r30, r6
/* 805EA9FC  3B E0 00 00 */	li r31, 0
/* 805EAA00  7C 05 20 40 */	cmplw r5, r4
/* 805EAA04  41 80 00 0C */	blt lbl_805EAA10
/* 805EAA08  3B E0 00 03 */	li r31, 3
/* 805EAA0C  48 00 00 6C */	b lbl_805EAA78
lbl_805EAA10:
/* 805EAA10  88 65 00 00 */	lbz r3, 0(r5)
/* 805EAA14  28 03 00 CD */	cmplwi r3, 0xcd
/* 805EAA18  40 82 00 20 */	bne lbl_805EAA38
/* 805EAA1C  38 05 00 01 */	addi r0, r5, 1
/* 805EAA20  3B E0 00 01 */	li r31, 1
/* 805EAA24  90 1C 00 00 */	stw r0, 0(r28)
/* 805EAA28  80 7E 00 00 */	lwz r3, 0(r30)
/* 805EAA2C  38 03 00 01 */	addi r0, r3, 1
/* 805EAA30  90 1E 00 00 */	stw r0, 0(r30)
/* 805EAA34  48 00 00 44 */	b lbl_805EAA78
lbl_805EAA38:
/* 805EAA38  38 80 00 01 */	li r4, 1
/* 805EAA3C  4B DC 4C 61 */	bl mFont_GetCodeWidth
/* 805EAA40  80 1D 00 00 */	lwz r0, 0(r29)
/* 805EAA44  7C 00 1A 14 */	add r0, r0, r3
/* 805EAA48  90 1D 00 00 */	stw r0, 0(r29)
/* 805EAA4C  80 1D 00 00 */	lwz r0, 0(r29)
/* 805EAA50  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805EAA54  40 81 00 0C */	ble lbl_805EAA60
/* 805EAA58  3B E0 00 02 */	li r31, 2
/* 805EAA5C  48 00 00 1C */	b lbl_805EAA78
lbl_805EAA60:
/* 805EAA60  80 7C 00 00 */	lwz r3, 0(r28)
/* 805EAA64  38 03 00 01 */	addi r0, r3, 1
/* 805EAA68  90 1C 00 00 */	stw r0, 0(r28)
/* 805EAA6C  80 7E 00 00 */	lwz r3, 0(r30)
/* 805EAA70  38 03 00 01 */	addi r0, r3, 1
/* 805EAA74  90 1E 00 00 */	stw r0, 0(r30)
lbl_805EAA78:
/* 805EAA78  7F E3 FB 78 */	mr r3, r31
/* 805EAA7C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EAA80  4B AB 04 9D */	bl func_8009AF1C
/* 805EAA84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EAA88  7C 08 03 A6 */	mtlr r0
/* 805EAA8C  38 21 00 20 */	addi r1, r1, 0x20
/* 805EAA90  4E 80 00 20 */	blr 
