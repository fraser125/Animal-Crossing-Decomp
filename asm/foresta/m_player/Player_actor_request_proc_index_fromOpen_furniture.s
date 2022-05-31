lbl_804EB568:
/* 804EB568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB56C  7C 08 02 A6 */	mflr r0
/* 804EB570  2C 05 00 00 */	cmpwi r5, 0
/* 804EB574  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB578  41 82 00 30 */	beq lbl_804EB5A8
/* 804EB57C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804EB580  C0 03 01 80 */	lfs f0, 0x180(r3)
/* 804EB584  C0 25 65 68 */	lfs f1, lit_604@l(r5)  /* 0x80646568@l */
/* 804EB588  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EB58C  40 82 00 14 */	bne lbl_804EB5A0
/* 804EB590  7C 83 23 78 */	mr r3, r4
/* 804EB594  38 80 00 16 */	li r4, 0x16
/* 804EB598  48 00 00 C9 */	bl func_804EB660
/* 804EB59C  48 00 00 0C */	b lbl_804EB5A8
lbl_804EB5A0:
/* 804EB5A0  D0 23 01 80 */	stfs f1, 0x180(r3)
/* 804EB5A4  D0 23 01 F0 */	stfs f1, 0x1f0(r3)
lbl_804EB5A8:
/* 804EB5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB5AC  7C 08 03 A6 */	mtlr r0
/* 804EB5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB5B4  4E 80 00 20 */	blr 
