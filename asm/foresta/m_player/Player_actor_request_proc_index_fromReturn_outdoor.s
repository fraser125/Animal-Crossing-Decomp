lbl_804E5820:
/* 804E5820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5824  7C 08 02 A6 */	mflr r0
/* 804E5828  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804E582C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5830  C0 05 65 64 */	lfs f0, lit_603@l(r5)  /* 0x80646564@l */
/* 804E5834  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 804E5838  C0 43 0D 1C */	lfs f2, 0xd1c(r3)
/* 804E583C  EC 01 00 2A */	fadds f0, f1, f0
/* 804E5840  80 03 0D 20 */	lwz r0, 0xd20(r3)
/* 804E5844  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 804E5848  C0 03 0D 18 */	lfs f0, 0xd18(r3)
/* 804E584C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804E5850  4C 41 13 82 */	cror 2, 1, 2
/* 804E5854  40 82 00 28 */	bne lbl_804E587C
/* 804E5858  3C 60 80 65 */	lis r3, lit_7572@ha /* 0x80648360@ha */
/* 804E585C  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E5860  38 C3 83 60 */	addi r6, r3, lit_7572@l /* 0x80648360@l */
/* 804E5864  C0 45 83 54 */	lfs f2, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E5868  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E586C  7C 83 23 78 */	mr r3, r4
/* 804E5870  7C 04 03 78 */	mr r4, r0
/* 804E5874  38 A0 00 01 */	li r5, 1
/* 804E5878  48 00 00 9D */	bl func_804E5914
lbl_804E587C:
/* 804E587C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5880  7C 08 03 A6 */	mtlr r0
/* 804E5884  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5888  4E 80 00 20 */	blr 
