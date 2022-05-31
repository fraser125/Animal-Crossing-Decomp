lbl_8053E37C:
/* 8053E37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E380  7C 08 02 A6 */	mflr r0
/* 8053E384  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E388  80 04 07 58 */	lwz r0, 0x758(r4)
/* 8053E38C  28 00 00 00 */	cmplwi r0, 0
/* 8053E390  41 82 00 0C */	beq lbl_8053E39C
/* 8053E394  48 00 04 F9 */	bl aNPC_set_feel_effect
/* 8053E398  48 00 00 08 */	b lbl_8053E3A0
lbl_8053E39C:
/* 8053E39C  48 00 06 75 */	bl aNPC_set_other_effect
lbl_8053E3A0:
/* 8053E3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E3A4  7C 08 03 A6 */	mtlr r0
/* 8053E3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E3AC  4E 80 00 20 */	blr 
