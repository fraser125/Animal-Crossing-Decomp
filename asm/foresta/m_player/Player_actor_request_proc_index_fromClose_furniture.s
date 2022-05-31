lbl_804EBB8C:
/* 804EBB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBB90  7C 08 02 A6 */	mflr r0
/* 804EBB94  2C 05 00 00 */	cmpwi r5, 0
/* 804EBB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EBBA0  7C 9F 23 78 */	mr r31, r4
/* 804EBBA4  41 82 00 4C */	beq lbl_804EBBF0
/* 804EBBA8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EBBAC  C0 03 01 80 */	lfs f0, 0x180(r3)
/* 804EBBB0  C0 24 65 68 */	lfs f1, lit_604@l(r4)  /* 0x80646568@l */
/* 804EBBB4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EBBB8  40 82 00 30 */	bne lbl_804EBBE8
/* 804EBBBC  4B FE 97 B1 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804EBBC0  3C 60 80 65 */	lis r3, lit_9115@ha /* 0x806484B8@ha */
/* 804EBBC4  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804EBBC8  38 A3 84 B8 */	addi r5, r3, lit_9115@l /* 0x806484B8@l */
/* 804EBBCC  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804EBBD0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EBBD4  7F E3 FB 78 */	mr r3, r31
/* 804EBBD8  38 80 00 00 */	li r4, 0
/* 804EBBDC  38 A0 00 01 */	li r5, 1
/* 804EBBE0  4B FF A0 1D */	bl func_804E5BFC
/* 804EBBE4  48 00 00 0C */	b lbl_804EBBF0
lbl_804EBBE8:
/* 804EBBE8  D0 23 01 80 */	stfs f1, 0x180(r3)
/* 804EBBEC  D0 23 01 F0 */	stfs f1, 0x1f0(r3)
lbl_804EBBF0:
/* 804EBBF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBBF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EBBF8  7C 08 03 A6 */	mtlr r0
/* 804EBBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBC00  4E 80 00 20 */	blr 
