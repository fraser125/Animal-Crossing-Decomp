lbl_805B43DC:
/* 805B43DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B43E0  7C 08 02 A6 */	mflr r0
/* 805B43E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B43E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B43EC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B43F0  3C 84 00 02 */	addis r4, r4, 2
/* 805B43F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B43F8  7C 7F 1B 78 */	mr r31, r3
/* 805B43FC  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 805B4400  90 03 02 D8 */	stw r0, 0x2d8(r3)
/* 805B4404  48 00 00 55 */	bl aMsm_set_bgOffset
/* 805B4408  3C 80 80 65 */	lis r4, data_8064A914@ha /* 0x8064A914@ha */
/* 805B440C  3C 60 80 65 */	lis r3, lit_435@ha /* 0x8064A918@ha */
/* 805B4410  C0 24 A9 14 */	lfs f1, data_8064A914@l(r4)  /* 0x8064A914@l */
/* 805B4414  C0 03 A9 18 */	lfs f0, lit_435@l(r3)  /* 0x8064A918@l */
/* 805B4418  D0 3F 01 34 */	stfs f1, 0x134(r31)
/* 805B441C  D0 1F 01 40 */	stfs f0, 0x140(r31)
/* 805B4420  48 00 02 7D */	bl aMsm_ctrl_light
/* 805B4424  2C 03 00 00 */	cmpwi r3, 0
/* 805B4428  41 82 00 10 */	beq lbl_805B4438
/* 805B442C  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A91C@ha */
/* 805B4430  C0 03 A9 1C */	lfs f0, lit_436@l(r3)  /* 0x8064A91C@l */
/* 805B4434  48 00 00 0C */	b lbl_805B4440
lbl_805B4438:
/* 805B4438  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064A920@ha */
/* 805B443C  C0 03 A9 20 */	lfs f0, lit_437@l(r3)  /* 0x8064A920@l */
lbl_805B4440:
/* 805B4440  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805B4444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B4448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B444C  7C 08 03 A6 */	mtlr r0
/* 805B4450  38 21 00 10 */	addi r1, r1, 0x10
/* 805B4454  4E 80 00 20 */	blr 
