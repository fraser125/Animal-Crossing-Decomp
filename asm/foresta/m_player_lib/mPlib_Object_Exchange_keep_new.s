lbl_803D8F14:
/* 803D8F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D8F18  7C 08 02 A6 */	mflr r0
/* 803D8F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D8F20  39 61 00 20 */	addi r11, r1, 0x20
/* 803D8F24  4B CC 1F AD */	bl func_8009AED0
/* 803D8F28  80 03 1A 38 */	lwz r0, 0x1a38(r3)
/* 803D8F2C  3B E3 01 10 */	addi r31, r3, 0x110
/* 803D8F30  7C 9C 23 78 */	mr r28, r4
/* 803D8F34  7C DD 33 78 */	mr r29, r6
/* 803D8F38  1C 00 00 5C */	mulli r0, r0, 0x5c
/* 803D8F3C  28 05 00 00 */	cmplwi r5, 0
/* 803D8F40  7F DF 02 14 */	add r30, r31, r0
/* 803D8F44  B3 9E 00 00 */	sth r28, 0(r30)
/* 803D8F48  80 03 1A 44 */	lwz r0, 0x1a44(r3)
/* 803D8F4C  90 1E 00 08 */	stw r0, 8(r30)
/* 803D8F50  80 03 1A 44 */	lwz r0, 0x1a44(r3)
/* 803D8F54  90 1E 00 04 */	stw r0, 4(r30)
/* 803D8F58  93 BE 00 10 */	stw r29, 0x10(r30)
/* 803D8F5C  41 82 00 3C */	beq lbl_803D8F98
/* 803D8F60  2C 07 00 00 */	cmpwi r7, 0
/* 803D8F64  41 82 00 18 */	beq lbl_803D8F7C
/* 803D8F68  80 9E 00 08 */	lwz r4, 8(r30)
/* 803D8F6C  7C A3 2B 78 */	mr r3, r5
/* 803D8F70  7F A5 EB 78 */	mr r5, r29
/* 803D8F74  4B C2 DD 01 */	bl _JW_GetResourceAram
/* 803D8F78  48 00 00 14 */	b lbl_803D8F8C
lbl_803D8F7C:
/* 803D8F7C  80 9E 00 08 */	lwz r4, 8(r30)
/* 803D8F80  7C A3 2B 78 */	mr r3, r5
/* 803D8F84  7F A5 EB 78 */	mr r5, r29
/* 803D8F88  4B C8 40 95 */	bl func_8005D01C
lbl_803D8F8C:
/* 803D8F8C  80 7E 00 04 */	lwz r3, 4(r30)
/* 803D8F90  7F A4 EB 78 */	mr r4, r29
/* 803D8F94  4B CA 0C 89 */	bl DCStoreRangeNoSync
lbl_803D8F98:
/* 803D8F98  80 1F 19 28 */	lwz r0, 0x1928(r31)
/* 803D8F9C  2C 00 00 45 */	cmpwi r0, 0x45
/* 803D8FA0  40 80 00 24 */	bge lbl_803D8FC4
/* 803D8FA4  80 7F 19 34 */	lwz r3, 0x1934(r31)
/* 803D8FA8  38 1D 00 1F */	addi r0, r29, 0x1f
/* 803D8FAC  7C 03 02 14 */	add r0, r3, r0
/* 803D8FB0  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 803D8FB4  90 1F 19 34 */	stw r0, 0x1934(r31)
/* 803D8FB8  80 7F 19 28 */	lwz r3, 0x1928(r31)
/* 803D8FBC  38 03 00 01 */	addi r0, r3, 1
/* 803D8FC0  90 1F 19 28 */	stw r0, 0x1928(r31)
lbl_803D8FC4:
/* 803D8FC4  7F E3 FB 78 */	mr r3, r31
/* 803D8FC8  7F 84 E3 78 */	mr r4, r28
/* 803D8FCC  48 01 77 61 */	bl mSc_bank_regist_check
/* 803D8FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D8FD4  4B CC 1F 49 */	bl func_8009AF1C
/* 803D8FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D8FDC  7C 08 03 A6 */	mtlr r0
/* 803D8FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D8FE4  4E 80 00 20 */	blr 
