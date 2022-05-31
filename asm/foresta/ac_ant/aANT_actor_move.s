lbl_8050C67C:
/* 8050C67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050C680  7C 08 02 A6 */	mflr r0
/* 8050C684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050C68C  7C 7F 1B 78 */	mr r31, r3
/* 8050C690  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8050C694  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8050C698  40 82 00 40 */	bne lbl_8050C6D8
/* 8050C69C  88 BF 00 08 */	lbz r5, 8(r31)
/* 8050C6A0  88 04 00 E4 */	lbz r0, 0xe4(r4)
/* 8050C6A4  7C A5 07 74 */	extsb r5, r5
/* 8050C6A8  7C 00 07 74 */	extsb r0, r0
/* 8050C6AC  7C 05 00 00 */	cmpw r5, r0
/* 8050C6B0  40 82 00 1C */	bne lbl_8050C6CC
/* 8050C6B4  88 BF 00 09 */	lbz r5, 9(r31)
/* 8050C6B8  88 04 00 E5 */	lbz r0, 0xe5(r4)
/* 8050C6BC  7C A5 07 74 */	extsb r5, r5
/* 8050C6C0  7C 00 07 74 */	extsb r0, r0
/* 8050C6C4  7C 05 00 00 */	cmpw r5, r0
/* 8050C6C8  41 82 00 10 */	beq lbl_8050C6D8
lbl_8050C6CC:
/* 8050C6CC  7F E3 FB 78 */	mr r3, r31
/* 8050C6D0  4B E6 7D 71 */	bl Actor_delete
/* 8050C6D4  48 00 00 40 */	b lbl_8050C714
lbl_8050C6D8:
/* 8050C6D8  3C A0 80 65 */	lis r5, lit_474@ha /* 0x80648E5C@ha */
/* 8050C6DC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8050C6E0  C0 25 8E 5C */	lfs f1, lit_474@l(r5)  /* 0x80648E5C@l */
/* 8050C6E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050C6E8  40 80 00 10 */	bge lbl_8050C6F8
/* 8050C6EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8050C6F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050C6F4  41 80 00 20 */	blt lbl_8050C714
lbl_8050C6F8:
/* 8050C6F8  81 83 01 74 */	lwz r12, 0x174(r3)
/* 8050C6FC  7D 89 03 A6 */	mtctr r12
/* 8050C700  4E 80 04 21 */	bctrl 
/* 8050C704  3C 80 80 65 */	lis r4, lit_474@ha /* 0x80648E5C@ha */
/* 8050C708  7F E3 FB 78 */	mr r3, r31
/* 8050C70C  C0 24 8E 5C */	lfs f1, lit_474@l(r4)  /* 0x80648E5C@l */
/* 8050C710  4B E6 7A C1 */	bl func_803741D0
lbl_8050C714:
/* 8050C714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050C718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050C71C  7C 08 03 A6 */	mtlr r0
/* 8050C720  38 21 00 10 */	addi r1, r1, 0x10
/* 8050C724  4E 80 00 20 */	blr 
