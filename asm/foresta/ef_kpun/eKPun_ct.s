lbl_806153D0:
/* 806153D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806153D4  7C 08 02 A6 */	mflr r0
/* 806153D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806153DC  3C E0 80 65 */	lis r7, lit_391@ha /* 0x8064C6A4@ha */
/* 806153E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806153E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806153E8  3C C0 80 65 */	lis r6, lit_392@ha /* 0x8064C6A8@ha */
/* 806153EC  3C A0 80 65 */	lis r5, lit_393@ha /* 0x8064C6AC@ha */
/* 806153F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806153F4  3C 84 00 02 */	addis r4, r4, 2
/* 806153F8  7C 7F 1B 78 */	mr r31, r3
/* 806153FC  C0 27 C6 A4 */	lfs f1, lit_391@l(r7)  /* 0x8064C6A4@l */
/* 80615400  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80615404  38 60 00 00 */	li r3, 0
/* 80615408  C0 46 C6 A8 */	lfs f2, lit_392@l(r6)  /* 0x8064C6A8@l */
/* 8061540C  81 84 00 0C */	lwz r12, 0xc(r4)
/* 80615410  C0 65 C6 AC */	lfs f3, lit_393@l(r5)  /* 0x8064C6AC@l */
/* 80615414  7D 89 03 A6 */	mtctr r12
/* 80615418  4E 80 04 21 */	bctrl 
/* 8061541C  3C 80 80 65 */	lis r4, lit_394@ha /* 0x8064C6B0@ha */
/* 80615420  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 80615424  C0 04 C6 B0 */	lfs f0, lit_394@l(r4)  /* 0x8064C6B0@l */
/* 80615428  38 00 00 1A */	li r0, 0x1a
/* 8061542C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80615430  38 60 01 3E */	li r3, 0x13e
/* 80615434  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80615438  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061543C  48 01 8B 6D */	bl sAdo_OngenTrgStart
/* 80615440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80615444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80615448  7C 08 03 A6 */	mtlr r0
/* 8061544C  38 21 00 10 */	addi r1, r1, 0x10
/* 80615450  4E 80 00 20 */	blr 
