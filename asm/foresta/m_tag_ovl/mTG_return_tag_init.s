lbl_805EF7B4:
/* 805EF7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EF7B8  7C 08 02 A6 */	mflr r0
/* 805EF7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EF7C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805EF7C8  7C BE 2B 78 */	mr r30, r5
/* 805EF7CC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805EF7D0  83 E6 09 7C */	lwz r31, 0x97c(r6)
/* 805EF7D4  4B FF FF 99 */	bl mTG_get_tag_idx
/* 805EF7D8  2C 03 00 00 */	cmpwi r3, 0
/* 805EF7DC  41 80 00 78 */	blt lbl_805EF854
/* 805EF7E0  40 82 00 10 */	bne lbl_805EF7F0
/* 805EF7E4  38 00 FF FF */	li r0, -1
/* 805EF7E8  90 1F 00 04 */	stw r0, 4(r31)
/* 805EF7EC  48 00 00 08 */	b lbl_805EF7F4
lbl_805EF7F0:
/* 805EF7F0  90 7F 00 04 */	stw r3, 4(r31)
lbl_805EF7F4:
/* 805EF7F4  2C 1E 00 00 */	cmpwi r30, 0
/* 805EF7F8  40 82 00 5C */	bne lbl_805EF854
/* 805EF7FC  80 DF 00 00 */	lwz r6, 0(r31)
/* 805EF800  3C 80 80 65 */	lis r4, data_8064B814@ha /* 0x8064B814@ha */
/* 805EF804  80 1F 00 04 */	lwz r0, 4(r31)
/* 805EF808  1C A6 00 B4 */	mulli r5, r6, 0xb4
/* 805EF80C  C0 04 B8 14 */	lfs f0, data_8064B814@l(r4)  /* 0x8064B814@l */
/* 805EF810  7C 00 30 51 */	subf. r0, r0, r6
/* 805EF814  38 85 00 08 */	addi r4, r5, 8
/* 805EF818  7C 9F 22 14 */	add r4, r31, r4
/* 805EF81C  7C 09 03 A6 */	mtctr r0
/* 805EF820  41 82 00 34 */	beq lbl_805EF854
lbl_805EF824:
/* 805EF824  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 805EF828  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 805EF82C  EC 22 08 2A */	fadds f1, f2, f1
/* 805EF830  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 805EF834  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 805EF838  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 805EF83C  EC 22 08 2A */	fadds f1, f2, f1
/* 805EF840  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 805EF844  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 805EF848  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 805EF84C  38 84 FF 4C */	addi r4, r4, -180
/* 805EF850  42 00 FF D4 */	bdnz lbl_805EF824
lbl_805EF854:
/* 805EF854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EF858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EF85C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EF860  7C 08 03 A6 */	mtlr r0
/* 805EF864  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF868  4E 80 00 20 */	blr 
