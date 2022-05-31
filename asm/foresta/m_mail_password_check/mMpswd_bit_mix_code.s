lbl_803BD9A0:
/* 803BD9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BD9A4  7C 08 02 A6 */	mflr r0
/* 803BD9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BD9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BD9B0  93 C1 00 08 */	stw r30, 8(r1)
/* 803BD9B4  7C 7E 1B 78 */	mr r30, r3
/* 803BD9B8  88 03 00 01 */	lbz r0, 1(r3)
/* 803BD9BC  54 1F 07 3E */	clrlwi r31, r0, 0x1c
/* 803BD9C0  2C 1F 00 0C */	cmpwi r31, 0xc
/* 803BD9C4  40 81 00 20 */	ble lbl_803BD9E4
/* 803BD9C8  4B FF F9 D5 */	bl mMpswd_bit_arrange_reverse
/* 803BD9CC  7F C3 F3 78 */	mr r3, r30
/* 803BD9D0  4B FF F9 9D */	bl mMpswd_bit_reverse
/* 803BD9D4  1C 9F 00 03 */	mulli r4, r31, 3
/* 803BD9D8  7F C3 F3 78 */	mr r3, r30
/* 803BD9DC  4B FF F7 8D */	bl func_803BD168
/* 803BD9E0  48 00 00 54 */	b lbl_803BDA34
lbl_803BD9E4:
/* 803BD9E4  2C 1F 00 08 */	cmpwi r31, 8
/* 803BD9E8  40 81 00 1C */	ble lbl_803BDA04
/* 803BD9EC  4B FF F9 B1 */	bl mMpswd_bit_arrange_reverse
/* 803BD9F0  7C 1F 00 D0 */	neg r0, r31
/* 803BD9F4  7F C3 F3 78 */	mr r3, r30
/* 803BD9F8  1C 80 00 05 */	mulli r4, r0, 5
/* 803BD9FC  4B FF F7 6D */	bl func_803BD168
/* 803BDA00  48 00 00 34 */	b lbl_803BDA34
lbl_803BDA04:
/* 803BDA04  2C 1F 00 04 */	cmpwi r31, 4
/* 803BDA08  40 81 00 1C */	ble lbl_803BDA24
/* 803BDA0C  7C 1F 00 D0 */	neg r0, r31
/* 803BDA10  1C 80 00 05 */	mulli r4, r0, 5
/* 803BDA14  4B FF F7 55 */	bl func_803BD168
/* 803BDA18  7F C3 F3 78 */	mr r3, r30
/* 803BDA1C  4B FF F9 51 */	bl mMpswd_bit_reverse
/* 803BDA20  48 00 00 14 */	b lbl_803BDA34
lbl_803BDA24:
/* 803BDA24  1C 9F 00 03 */	mulli r4, r31, 3
/* 803BDA28  4B FF F7 41 */	bl func_803BD168
/* 803BDA2C  7F C3 F3 78 */	mr r3, r30
/* 803BDA30  4B FF F9 6D */	bl mMpswd_bit_arrange_reverse
lbl_803BDA34:
/* 803BDA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BDA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BDA3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BDA40  7C 08 03 A6 */	mtlr r0
/* 803BDA44  38 21 00 10 */	addi r1, r1, 0x10
/* 803BDA48  4E 80 00 20 */	blr 
