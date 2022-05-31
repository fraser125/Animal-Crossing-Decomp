lbl_8053EDD4:
/* 8053EDD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053EDD8  7C 08 02 A6 */	mflr r0
/* 8053EDDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053EDE0  39 61 00 40 */	addi r11, r1, 0x40
/* 8053EDE4  4B B5 C0 ED */	bl func_8009AED0
/* 8053EDE8  7C 7C 1B 78 */	mr r28, r3
/* 8053EDEC  7C 9D 23 78 */	mr r29, r4
/* 8053EDF0  83 E3 09 2C */	lwz r31, 0x92c(r3)
/* 8053EDF4  3B C0 00 01 */	li r30, 1
/* 8053EDF8  7F E3 FB 78 */	mr r3, r31
/* 8053EDFC  4B FF FF 19 */	bl aNPC_check_live_target
/* 8053EE00  2C 03 00 00 */	cmpwi r3, 0
/* 8053EE04  40 82 00 0C */	bne lbl_8053EE10
/* 8053EE08  3B C0 00 00 */	li r30, 0
/* 8053EE0C  48 00 00 6C */	b lbl_8053EE78
lbl_8053EE10:
/* 8053EE10  38 61 00 1C */	addi r3, r1, 0x1c
/* 8053EE14  38 9F 00 28 */	addi r4, r31, 0x28
/* 8053EE18  4B E7 C0 A5 */	bl xyz_t_move
/* 8053EE1C  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 8053EE20  38 61 00 0C */	addi r3, r1, 0xc
/* 8053EE24  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8053EE28  38 81 00 08 */	addi r4, r1, 8
/* 8053EE2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053EE30  38 A1 00 10 */	addi r5, r1, 0x10
/* 8053EE34  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8053EE38  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8053EE3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8053EE40  4B E6 65 29 */	bl mFI_Wpos2UtNum
/* 8053EE44  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8053EE48  7F 83 E3 78 */	mr r3, r28
/* 8053EE4C  80 C1 00 08 */	lwz r6, 8(r1)
/* 8053EE50  7F A4 EB 78 */	mr r4, r29
/* 8053EE54  38 E0 00 00 */	li r7, 0
/* 8053EE58  48 00 2B 9D */	bl aNPC_route_check
/* 8053EE5C  7F 83 E3 78 */	mr r3, r28
/* 8053EE60  4B FF EC 59 */	bl aNPC_set_mv_angl
/* 8053EE64  7F 83 E3 78 */	mr r3, r28
/* 8053EE68  4B FF FC A9 */	bl aNPC_trace_route
/* 8053EE6C  2C 03 00 00 */	cmpwi r3, 0
/* 8053EE70  40 82 00 08 */	bne lbl_8053EE78
/* 8053EE74  3B C0 00 00 */	li r30, 0
lbl_8053EE78:
/* 8053EE78  7F C3 F3 78 */	mr r3, r30
/* 8053EE7C  39 61 00 40 */	addi r11, r1, 0x40
/* 8053EE80  4B B5 C0 9D */	bl func_8009AF1C
/* 8053EE84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053EE88  7C 08 03 A6 */	mtlr r0
/* 8053EE8C  38 21 00 40 */	addi r1, r1, 0x40
/* 8053EE90  4E 80 00 20 */	blr 
