lbl_805CEC20:
/* 805CEC20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CEC24  7C 08 02 A6 */	mflr r0
/* 805CEC28  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CEC2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CEC30  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CEC34  80 A3 09 28 */	lwz r5, 0x928(r3)
/* 805CEC38  83 E3 09 C4 */	lwz r31, 0x9c4(r3)
/* 805CEC3C  54 A0 04 21 */	rlwinm. r0, r5, 0, 0x10, 0x10
/* 805CEC40  41 82 00 48 */	beq lbl_805CEC88
/* 805CEC44  38 00 00 04 */	li r0, 4
/* 805CEC48  3C 60 80 65 */	lis r3, lit_412@ha /* 0x8064B048@ha */
/* 805CEC4C  90 04 00 30 */	stw r0, 0x30(r4)
/* 805CEC50  38 00 00 00 */	li r0, 0
/* 805CEC54  38 A3 B0 48 */	addi r5, r3, lit_412@l /* 0x8064B048@l */
/* 805CEC58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CEC5C  98 1F 00 02 */	stb r0, 2(r31)
/* 805CEC60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CEC64  C0 05 00 00 */	lfs f0, 0(r5)
/* 805CEC68  3C 63 00 02 */	addis r3, r3, 2
/* 805CEC6C  90 04 00 04 */	stw r0, 4(r4)
/* 805CEC70  D0 1F 00 08 */	stfs f0, 8(r31)
/* 805CEC74  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 805CEC78  88 1F 00 05 */	lbz r0, 5(r31)
/* 805CEC7C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805CEC80  98 03 23 AE */	stb r0, 0x23ae(r3)
/* 805CEC84  48 00 00 50 */	b lbl_805CECD4
lbl_805CEC88:
/* 805CEC88  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805CEC8C  41 82 00 24 */	beq lbl_805CECB0
/* 805CEC90  88 1F 00 05 */	lbz r0, 5(r31)
/* 805CEC94  28 00 00 01 */	cmplwi r0, 1
/* 805CEC98  40 82 00 3C */	bne lbl_805CECD4
/* 805CEC9C  38 00 00 00 */	li r0, 0
/* 805CECA0  38 60 00 01 */	li r3, 1
/* 805CECA4  98 1F 00 05 */	stb r0, 5(r31)
/* 805CECA8  48 05 F0 5D */	bl sAdo_SysTrgStart
/* 805CECAC  48 00 00 28 */	b lbl_805CECD4
lbl_805CECB0:
/* 805CECB0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805CECB4  41 82 00 20 */	beq lbl_805CECD4
/* 805CECB8  88 1F 00 05 */	lbz r0, 5(r31)
/* 805CECBC  28 00 00 00 */	cmplwi r0, 0
/* 805CECC0  40 82 00 14 */	bne lbl_805CECD4
/* 805CECC4  38 00 00 01 */	li r0, 1
/* 805CECC8  38 60 00 01 */	li r3, 1
/* 805CECCC  98 1F 00 05 */	stb r0, 5(r31)
/* 805CECD0  48 05 F0 35 */	bl sAdo_SysTrgStart
lbl_805CECD4:
/* 805CECD4  88 9F 00 00 */	lbz r4, 0(r31)
/* 805CECD8  38 60 00 1E */	li r3, 0x1e
/* 805CECDC  38 84 00 01 */	addi r4, r4, 1
/* 805CECE0  7C 04 1B D6 */	divw r0, r4, r3
/* 805CECE4  7C 00 19 D6 */	mullw r0, r0, r3
/* 805CECE8  7C 00 20 50 */	subf r0, r0, r4
/* 805CECEC  98 1F 00 00 */	stb r0, 0(r31)
/* 805CECF0  88 9F 00 00 */	lbz r4, 0(r31)
/* 805CECF4  28 04 00 0F */	cmplwi r4, 0xf
/* 805CECF8  40 80 00 50 */	bge lbl_805CED48
/* 805CECFC  3C 00 43 30 */	lis r0, 0x4330
/* 805CED00  3C A0 80 65 */	lis r5, lit_435@ha /* 0x8064B050@ha */
/* 805CED04  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064B05C@ha */
/* 805CED08  90 81 00 0C */	stw r4, 0xc(r1)
/* 805CED0C  38 83 B0 5C */	addi r4, r3, lit_438@l /* 0x8064B05C@l */
/* 805CED10  C0 45 B0 50 */	lfs f2, lit_435@l(r5)  /* 0x8064B050@l */
/* 805CED14  90 01 00 08 */	stw r0, 8(r1)
/* 805CED18  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064B054@ha */
/* 805CED1C  C8 24 00 00 */	lfd f1, 0(r4)
/* 805CED20  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CED24  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CED28  C0 03 B0 54 */	lfs f0, lit_436@l(r3)  /* 0x8064B054@l */
/* 805CED2C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CED30  EC 01 00 24 */	fdivs f0, f1, f0
/* 805CED34  FC 00 00 1E */	fctiwz f0, f0
/* 805CED38  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805CED3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CED40  98 1F 00 01 */	stb r0, 1(r31)
/* 805CED44  48 00 00 50 */	b lbl_805CED94
lbl_805CED48:
/* 805CED48  20 64 00 1E */	subfic r3, r4, 0x1e
/* 805CED4C  3C 00 43 30 */	lis r0, 0x4330
/* 805CED50  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805CED54  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064B064@ha */
/* 805CED58  90 61 00 14 */	stw r3, 0x14(r1)
/* 805CED5C  3C A0 80 65 */	lis r5, lit_435@ha /* 0x8064B050@ha */
/* 805CED60  C8 24 B0 64 */	lfd f1, lit_440@l(r4)  /* 0x8064B064@l */
/* 805CED64  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064B054@ha */
/* 805CED68  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CED6C  C0 45 B0 50 */	lfs f2, lit_435@l(r5)  /* 0x8064B050@l */
/* 805CED70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805CED74  EC 20 08 28 */	fsubs f1, f0, f1
/* 805CED78  C0 03 B0 54 */	lfs f0, lit_436@l(r3)  /* 0x8064B054@l */
/* 805CED7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CED80  EC 01 00 24 */	fdivs f0, f1, f0
/* 805CED84  FC 00 00 1E */	fctiwz f0, f0
/* 805CED88  D8 01 00 08 */	stfd f0, 8(r1)
/* 805CED8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805CED90  98 1F 00 01 */	stb r0, 1(r31)
lbl_805CED94:
/* 805CED94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CED98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CED9C  7C 08 03 A6 */	mtlr r0
/* 805CEDA0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CEDA4  4E 80 00 20 */	blr 
