lbl_803D7978:
/* 803D7978  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D797C  7C 08 02 A6 */	mflr r0
/* 803D7980  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D7984  39 61 00 20 */	addi r11, r1, 0x20
/* 803D7988  4B CC 35 45 */	bl func_8009AECC
/* 803D798C  7C BD 2B 79 */	or. r29, r5, r5
/* 803D7990  7C 7B 1B 78 */	mr r27, r3
/* 803D7994  7C 9C 23 78 */	mr r28, r4
/* 803D7998  3B E0 FF FF */	li r31, -1
/* 803D799C  41 82 00 48 */	beq lbl_803D79E4
/* 803D79A0  7F A3 EB 78 */	mr r3, r29
/* 803D79A4  4B FF 3A 39 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D79A8  2C 03 00 00 */	cmpwi r3, 0
/* 803D79AC  40 82 00 38 */	bne lbl_803D79E4
/* 803D79B0  3B C0 00 00 */	li r30, 0
/* 803D79B4  48 00 00 28 */	b lbl_803D79DC
lbl_803D79B8:
/* 803D79B8  7F A3 EB 78 */	mr r3, r29
/* 803D79BC  7F 64 DB 78 */	mr r4, r27
/* 803D79C0  4B FF 3A B1 */	bl mNpc_CheckCmpAnimalPersonalID
/* 803D79C4  2C 03 00 01 */	cmpwi r3, 1
/* 803D79C8  40 82 00 0C */	bne lbl_803D79D4
/* 803D79CC  7F DF F3 78 */	mr r31, r30
/* 803D79D0  48 00 00 14 */	b lbl_803D79E4
lbl_803D79D4:
/* 803D79D4  3B 7B 00 1C */	addi r27, r27, 0x1c
/* 803D79D8  3B DE 00 01 */	addi r30, r30, 1
lbl_803D79DC:
/* 803D79DC  7C 1E E0 00 */	cmpw r30, r28
/* 803D79E0  41 80 FF D8 */	blt lbl_803D79B8
lbl_803D79E4:
/* 803D79E4  7F E3 FB 78 */	mr r3, r31
/* 803D79E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803D79EC  4B CC 35 2D */	bl func_8009AF18
/* 803D79F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D79F4  7C 08 03 A6 */	mtlr r0
/* 803D79F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D79FC  4E 80 00 20 */	blr 
