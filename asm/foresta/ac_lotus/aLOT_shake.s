lbl_805B2BD8:
/* 805B2BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2BDC  7C 08 02 A6 */	mflr r0
/* 805B2BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2BE8  7C 7F 1B 78 */	mr r31, r3
/* 805B2BEC  4B E2 B3 31 */	bl mPlib_Check_UKI_COMEBACK_STATUS
/* 805B2BF0  2C 03 00 00 */	cmpwi r3, 0
/* 805B2BF4  40 82 00 40 */	bne lbl_805B2C34
/* 805B2BF8  3C C0 80 65 */	lis r6, lit_479@ha /* 0x8064A8A8@ha */
/* 805B2BFC  3C A0 80 65 */	lis r5, lit_480@ha /* 0x8064A8AC@ha */
/* 805B2C00  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064A8B0@ha */
/* 805B2C04  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064A8B4@ha */
/* 805B2C08  38 E6 A8 A8 */	addi r7, r6, lit_479@l /* 0x8064A8A8@l */
/* 805B2C0C  38 C5 A8 AC */	addi r6, r5, lit_480@l /* 0x8064A8AC@l */
/* 805B2C10  38 A4 A8 B0 */	addi r5, r4, lit_481@l /* 0x8064A8B0@l */
/* 805B2C14  38 83 A8 B4 */	addi r4, r3, lit_482@l /* 0x8064A8B4@l */
/* 805B2C18  C0 27 00 00 */	lfs f1, 0(r7)
/* 805B2C1C  38 7F 01 84 */	addi r3, r31, 0x184
/* 805B2C20  C0 46 00 00 */	lfs f2, 0(r6)
/* 805B2C24  C0 65 00 00 */	lfs f3, 0(r5)
/* 805B2C28  C0 84 00 00 */	lfs f4, 0(r4)
/* 805B2C2C  4B E0 85 85 */	bl add_calc
/* 805B2C30  48 00 00 10 */	b lbl_805B2C40
lbl_805B2C34:
/* 805B2C34  7F E3 FB 78 */	mr r3, r31
/* 805B2C38  38 80 00 01 */	li r4, 1
/* 805B2C3C  48 00 00 19 */	bl aLOT_setup_action
lbl_805B2C40:
/* 805B2C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B2C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B2C48  7C 08 03 A6 */	mtlr r0
/* 805B2C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B2C50  4E 80 00 20 */	blr 
