lbl_805263B0:
/* 805263B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805263B4  7C 08 02 A6 */	mflr r0
/* 805263B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805263BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805263C0  4B FF FF 69 */	bl func_80526328
/* 805263C4  38 80 00 00 */	li r4, 0
/* 805263C8  38 00 00 08 */	li r0, 8
/* 805263CC  7C 7F 1B 78 */	mr r31, r3
/* 805263D0  7C 83 23 78 */	mr r3, r4
/* 805263D4  7C 09 03 A6 */	mtctr r0
lbl_805263D8:
/* 805263D8  7C 7F 23 2E */	sthx r3, r31, r4
/* 805263DC  38 84 00 02 */	addi r4, r4, 2
/* 805263E0  42 00 FF F8 */	bdnz lbl_805263D8
/* 805263E4  38 00 00 08 */	li r0, 8
/* 805263E8  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 805263EC  4B B3 69 09 */	bl fqrand
/* 805263F0  3C 80 80 65 */	lis r4, lit_518@ha /* 0x806491C4@ha */
/* 805263F4  3C 60 80 6A */	lis r3, sell_table@ha /* 0x806A0E68@ha */
/* 805263F8  C0 04 91 C4 */	lfs f0, lit_518@l(r4)  /* 0x806491C4@l */
/* 805263FC  38 83 0E 68 */	addi r4, r3, sell_table@l /* 0x806A0E68@l */
/* 80526400  38 00 00 08 */	li r0, 8
/* 80526404  38 C0 00 00 */	li r6, 0
/* 80526408  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052640C  38 60 00 00 */	li r3, 0
/* 80526410  FC 00 00 1E */	fctiwz f0, f0
/* 80526414  D8 01 00 08 */	stfd f0, 8(r1)
/* 80526418  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8052641C  B0 BF 00 12 */	sth r5, 0x12(r31)
/* 80526420  7C 09 03 A6 */	mtctr r0
lbl_80526424:
/* 80526424  A8 1F 00 12 */	lha r0, 0x12(r31)
/* 80526428  54 00 08 3C */	slwi r0, r0, 1
/* 8052642C  7C 04 02 2E */	lhzx r0, r4, r0
/* 80526430  7C 06 02 14 */	add r0, r6, r0
/* 80526434  38 C6 00 01 */	addi r6, r6, 1
/* 80526438  7C 1F 1B 2E */	sthx r0, r31, r3
/* 8052643C  38 63 00 02 */	addi r3, r3, 2
/* 80526440  42 00 FF E4 */	bdnz lbl_80526424
/* 80526444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80526448  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052644C  7C 08 03 A6 */	mtlr r0
/* 80526450  38 21 00 20 */	addi r1, r1, 0x20
/* 80526454  4E 80 00 20 */	blr 
