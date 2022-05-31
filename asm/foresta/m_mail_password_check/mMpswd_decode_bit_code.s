lbl_803BDA4C:
/* 803BDA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BDA50  7C 08 02 A6 */	mflr r0
/* 803BDA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BDA58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BDA5C  93 C1 00 08 */	stw r30, 8(r1)
/* 803BDA60  7C 7E 1B 78 */	mr r30, r3
/* 803BDA64  88 03 00 01 */	lbz r0, 1(r3)
/* 803BDA68  54 1F 07 3E */	clrlwi r31, r0, 0x1c
/* 803BDA6C  2C 1F 00 0C */	cmpwi r31, 0xc
/* 803BDA70  40 81 00 24 */	ble lbl_803BDA94
/* 803BDA74  7C 1F 00 D0 */	neg r0, r31
/* 803BDA78  1C 80 00 03 */	mulli r4, r0, 3
/* 803BDA7C  4B FF F6 ED */	bl func_803BD168
/* 803BDA80  7F C3 F3 78 */	mr r3, r30
/* 803BDA84  4B FF F8 E9 */	bl mMpswd_bit_reverse
/* 803BDA88  7F C3 F3 78 */	mr r3, r30
/* 803BDA8C  4B FF F9 11 */	bl mMpswd_bit_arrange_reverse
/* 803BDA90  48 00 00 50 */	b lbl_803BDAE0
lbl_803BDA94:
/* 803BDA94  2C 1F 00 08 */	cmpwi r31, 8
/* 803BDA98  40 81 00 18 */	ble lbl_803BDAB0
/* 803BDA9C  1C 9F 00 05 */	mulli r4, r31, 5
/* 803BDAA0  4B FF F6 C9 */	bl func_803BD168
/* 803BDAA4  7F C3 F3 78 */	mr r3, r30
/* 803BDAA8  4B FF F8 F5 */	bl mMpswd_bit_arrange_reverse
/* 803BDAAC  48 00 00 34 */	b lbl_803BDAE0
lbl_803BDAB0:
/* 803BDAB0  2C 1F 00 04 */	cmpwi r31, 4
/* 803BDAB4  40 81 00 18 */	ble lbl_803BDACC
/* 803BDAB8  4B FF F8 B5 */	bl mMpswd_bit_reverse
/* 803BDABC  1C 9F 00 05 */	mulli r4, r31, 5
/* 803BDAC0  7F C3 F3 78 */	mr r3, r30
/* 803BDAC4  4B FF F6 A5 */	bl func_803BD168
/* 803BDAC8  48 00 00 18 */	b lbl_803BDAE0
lbl_803BDACC:
/* 803BDACC  4B FF F8 D1 */	bl mMpswd_bit_arrange_reverse
/* 803BDAD0  7C 1F 00 D0 */	neg r0, r31
/* 803BDAD4  7F C3 F3 78 */	mr r3, r30
/* 803BDAD8  1C 80 00 03 */	mulli r4, r0, 3
/* 803BDADC  4B FF F6 8D */	bl func_803BD168
lbl_803BDAE0:
/* 803BDAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BDAE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BDAE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BDAEC  7C 08 03 A6 */	mtlr r0
/* 803BDAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BDAF4  4E 80 00 20 */	blr 
