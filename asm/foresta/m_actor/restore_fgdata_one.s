lbl_80375A0C:
/* 80375A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80375A10  7C 08 02 A6 */	mflr r0
/* 80375A14  3C A0 80 65 */	lis r5, restore_flag@ha /* 0x8064D504@ha */
/* 80375A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80375A1C  38 A5 D5 04 */	addi r5, r5, restore_flag@l /* 0x8064D504@l */
/* 80375A20  88 03 00 02 */	lbz r0, 2(r3)
/* 80375A24  54 00 10 3A */	slwi r0, r0, 2
/* 80375A28  7C 05 00 2E */	lwzx r0, r5, r0
/* 80375A2C  2C 00 00 01 */	cmpwi r0, 1
/* 80375A30  40 82 00 0C */	bne lbl_80375A3C
/* 80375A34  4B FF FF 05 */	bl restore_fgdata
/* 80375A38  48 00 00 14 */	b lbl_80375A4C
lbl_80375A3C:
/* 80375A3C  88 03 00 03 */	lbz r0, 3(r3)
/* 80375A40  28 00 00 01 */	cmplwi r0, 1
/* 80375A44  40 82 00 08 */	bne lbl_80375A4C
/* 80375A48  4B FF FE F1 */	bl restore_fgdata
lbl_80375A4C:
/* 80375A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80375A50  7C 08 03 A6 */	mtlr r0
/* 80375A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80375A58  4E 80 00 20 */	blr 
