lbl_804B76BC:
/* 804B76BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B76C0  7C 08 02 A6 */	mflr r0
/* 804B76C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804B76C8  38 E0 00 FF */	li r7, 0xff
/* 804B76CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B76D0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804B76D4  3C A5 00 02 */	addis r5, r5, 2
/* 804B76D8  38 00 00 03 */	li r0, 3
/* 804B76DC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804B76E0  3B E0 00 00 */	li r31, 0
/* 804B76E4  80 A5 60 80 */	lwz r5, 0x6080(r5)
/* 804B76E8  80 A5 00 00 */	lwz r5, 0(r5)
/* 804B76EC  3C C5 00 01 */	addis r6, r5, 1
/* 804B76F0  7C 09 03 A6 */	mtctr r0
/* 804B76F4  38 C6 39 9C */	addi r6, r6, 0x399c
lbl_804B76F8:
/* 804B76F8  88 06 00 0F */	lbz r0, 0xf(r6)
/* 804B76FC  28 00 00 00 */	cmplwi r0, 0
/* 804B7700  40 82 00 0C */	bne lbl_804B770C
/* 804B7704  7C DF 33 78 */	mr r31, r6
/* 804B7708  48 00 00 2C */	b lbl_804B7734
lbl_804B770C:
/* 804B770C  28 00 00 01 */	cmplwi r0, 1
/* 804B7710  40 82 00 1C */	bne lbl_804B772C
/* 804B7714  88 A6 00 0E */	lbz r5, 0xe(r6)
/* 804B7718  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 804B771C  7C 05 00 40 */	cmplw r5, r0
/* 804B7720  40 80 00 0C */	bge lbl_804B772C
/* 804B7724  7C A7 2B 78 */	mr r7, r5
/* 804B7728  7C DF 33 78 */	mr r31, r6
lbl_804B772C:
/* 804B772C  38 C6 00 14 */	addi r6, r6, 0x14
/* 804B7730  42 00 FF C8 */	bdnz lbl_804B76F8
lbl_804B7734:
/* 804B7734  28 1F 00 00 */	cmplwi r31, 0
/* 804B7738  41 82 00 A0 */	beq lbl_804B77D8
/* 804B773C  38 A0 00 01 */	li r5, 1
/* 804B7740  38 00 00 FF */	li r0, 0xff
/* 804B7744  98 BF 00 0F */	stb r5, 0xf(r31)
/* 804B7748  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 804B774C  7F E3 FB 78 */	mr r3, r31
/* 804B7750  98 1F 00 0E */	stb r0, 0xe(r31)
/* 804B7754  80 A4 00 00 */	lwz r5, 0(r4)
/* 804B7758  80 04 00 04 */	lwz r0, 4(r4)
/* 804B775C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804B7760  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B7764  80 04 00 08 */	lwz r0, 8(r4)
/* 804B7768  38 81 00 20 */	addi r4, r1, 0x20
/* 804B776C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B7770  4B EE DD CD */	bl mFI_Wpos2UtCenterWpos
/* 804B7774  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B7778  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B777C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B7780  C0 23 60 94 */	lfs f1, lit_664@l(r3)  /* 0x80646094@l */
/* 804B7784  38 61 00 14 */	addi r3, r1, 0x14
/* 804B7788  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B778C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B7790  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B7794  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B7798  4B ED 82 01 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B779C  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804B77A0  38 00 00 00 */	li r0, 0
/* 804B77A4  38 81 00 08 */	addi r4, r1, 8
/* 804B77A8  38 60 00 00 */	li r3, 0
/* 804B77AC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 804B77B0  38 A0 00 01 */	li r5, 1
/* 804B77B4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B77B8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B77BC  90 C1 00 08 */	stw r6, 8(r1)
/* 804B77C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B77C4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B77C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B77CC  4B EF 00 65 */	bl mFI_SetFG_common
/* 804B77D0  38 60 00 01 */	li r3, 1
/* 804B77D4  48 00 00 08 */	b lbl_804B77DC
lbl_804B77D8:
/* 804B77D8  38 60 00 00 */	li r3, 0
lbl_804B77DC:
/* 804B77DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B77E0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804B77E4  7C 08 03 A6 */	mtlr r0
/* 804B77E8  38 21 00 40 */	addi r1, r1, 0x40
/* 804B77EC  4E 80 00 20 */	blr 
