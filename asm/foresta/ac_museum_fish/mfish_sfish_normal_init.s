lbl_80446468:
/* 80446468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044646C  7C 08 02 A6 */	mflr r0
/* 80446470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80446474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80446478  7C 7F 1B 78 */	mr r31, r3
/* 8044647C  A8 03 06 30 */	lha r0, 0x630(r3)
/* 80446480  2C 00 00 02 */	cmpwi r0, 2
/* 80446484  40 82 00 28 */	bne lbl_804464AC
/* 80446488  A8 1F 06 26 */	lha r0, 0x626(r31)
/* 8044648C  2C 00 00 00 */	cmpwi r0, 0
/* 80446490  40 80 00 34 */	bge lbl_804464C4
/* 80446494  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80446498  4B FE B1 51 */	bl func_804315E8
/* 8044649C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804464A0  EC 00 08 2A */	fadds f0, f0, f1
/* 804464A4  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 804464A8  48 00 00 1C */	b lbl_804464C4
lbl_804464AC:
/* 804464AC  4B C1 68 49 */	bl fqrand
/* 804464B0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 804464B4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804464B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804464BC  EC 00 08 2A */	fadds f0, f0, f1
/* 804464C0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_804464C4:
/* 804464C4  3C 60 80 44 */	lis r3, mfish_sfish_normal@ha /* 0x804464E4@ha */
/* 804464C8  38 03 64 E4 */	addi r0, r3, mfish_sfish_normal@l /* 0x804464E4@l */
/* 804464CC  90 1F 00 34 */	stw r0, 0x34(r31)
/* 804464D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804464D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804464D8  7C 08 03 A6 */	mtlr r0
/* 804464DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804464E0  4E 80 00 20 */	blr 