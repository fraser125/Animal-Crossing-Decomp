lbl_803A8ED8:
/* 803A8ED8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A8EDC  7C 08 02 A6 */	mflr r0
/* 803A8EE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A8EE4  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8EE8  4B CF 1F E9 */	bl func_8009AED0
/* 803A8EEC  7C 9D 23 78 */	mr r29, r4
/* 803A8EF0  7C 7C 1B 78 */	mr r28, r3
/* 803A8EF4  7C BE 2B 78 */	mr r30, r5
/* 803A8EF8  38 61 00 14 */	addi r3, r1, 0x14
/* 803A8EFC  7F 85 E3 78 */	mr r5, r28
/* 803A8F00  7F A6 EB 78 */	mr r6, r29
/* 803A8F04  38 81 00 10 */	addi r4, r1, 0x10
/* 803A8F08  3B E0 00 00 */	li r31, 0
/* 803A8F0C  4B FF C9 65 */	bl mFI_UtNum2BlockNum
/* 803A8F10  2C 03 00 01 */	cmpwi r3, 1
/* 803A8F14  40 82 00 3C */	bne lbl_803A8F50
/* 803A8F18  7F 85 E3 78 */	mr r5, r28
/* 803A8F1C  7F A6 EB 78 */	mr r6, r29
/* 803A8F20  38 61 00 0C */	addi r3, r1, 0xc
/* 803A8F24  38 81 00 08 */	addi r4, r1, 8
/* 803A8F28  4B FF C9 A1 */	bl mFI_GetUtNumInBK
/* 803A8F2C  2C 03 00 01 */	cmpwi r3, 1
/* 803A8F30  40 82 00 20 */	bne lbl_803A8F50
/* 803A8F34  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803A8F38  7F C7 F3 78 */	mr r7, r30
/* 803A8F3C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A8F40  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803A8F44  80 C1 00 08 */	lwz r6, 8(r1)
/* 803A8F48  4B FF FF 0D */	bl mFI_BkUtNum2SetDeposit
/* 803A8F4C  7C 7F 1B 78 */	mr r31, r3
lbl_803A8F50:
/* 803A8F50  7F E3 FB 78 */	mr r3, r31
/* 803A8F54  39 61 00 30 */	addi r11, r1, 0x30
/* 803A8F58  4B CF 1F C5 */	bl func_8009AF1C
/* 803A8F5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A8F60  7C 08 03 A6 */	mtlr r0
/* 803A8F64  38 21 00 30 */	addi r1, r1, 0x30
/* 803A8F68  4E 80 00 20 */	blr 
