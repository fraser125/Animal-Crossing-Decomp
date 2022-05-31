lbl_803A5B78:
/* 803A5B78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A5B7C  7C 08 02 A6 */	mflr r0
/* 803A5B80  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A5B84  39 61 00 30 */	addi r11, r1, 0x30
/* 803A5B88  4B CF 53 4D */	bl func_8009AED4
/* 803A5B8C  7C BD 2B 78 */	mr r29, r5
/* 803A5B90  3C A0 43 30 */	lis r5, 0x4330
/* 803A5B94  1D 1D 02 80 */	mulli r8, r29, 0x280
/* 803A5B98  7C DE 33 78 */	mr r30, r6
/* 803A5B9C  3C E0 80 64 */	lis r7, lit_648@ha /* 0x80641F5C@ha */
/* 803A5BA0  90 A1 00 08 */	stw r5, 8(r1)
/* 803A5BA4  C8 47 1F 5C */	lfd f2, lit_648@l(r7)  /* 0x80641F5C@l */
/* 803A5BA8  3B E0 00 00 */	li r31, 0
/* 803A5BAC  1C 1E 02 80 */	mulli r0, r30, 0x280
/* 803A5BB0  6D 06 80 00 */	xoris r6, r8, 0x8000
/* 803A5BB4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803A5BB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803A5BBC  C8 21 00 08 */	lfd f1, 8(r1)
/* 803A5BC0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803A5BC4  EC 21 10 28 */	fsubs f1, f1, f2
/* 803A5BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5BCC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A5BD0  D0 23 00 00 */	stfs f1, 0(r3)
/* 803A5BD4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A5BD8  D0 04 00 00 */	stfs f0, 0(r4)
/* 803A5BDC  4B FF F0 B5 */	bl mFI_CheckFieldData
/* 803A5BE0  2C 03 00 01 */	cmpwi r3, 1
/* 803A5BE4  40 82 00 14 */	bne lbl_803A5BF8
/* 803A5BE8  7F A3 EB 78 */	mr r3, r29
/* 803A5BEC  7F C4 F3 78 */	mr r4, r30
/* 803A5BF0  4B FF F6 19 */	bl mFI_BlockCheck
/* 803A5BF4  7C 7F 1B 78 */	mr r31, r3
lbl_803A5BF8:
/* 803A5BF8  7F E3 FB 78 */	mr r3, r31
/* 803A5BFC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A5C00  4B CF 53 21 */	bl func_8009AF20
/* 803A5C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A5C08  7C 08 03 A6 */	mtlr r0
/* 803A5C0C  38 21 00 30 */	addi r1, r1, 0x30
/* 803A5C10  4E 80 00 20 */	blr 
