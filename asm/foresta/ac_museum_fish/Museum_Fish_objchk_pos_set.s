lbl_80435C18:
/* 80435C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435C1C  7C 08 02 A6 */	mflr r0
/* 80435C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435C28  7C 7F 1B 78 */	mr r31, r3
/* 80435C2C  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 80435C30  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80435C34  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80435C38  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80435C3C  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80435C40  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80435C44  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80435C48  4B F8 4E A9 */	bl sin_s
/* 80435C4C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80435C50  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80435C54  EC 22 00 72 */	fmuls f1, f2, f1
/* 80435C58  EC 00 08 2A */	fadds f0, f0, f1
/* 80435C5C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80435C60  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80435C64  4B F8 4E 39 */	bl cos_s
/* 80435C68  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80435C6C  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 80435C70  EC 22 00 72 */	fmuls f1, f2, f1
/* 80435C74  EC 00 08 2A */	fadds f0, f0, f1
/* 80435C78  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80435C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435C84  7C 08 03 A6 */	mtlr r0
/* 80435C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80435C8C  4E 80 00 20 */	blr 
