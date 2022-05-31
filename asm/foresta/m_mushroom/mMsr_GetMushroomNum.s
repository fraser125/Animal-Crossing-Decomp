lbl_803C8788:
/* 803C8788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C878C  7C 08 02 A6 */	mflr r0
/* 803C8790  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C8794  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803C8798  28 00 00 01 */	cmplwi r0, 1
/* 803C879C  7C 65 1B 78 */	mr r5, r3
/* 803C87A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C87A4  3B E0 00 00 */	li r31, 0
/* 803C87A8  93 C1 00 08 */	stw r30, 8(r1)
/* 803C87AC  7C 9E 23 78 */	mr r30, r4
/* 803C87B0  41 82 00 1C */	beq lbl_803C87CC
/* 803C87B4  7F C3 F3 78 */	mr r3, r30
/* 803C87B8  7C A4 2B 78 */	mr r4, r5
/* 803C87BC  38 A0 00 70 */	li r5, 0x70
/* 803C87C0  48 03 E0 79 */	bl lbRTC_IsEqualTime
/* 803C87C4  2C 03 00 00 */	cmpwi r3, 0
/* 803C87C8  40 82 00 3C */	bne lbl_803C8804
lbl_803C87CC:
/* 803C87CC  88 1E 00 02 */	lbz r0, 2(r30)
/* 803C87D0  28 00 00 08 */	cmplwi r0, 8
/* 803C87D4  40 82 00 18 */	bne lbl_803C87EC
/* 803C87D8  88 7E 00 01 */	lbz r3, 1(r30)
/* 803C87DC  38 00 00 0F */	li r0, 0xf
/* 803C87E0  7C 03 03 D6 */	divw r0, r3, r0
/* 803C87E4  23 E0 00 05 */	subfic r31, r0, 5
/* 803C87E8  48 00 00 1C */	b lbl_803C8804
lbl_803C87EC:
/* 803C87EC  28 00 00 09 */	cmplwi r0, 9
/* 803C87F0  40 82 00 14 */	bne lbl_803C8804
/* 803C87F4  88 1E 00 01 */	lbz r0, 1(r30)
/* 803C87F8  28 00 00 0F */	cmplwi r0, 0xf
/* 803C87FC  40 80 00 08 */	bge lbl_803C8804
/* 803C8800  3B E0 00 01 */	li r31, 1
lbl_803C8804:
/* 803C8804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C8808  7F E3 FB 78 */	mr r3, r31
/* 803C880C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C8810  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C8814  7C 08 03 A6 */	mtlr r0
/* 803C8818  38 21 00 10 */	addi r1, r1, 0x10
/* 803C881C  4E 80 00 20 */	blr 
