lbl_803C2574:
/* 803C2574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2578  7C 08 02 A6 */	mflr r0
/* 803C257C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2580  80 83 00 20 */	lwz r4, 0x20(r3)
/* 803C2584  28 04 00 00 */	cmplwi r4, 0
/* 803C2588  41 82 00 30 */	beq lbl_803C25B8
/* 803C258C  88 04 00 02 */	lbz r0, 2(r4)
/* 803C2590  28 00 00 04 */	cmplwi r0, 4
/* 803C2594  40 82 00 24 */	bne lbl_803C25B8
/* 803C2598  A0 04 00 06 */	lhz r0, 6(r4)
/* 803C259C  28 00 D0 26 */	cmplwi r0, 0xd026
/* 803C25A0  41 82 00 10 */	beq lbl_803C25B0
/* 803C25A4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C25A8  28 00 D0 37 */	cmplwi r0, 0xd037
/* 803C25AC  40 82 00 0C */	bne lbl_803C25B8
lbl_803C25B0:
/* 803C25B0  80 63 03 FC */	lwz r3, 0x3fc(r3)
/* 803C25B4  48 26 BC D9 */	bl sAdo_SpecChange
lbl_803C25B8:
/* 803C25B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C25BC  7C 08 03 A6 */	mtlr r0
/* 803C25C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C25C4  4E 80 00 20 */	blr 
