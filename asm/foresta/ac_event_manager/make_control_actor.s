lbl_8041C5D0:
/* 8041C5D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041C5D4  7C 08 02 A6 */	mflr r0
/* 8041C5D8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041C5DC  3C A0 80 64 */	lis r5, lit_1293@ha /* 0x80643DD4@ha */
/* 8041C5E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041C5E4  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8041C5E8  C0 25 3D D4 */	lfs f1, lit_1293@l(r5)  /* 0x80643DD4@l */
/* 8041C5EC  39 60 FF FF */	li r11, -1
/* 8041C5F0  80 84 00 00 */	lwz r4, 0(r4)
/* 8041C5F4  7C 65 1B 78 */	mr r5, r3
/* 8041C5F8  38 00 00 00 */	li r0, 0
/* 8041C5FC  FC 40 08 90 */	fmr f2, f1
/* 8041C600  91 61 00 08 */	stw r11, 8(r1)
/* 8041C604  FC 60 08 90 */	fmr f3, f1
/* 8041C608  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 8041C60C  38 C0 00 00 */	li r6, 0
/* 8041C610  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041C614  38 E0 00 00 */	li r7, 0
/* 8041C618  39 00 00 00 */	li r8, 0
/* 8041C61C  91 61 00 10 */	stw r11, 0x10(r1)
/* 8041C620  39 20 FF FF */	li r9, -1
/* 8041C624  39 40 FF FF */	li r10, -1
/* 8041C628  91 61 00 14 */	stw r11, 0x14(r1)
/* 8041C62C  91 61 00 18 */	stw r11, 0x18(r1)
/* 8041C630  4B F5 91 19 */	bl Actor_info_make_actor
/* 8041C634  7C 60 00 34 */	cntlzw r0, r3
/* 8041C638  54 00 D9 7E */	srwi r0, r0, 5
/* 8041C63C  7C 00 00 34 */	cntlzw r0, r0
/* 8041C640  54 03 D9 7E */	srwi r3, r0, 5
/* 8041C644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041C648  7C 08 03 A6 */	mtlr r0
/* 8041C64C  38 21 00 20 */	addi r1, r1, 0x20
/* 8041C650  4E 80 00 20 */	blr 
