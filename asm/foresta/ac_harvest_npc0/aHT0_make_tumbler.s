lbl_80591410:
/* 80591410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591414  7C 08 02 A6 */	mflr r0
/* 80591418  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059141C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80591420  7C 7F 1B 78 */	mr r31, r3
/* 80591424  80 03 09 A4 */	lwz r0, 0x9a4(r3)
/* 80591428  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8059142C  2C 00 00 01 */	cmpwi r0, 1
/* 80591430  40 82 00 50 */	bne lbl_80591480
/* 80591434  80 1F 08 A0 */	lwz r0, 0x8a0(r31)
/* 80591438  28 00 00 00 */	cmplwi r0, 0
/* 8059143C  40 82 00 44 */	bne lbl_80591480
/* 80591440  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80591444  7F E5 FB 78 */	mr r5, r31
/* 80591448  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059144C  7C 86 23 78 */	mr r6, r4
/* 80591450  3C 83 00 02 */	addis r4, r3, 2
/* 80591454  38 60 00 2E */	li r3, 0x2e
/* 80591458  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 8059145C  38 80 00 04 */	li r4, 4
/* 80591460  38 E0 FF FF */	li r7, -1
/* 80591464  39 00 00 00 */	li r8, 0
/* 80591468  81 89 00 00 */	lwz r12, 0(r9)
/* 8059146C  7D 89 03 A6 */	mtctr r12
/* 80591470  4E 80 04 21 */	bctrl 
/* 80591474  28 03 00 00 */	cmplwi r3, 0
/* 80591478  41 82 00 08 */	beq lbl_80591480
/* 8059147C  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_80591480:
/* 80591480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80591488  7C 08 03 A6 */	mtlr r0
/* 8059148C  38 21 00 10 */	addi r1, r1, 0x10
/* 80591490  4E 80 00 20 */	blr 