lbl_8061A9D8:
/* 8061A9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A9DC  7C 08 02 A6 */	mflr r0
/* 8061A9E0  3C C0 80 65 */	lis r6, lit_383@ha /* 0x8064C9F0@ha */
/* 8061A9E4  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C9F8@ha */
/* 8061A9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A9EC  C0 26 C9 F0 */	lfs f1, lit_383@l(r6)  /* 0x8064C9F0@l */
/* 8061A9F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A9F4  7C 7F 1B 78 */	mr r31, r3
/* 8061A9F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061A9FC  C0 64 C9 F8 */	lfs f3, lit_385@l(r4)  /* 0x8064C9F8@l */
/* 8061AA00  A8 05 00 00 */	lha r0, 0(r5)
/* 8061AA04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061AA08  3C A0 80 65 */	lis r5, lit_384@ha /* 0x8064C9F4@ha */
/* 8061AA0C  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8061AA10  3C 63 00 02 */	addis r3, r3, 2
/* 8061AA14  C0 45 C9 F4 */	lfs f2, lit_384@l(r5)  /* 0x8064C9F4@l */
/* 8061AA18  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 8061AA1C  81 83 00 0C */	lwz r12, 0xc(r3)
/* 8061AA20  38 60 00 00 */	li r3, 0
/* 8061AA24  7D 89 03 A6 */	mtctr r12
/* 8061AA28  4E 80 04 21 */	bctrl 
/* 8061AA2C  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C9FC@ha */
/* 8061AA30  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 8061AA34  C0 04 C9 FC */	lfs f0, lit_386@l(r4)  /* 0x8064C9FC@l */
/* 8061AA38  38 00 00 1A */	li r0, 0x1a
/* 8061AA3C  38 9F 00 10 */	addi r4, r31, 0x10
/* 8061AA40  38 60 01 3B */	li r3, 0x13b
/* 8061AA44  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8061AA48  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061AA4C  48 01 35 5D */	bl sAdo_OngenTrgStart
/* 8061AA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061AA54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061AA58  7C 08 03 A6 */	mtlr r0
/* 8061AA5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8061AA60  4E 80 00 20 */	blr 
