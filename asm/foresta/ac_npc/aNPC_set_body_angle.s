lbl_8052FA4C:
/* 8052FA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FA50  7C 08 02 A6 */	mflr r0
/* 8052FA54  7C 66 1B 78 */	mr r6, r3
/* 8052FA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FA5C  88 03 09 34 */	lbz r0, 0x934(r3)
/* 8052FA60  38 66 00 DC */	addi r3, r6, 0xdc
/* 8052FA64  28 00 00 01 */	cmplwi r0, 1
/* 8052FA68  40 82 00 0C */	bne lbl_8052FA74
/* 8052FA6C  A8 06 09 32 */	lha r0, 0x932(r6)
/* 8052FA70  48 00 00 2C */	b lbl_8052FA9C
lbl_8052FA74:
/* 8052FA74  3C A0 80 65 */	lis r5, lit_1744@ha /* 0x806492BC@ha */
/* 8052FA78  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052FA7C  C0 26 00 74 */	lfs f1, 0x74(r6)
/* 8052FA80  C0 45 92 BC */	lfs f2, lit_1744@l(r5)  /* 0x806492BC@l */
/* 8052FA84  C0 04 92 94 */	lfs f0, lit_950@l(r4)  /* 0x80649294@l */
/* 8052FA88  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052FA8C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8052FA90  FC 00 00 1E */	fctiwz f0, f0
/* 8052FA94  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052FA98  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_8052FA9C:
/* 8052FA9C  7C 04 07 34 */	extsh r4, r0
/* 8052FAA0  38 A0 00 E0 */	li r5, 0xe0
/* 8052FAA4  4B E8 B0 A1 */	bl chase_angle
/* 8052FAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FAAC  7C 08 03 A6 */	mtlr r0
/* 8052FAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FAB4  4E 80 00 20 */	blr 
