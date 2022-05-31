lbl_804CD38C:
/* 804CD38C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CD390  7C 08 02 A6 */	mflr r0
/* 804CD394  2C 03 00 00 */	cmpwi r3, 0
/* 804CD398  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CD39C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804CD3A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804CD3A4  41 80 01 18 */	blt lbl_804CD4BC
/* 804CD3A8  2C 03 00 7E */	cmpwi r3, 0x7e
/* 804CD3AC  40 80 01 10 */	bge lbl_804CD4BC
/* 804CD3B0  3D 60 80 6A */	lis r11, eEC_effect_feature@ha /* 0x8069BE08@ha */
/* 804CD3B4  39 6B BE 08 */	addi r11, r11, eEC_effect_feature@l /* 0x8069BE08@l */
/* 804CD3B8  7C 0B 18 AE */	lbzx r0, r11, r3
/* 804CD3BC  28 00 00 00 */	cmplwi r0, 0
/* 804CD3C0  40 82 00 58 */	bne lbl_804CD418
/* 804CD3C4  83 E4 00 00 */	lwz r31, 0(r4)
/* 804CD3C8  3D 60 80 6A */	lis r11, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CD3CC  83 C4 00 04 */	lwz r30, 4(r4)
/* 804CD3D0  54 60 10 3A */	slwi r0, r3, 2
/* 804CD3D4  81 84 00 08 */	lwz r12, 8(r4)
/* 804CD3D8  38 6B BC 10 */	addi r3, r11, data_8069BC10@l /* 0x8069BC10@l */
/* 804CD3DC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 804CD3E0  7C A4 2B 78 */	mr r4, r5
/* 804CD3E4  7D 63 00 2E */	lwzx r11, r3, r0
/* 804CD3E8  7C C5 33 78 */	mr r5, r6
/* 804CD3EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804CD3F0  7C E6 3B 78 */	mr r6, r7
/* 804CD3F4  7D 07 43 78 */	mr r7, r8
/* 804CD3F8  7D 28 4B 78 */	mr r8, r9
/* 804CD3FC  91 81 00 1C */	stw r12, 0x1c(r1)
/* 804CD400  7D 49 53 78 */	mr r9, r10
/* 804CD404  38 61 00 14 */	addi r3, r1, 0x14
/* 804CD408  81 8B 00 00 */	lwz r12, 0(r11)
/* 804CD40C  7D 89 03 A6 */	mtctr r12
/* 804CD410  4E 80 04 21 */	bctrl 
/* 804CD414  48 00 00 A8 */	b lbl_804CD4BC
lbl_804CD418:
/* 804CD418  28 00 00 01 */	cmplwi r0, 1
/* 804CD41C  40 82 00 A0 */	bne lbl_804CD4BC
/* 804CD420  3D 60 81 1D */	lis r11, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD424  38 00 00 64 */	li r0, 0x64
/* 804CD428  39 8B 08 40 */	addi r12, r11, data_811D0840@l /* 0x811D0840@l */
/* 804CD42C  55 0B 04 3E */	clrlwi r11, r8, 0x10
/* 804CD430  3B CC 24 34 */	addi r30, r12, 0x2434
/* 804CD434  39 8C 01 D4 */	addi r12, r12, 0x1d4
/* 804CD438  7C 09 03 A6 */	mtctr r0
lbl_804CD43C:
/* 804CD43C  88 1E 00 00 */	lbz r0, 0(r30)
/* 804CD440  28 00 00 00 */	cmplwi r0, 0
/* 804CD444  41 82 00 1C */	beq lbl_804CD460
/* 804CD448  A8 0C 00 02 */	lha r0, 2(r12)
/* 804CD44C  7C 00 18 00 */	cmpw r0, r3
/* 804CD450  40 82 00 10 */	bne lbl_804CD460
/* 804CD454  A0 0C 00 0C */	lhz r0, 0xc(r12)
/* 804CD458  7C 00 58 40 */	cmplw r0, r11
/* 804CD45C  41 82 00 60 */	beq lbl_804CD4BC
lbl_804CD460:
/* 804CD460  3B DE 00 01 */	addi r30, r30, 1
/* 804CD464  39 8C 00 58 */	addi r12, r12, 0x58
/* 804CD468  42 00 FF D4 */	bdnz lbl_804CD43C
/* 804CD46C  83 C4 00 00 */	lwz r30, 0(r4)
/* 804CD470  3D 60 80 6A */	lis r11, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CD474  83 E4 00 04 */	lwz r31, 4(r4)
/* 804CD478  54 60 10 3A */	slwi r0, r3, 2
/* 804CD47C  81 84 00 08 */	lwz r12, 8(r4)
/* 804CD480  38 6B BC 10 */	addi r3, r11, data_8069BC10@l /* 0x8069BC10@l */
/* 804CD484  93 C1 00 08 */	stw r30, 8(r1)
/* 804CD488  7C A4 2B 78 */	mr r4, r5
/* 804CD48C  7D 63 00 2E */	lwzx r11, r3, r0
/* 804CD490  7C C5 33 78 */	mr r5, r6
/* 804CD494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD498  7C E6 3B 78 */	mr r6, r7
/* 804CD49C  7D 07 43 78 */	mr r7, r8
/* 804CD4A0  7D 28 4B 78 */	mr r8, r9
/* 804CD4A4  91 81 00 10 */	stw r12, 0x10(r1)
/* 804CD4A8  7D 49 53 78 */	mr r9, r10
/* 804CD4AC  38 61 00 08 */	addi r3, r1, 8
/* 804CD4B0  81 8B 00 00 */	lwz r12, 0(r11)
/* 804CD4B4  7D 89 03 A6 */	mtctr r12
/* 804CD4B8  4E 80 04 21 */	bctrl 
lbl_804CD4BC:
/* 804CD4BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CD4C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804CD4C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804CD4C8  7C 08 03 A6 */	mtlr r0
/* 804CD4CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804CD4D0  4E 80 00 20 */	blr 
