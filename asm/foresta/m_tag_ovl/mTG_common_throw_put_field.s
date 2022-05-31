lbl_805F2E84:
/* 805F2E84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F2E88  7C 08 02 A6 */	mflr r0
/* 805F2E8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F2E90  39 61 00 30 */	addi r11, r1, 0x30
/* 805F2E94  4B AA 80 3D */	bl func_8009AED0
/* 805F2E98  7C 9D 23 78 */	mr r29, r4
/* 805F2E9C  7C 7C 1B 78 */	mr r28, r3
/* 805F2EA0  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 805F2EA4  7C A7 2B 78 */	mr r7, r5
/* 805F2EA8  28 00 25 1E */	cmplwi r0, 0x251e
/* 805F2EAC  7C DE 33 78 */	mr r30, r6
/* 805F2EB0  3B E0 00 00 */	li r31, 0
/* 805F2EB4  40 82 00 14 */	bne lbl_805F2EC8
/* 805F2EB8  7C E4 3B 78 */	mr r4, r7
/* 805F2EBC  4B EA EE 0D */	bl aSIGN_set_white_sign
/* 805F2EC0  7C 7F 1B 78 */	mr r31, r3
/* 805F2EC4  48 00 00 78 */	b lbl_805F2F3C
lbl_805F2EC8:
/* 805F2EC8  80 C7 00 00 */	lwz r6, 0(r7)
/* 805F2ECC  38 61 00 0C */	addi r3, r1, 0xc
/* 805F2ED0  80 07 00 04 */	lwz r0, 4(r7)
/* 805F2ED4  38 81 00 08 */	addi r4, r1, 8
/* 805F2ED8  38 A1 00 10 */	addi r5, r1, 0x10
/* 805F2EDC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805F2EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F2EE4  80 07 00 08 */	lwz r0, 8(r7)
/* 805F2EE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F2EEC  4B DB 24 7D */	bl mFI_Wpos2UtNum
/* 805F2EF0  2C 03 00 00 */	cmpwi r3, 0
/* 805F2EF4  41 82 00 48 */	beq lbl_805F2F3C
/* 805F2EF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F2EFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F2F00  3C 63 00 02 */	addis r3, r3, 2
/* 805F2F04  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 805F2F08  28 03 00 00 */	cmplwi r3, 0
/* 805F2F0C  41 82 00 30 */	beq lbl_805F2F3C
/* 805F2F10  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 805F2F14  28 0C 00 00 */	cmplwi r12, 0
/* 805F2F18  41 82 00 24 */	beq lbl_805F2F3C
/* 805F2F1C  7F 83 E3 78 */	mr r3, r28
/* 805F2F20  7F A4 EB 78 */	mr r4, r29
/* 805F2F24  7F C7 F3 78 */	mr r7, r30
/* 805F2F28  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805F2F2C  80 C1 00 08 */	lwz r6, 8(r1)
/* 805F2F30  7D 89 03 A6 */	mtctr r12
/* 805F2F34  4E 80 04 21 */	bctrl 
/* 805F2F38  7C 7F 1B 78 */	mr r31, r3
lbl_805F2F3C:
/* 805F2F3C  7F E3 FB 78 */	mr r3, r31
/* 805F2F40  39 61 00 30 */	addi r11, r1, 0x30
/* 805F2F44  4B AA 7F D9 */	bl func_8009AF1C
/* 805F2F48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F2F4C  7C 08 03 A6 */	mtlr r0
/* 805F2F50  38 21 00 30 */	addi r1, r1, 0x30
/* 805F2F54  4E 80 00 20 */	blr 
