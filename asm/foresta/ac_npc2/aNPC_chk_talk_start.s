lbl_805411DC:
/* 805411DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805411E0  7C 08 02 A6 */	mflr r0
/* 805411E4  38 80 00 00 */	li r4, 0
/* 805411E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805411EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805411F0  7C 7F 1B 78 */	mr r31, r3
/* 805411F4  80 03 08 F0 */	lwz r0, 0x8f0(r3)
/* 805411F8  28 00 00 00 */	cmplwi r0, 0
/* 805411FC  41 82 00 58 */	beq lbl_80541254
/* 80541200  88 1F 08 33 */	lbz r0, 0x833(r31)
/* 80541204  2C 00 00 02 */	cmpwi r0, 2
/* 80541208  41 82 00 34 */	beq lbl_8054123C
/* 8054120C  40 80 00 48 */	bge lbl_80541254
/* 80541210  2C 00 00 01 */	cmpwi r0, 1
/* 80541214  40 80 00 08 */	bge lbl_8054121C
/* 80541218  48 00 00 3C */	b lbl_80541254
lbl_8054121C:
/* 8054121C  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 80541220  88 BF 09 71 */	lbz r5, 0x971(r31)
/* 80541224  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80541228  38 C0 00 00 */	li r6, 0
/* 8054122C  38 80 00 04 */	li r4, 4
/* 80541230  4B FF E1 71 */	bl aNPC_set_request_act
/* 80541234  38 80 00 01 */	li r4, 1
/* 80541238  48 00 00 1C */	b lbl_80541254
lbl_8054123C:
/* 8054123C  4B FF B4 05 */	bl aNPC_chk_right_hand
/* 80541240  2C 03 00 01 */	cmpwi r3, 1
/* 80541244  40 82 00 0C */	bne lbl_80541250
/* 80541248  7F E3 FB 78 */	mr r3, r31
/* 8054124C  4B FF B4 A9 */	bl aNPC_chk_left_hand
lbl_80541250:
/* 80541250  38 80 00 01 */	li r4, 1
lbl_80541254:
/* 80541254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541258  7C 83 23 78 */	mr r3, r4
/* 8054125C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80541260  7C 08 03 A6 */	mtlr r0
/* 80541264  38 21 00 10 */	addi r1, r1, 0x10
/* 80541268  4E 80 00 20 */	blr 