lbl_804E5538:
/* 804E5538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E553C  7C 08 02 A6 */	mflr r0
/* 804E5540  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804E5544  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5548  C0 05 65 64 */	lfs f0, lit_603@l(r5)  /* 0x80646564@l */
/* 804E554C  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 804E5550  C0 43 0D 1C */	lfs f2, 0xd1c(r3)
/* 804E5554  EC 01 00 2A */	fadds f0, f1, f0
/* 804E5558  80 03 0D 20 */	lwz r0, 0xd20(r3)
/* 804E555C  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 804E5560  C0 03 0D 18 */	lfs f0, 0xd18(r3)
/* 804E5564  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804E5568  4C 41 13 82 */	cror 2, 1, 2
/* 804E556C  40 82 00 48 */	bne lbl_804E55B4
/* 804E5570  2C 00 00 4A */	cmpwi r0, 0x4a
/* 804E5574  41 82 00 2C */	beq lbl_804E55A0
/* 804E5578  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E557C  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804E5580  38 C3 83 54 */	addi r6, r3, lit_7381@l /* 0x80648354@l */
/* 804E5584  C0 45 65 68 */	lfs f2, lit_604@l(r5)  /* 0x80646568@l */
/* 804E5588  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E558C  7C 83 23 78 */	mr r3, r4
/* 804E5590  38 80 00 00 */	li r4, 0
/* 804E5594  38 A0 00 01 */	li r5, 1
/* 804E5598  48 00 06 65 */	bl func_804E5BFC
/* 804E559C  48 00 00 18 */	b lbl_804E55B4
lbl_804E55A0:
/* 804E55A0  7C 83 23 78 */	mr r3, r4
/* 804E55A4  38 80 00 00 */	li r4, 0
/* 804E55A8  38 A0 00 00 */	li r5, 0
/* 804E55AC  38 C0 00 13 */	li r6, 0x13
/* 804E55B0  48 01 77 91 */	bl func_804FCD40
lbl_804E55B4:
/* 804E55B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E55B8  7C 08 03 A6 */	mtlr r0
/* 804E55BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E55C0  4E 80 00 20 */	blr 
