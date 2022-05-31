lbl_8056C628:
/* 8056C628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C62C  7C 08 02 A6 */	mflr r0
/* 8056C630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056C638  3B E0 00 00 */	li r31, 0
/* 8056C63C  93 C1 00 08 */	stw r30, 8(r1)
/* 8056C640  7C 7E 1B 78 */	mr r30, r3
/* 8056C644  4B E7 28 21 */	bl mPO_get_keep_mail_sum
/* 8056C648  2C 03 00 05 */	cmpwi r3, 5
/* 8056C64C  41 80 00 08 */	blt lbl_8056C654
/* 8056C650  63 FF 00 01 */	ori r31, r31, 1
lbl_8056C654:
/* 8056C654  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056C658  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8056C65C  3C 63 00 02 */	addis r3, r3, 2
/* 8056C660  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8056C664  80 03 00 90 */	lwz r0, 0x90(r3)
/* 8056C668  28 00 00 00 */	cmplwi r0, 0
/* 8056C66C  41 82 00 1C */	beq lbl_8056C688
/* 8056C670  4B E2 E5 C5 */	bl mEv_CheckFirstJob
/* 8056C674  2C 03 00 00 */	cmpwi r3, 0
/* 8056C678  40 82 00 20 */	bne lbl_8056C698
/* 8056C67C  63 FF 00 02 */	ori r31, r31, 2
/* 8056C680  4B FF FE B5 */	bl aPG_set_loan_balance
/* 8056C684  48 00 00 14 */	b lbl_8056C698
lbl_8056C688:
/* 8056C688  88 1E 09 A7 */	lbz r0, 0x9a7(r30)
/* 8056C68C  28 00 00 01 */	cmplwi r0, 1
/* 8056C690  40 82 00 08 */	bne lbl_8056C698
/* 8056C694  63 FF 00 04 */	ori r31, r31, 4
lbl_8056C698:
/* 8056C698  9B FE 09 A4 */	stb r31, 0x9a4(r30)
/* 8056C69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056C6A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056C6A8  7C 08 03 A6 */	mtlr r0
/* 8056C6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C6B0  4E 80 00 20 */	blr 
