lbl_805B2B20:
/* 805B2B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2B24  7C 08 02 A6 */	mflr r0
/* 805B2B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2B30  7C 7F 1B 78 */	mr r31, r3
/* 805B2B34  4B E2 B3 E9 */	bl mPlib_Check_UKI_COMEBACK_STATUS
/* 805B2B38  2C 03 00 00 */	cmpwi r3, 0
/* 805B2B3C  40 82 00 50 */	bne lbl_805B2B8C
/* 805B2B40  3C 60 81 20 */	lis r3, pipeinfo@ha /* 0x811FA080@ha */
/* 805B2B44  38 63 A0 80 */	addi r3, r3, pipeinfo@l /* 0x811FA080@l */
/* 805B2B48  88 03 00 08 */	lbz r0, 8(r3)
/* 805B2B4C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805B2B50  41 82 00 3C */	beq lbl_805B2B8C
/* 805B2B54  80 63 00 04 */	lwz r3, 4(r3)
/* 805B2B58  28 03 00 00 */	cmplwi r3, 0
/* 805B2B5C  41 82 00 30 */	beq lbl_805B2B8C
/* 805B2B60  A8 03 00 00 */	lha r0, 0(r3)
/* 805B2B64  2C 00 00 6F */	cmpwi r0, 0x6f
/* 805B2B68  40 82 00 24 */	bne lbl_805B2B8C
/* 805B2B6C  3C 80 80 65 */	lis r4, data_8064A8A4@ha /* 0x8064A8A4@ha */
/* 805B2B70  7F E3 FB 78 */	mr r3, r31
/* 805B2B74  38 A4 A8 A4 */	addi r5, r4, data_8064A8A4@l /* 0x8064A8A4@l */
/* 805B2B78  38 80 00 02 */	li r4, 2
/* 805B2B7C  C0 05 00 00 */	lfs f0, 0(r5)
/* 805B2B80  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 805B2B84  48 00 00 D1 */	bl aLOT_setup_action
/* 805B2B88  48 00 00 3C */	b lbl_805B2BC4
lbl_805B2B8C:
/* 805B2B8C  3C C0 80 65 */	lis r6, lit_479@ha /* 0x8064A8A8@ha */
/* 805B2B90  3C A0 80 65 */	lis r5, lit_480@ha /* 0x8064A8AC@ha */
/* 805B2B94  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064A8B0@ha */
/* 805B2B98  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064A8B4@ha */
/* 805B2B9C  38 E6 A8 A8 */	addi r7, r6, lit_479@l /* 0x8064A8A8@l */
/* 805B2BA0  38 C5 A8 AC */	addi r6, r5, lit_480@l /* 0x8064A8AC@l */
/* 805B2BA4  38 A4 A8 B0 */	addi r5, r4, lit_481@l /* 0x8064A8B0@l */
/* 805B2BA8  38 83 A8 B4 */	addi r4, r3, lit_482@l /* 0x8064A8B4@l */
/* 805B2BAC  C0 27 00 00 */	lfs f1, 0(r7)
/* 805B2BB0  38 7F 01 84 */	addi r3, r31, 0x184
/* 805B2BB4  C0 46 00 00 */	lfs f2, 0(r6)
/* 805B2BB8  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B2BBC  C0 84 00 00 */	lfs f4, 0(r4)
/* 805B2BC0  4B E0 85 F1 */	bl add_calc
lbl_805B2BC4:
/* 805B2BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2BCC  7C 08 03 A6 */	mtlr r0
/* 805B2BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2BD4  4E 80 00 20 */	blr 
