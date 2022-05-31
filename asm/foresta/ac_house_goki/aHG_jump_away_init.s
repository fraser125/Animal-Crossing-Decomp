lbl_8050BE2C:
/* 8050BE2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050BE30  7C 08 02 A6 */	mflr r0
/* 8050BE34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050BE38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050BE3C  7C 7F 1B 78 */	mr r31, r3
/* 8050BE40  4B B5 0E B5 */	bl fqrand
/* 8050BE44  FC 00 08 1E */	fctiwz f0, f1
/* 8050BE48  3C 60 80 65 */	lis r3, lit_663@ha /* 0x80648E40@ha */
/* 8050BE4C  38 E3 8E 40 */	addi r7, r3, lit_663@l /* 0x80648E40@l */
/* 8050BE50  A8 1F 00 B6 */	lha r0, 0xb6(r31)
/* 8050BE54  3C 60 80 65 */	lis r3, lit_440@ha /* 0x80648E00@ha */
/* 8050BE58  C0 47 00 00 */	lfs f2, 0(r7)
/* 8050BE5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8050BE60  38 C3 8E 00 */	addi r6, r3, lit_440@l /* 0x80648E00@l */
/* 8050BE64  3C 60 80 65 */	lis r3, lit_510@ha /* 0x80648E10@ha */
/* 8050BE68  C0 26 00 00 */	lfs f1, 0(r6)
/* 8050BE6C  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8050BE70  38 A3 8E 10 */	addi r5, r3, lit_510@l /* 0x80648E10@l */
/* 8050BE74  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050BE78  38 9F 00 28 */	addi r4, r31, 0x28
/* 8050BE7C  7D 07 07 34 */	extsh r7, r8
/* 8050BE80  38 60 01 32 */	li r3, 0x132
/* 8050BE84  54 E6 68 24 */	slwi r6, r7, 0xd
/* 8050BE88  20 A6 10 00 */	subfic r5, r6, 0x1000
/* 8050BE8C  7C A5 07 34 */	extsh r5, r5
/* 8050BE90  7C 00 2A 14 */	add r0, r0, r5
/* 8050BE94  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8050BE98  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8050BE9C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8050BEA0  D0 5F 00 6C */	stfs f2, 0x6c(r31)
/* 8050BEA4  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 8050BEA8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8050BEAC  48 12 20 FD */	bl sAdo_OngenTrgStart
/* 8050BEB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050BEB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050BEB8  7C 08 03 A6 */	mtlr r0
/* 8050BEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8050BEC0  4E 80 00 20 */	blr 
