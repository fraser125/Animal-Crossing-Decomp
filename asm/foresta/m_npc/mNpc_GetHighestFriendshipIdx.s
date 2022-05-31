lbl_803CBFAC:
/* 803CBFAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CBFB0  7C 08 02 A6 */	mflr r0
/* 803CBFB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CBFB8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CBFBC  4B CC EF 11 */	bl func_8009AECC
/* 803CBFC0  7C 7B 1B 78 */	mr r27, r3
/* 803CBFC4  7C 9C 23 78 */	mr r28, r4
/* 803CBFC8  3B E0 00 00 */	li r31, 0
/* 803CBFCC  3B C0 FF FF */	li r30, -1
/* 803CBFD0  3B A0 00 00 */	li r29, 0
/* 803CBFD4  48 00 00 38 */	b lbl_803CC00C
lbl_803CBFD8:
/* 803CBFD8  7F 63 DB 78 */	mr r3, r27
/* 803CBFDC  4B FF F8 95 */	bl mNpc_CheckFreeAnimalMemory
/* 803CBFE0  2C 03 00 00 */	cmpwi r3, 0
/* 803CBFE4  40 82 00 20 */	bne lbl_803CC004
/* 803CBFE8  88 9B 00 30 */	lbz r4, 0x30(r27)
/* 803CBFEC  7F E3 07 74 */	extsb r3, r31
/* 803CBFF0  7C 80 07 74 */	extsb r0, r4
/* 803CBFF4  7C 03 00 00 */	cmpw r3, r0
/* 803CBFF8  41 81 00 0C */	bgt lbl_803CC004
/* 803CBFFC  7C 9F 23 78 */	mr r31, r4
/* 803CC000  7F BE EB 78 */	mr r30, r29
lbl_803CC004:
/* 803CC004  3B 7B 01 38 */	addi r27, r27, 0x138
/* 803CC008  3B BD 00 01 */	addi r29, r29, 1
lbl_803CC00C:
/* 803CC00C  7C 1D E0 00 */	cmpw r29, r28
/* 803CC010  41 80 FF C8 */	blt lbl_803CBFD8
/* 803CC014  7F C3 F3 78 */	mr r3, r30
/* 803CC018  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC01C  4B CC EE FD */	bl func_8009AF18
/* 803CC020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC024  7C 08 03 A6 */	mtlr r0
/* 803CC028  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC02C  4E 80 00 20 */	blr 
