lbl_803F941C:
/* 803F941C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9420  7C 08 02 A6 */	mflr r0
/* 803F9424  3D 00 81 17 */	lis r8, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F9428  7C 87 23 78 */	mr r7, r4
/* 803F942C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9430  39 28 15 BC */	addi r9, r8, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F9434  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F9438  3B E0 00 00 */	li r31, 0
/* 803F943C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F9440  7D 3E 4B 78 */	mr r30, r9
/* 803F9444  81 49 00 18 */	lwz r10, 0x18(r9)
/* 803F9448  2C 0A 00 00 */	cmpwi r10, 0
/* 803F944C  41 80 00 C0 */	blt lbl_803F950C
/* 803F9450  2C 0A 00 04 */	cmpwi r10, 4
/* 803F9454  40 80 00 B8 */	bge lbl_803F950C
/* 803F9458  3D 00 81 17 */	lis r8, work_p_1224@ha /* 0x81171600@ha */
/* 803F945C  3C 80 80 66 */	lis r4, gsbg_proc@ha /* 0x8065E43C@ha */
/* 803F9460  38 08 16 00 */	addi r0, r8, work_p_1224@l /* 0x81171600@l */
/* 803F9464  90 01 00 08 */	stw r0, 8(r1)
/* 803F9468  39 00 00 00 */	li r8, 0
/* 803F946C  55 40 10 3A */	slwi r0, r10, 2
/* 803F9470  39 44 E4 3C */	addi r10, r4, gsbg_proc@l /* 0x8065E43C@l */
/* 803F9474  91 01 00 0C */	stw r8, 0xc(r1)
/* 803F9478  7C A4 2B 78 */	mr r4, r5
/* 803F947C  7C C5 33 78 */	mr r5, r6
/* 803F9480  38 C0 00 00 */	li r6, 0
/* 803F9484  90 61 00 10 */	stw r3, 0x10(r1)
/* 803F9488  7D 23 4B 78 */	mr r3, r9
/* 803F948C  39 00 00 00 */	li r8, 0
/* 803F9490  39 20 00 00 */	li r9, 0
/* 803F9494  7D 8A 00 2E */	lwzx r12, r10, r0
/* 803F9498  39 40 00 00 */	li r10, 0
/* 803F949C  7D 89 03 A6 */	mtctr r12
/* 803F94A0  4E 80 04 21 */	bctrl 
/* 803F94A4  2C 03 00 01 */	cmpwi r3, 1
/* 803F94A8  40 82 00 20 */	bne lbl_803F94C8
/* 803F94AC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 803F94B0  2C 00 00 04 */	cmpwi r0, 4
/* 803F94B4  40 82 00 14 */	bne lbl_803F94C8
/* 803F94B8  7F C3 F3 78 */	mr r3, r30
/* 803F94BC  4B FF E6 5D */	bl mCD_ClearCardBgInfo
/* 803F94C0  3B E0 00 01 */	li r31, 1
/* 803F94C4  48 00 00 18 */	b lbl_803F94DC
lbl_803F94C8:
/* 803F94C8  2C 03 FF FF */	cmpwi r3, -1
/* 803F94CC  40 82 00 10 */	bne lbl_803F94DC
/* 803F94D0  7F C3 F3 78 */	mr r3, r30
/* 803F94D4  4B FF E6 45 */	bl mCD_ClearCardBgInfo
/* 803F94D8  3B E0 FF FF */	li r31, -1
lbl_803F94DC:
/* 803F94DC  2C 1F 00 00 */	cmpwi r31, 0
/* 803F94E0  41 82 00 54 */	beq lbl_803F9534
/* 803F94E4  3C 60 81 17 */	lis r3, work_p_1224@ha /* 0x81171600@ha */
/* 803F94E8  38 63 16 00 */	addi r3, r3, work_p_1224@l /* 0x81171600@l */
/* 803F94EC  80 63 00 00 */	lwz r3, 0(r3)
/* 803F94F0  28 03 00 00 */	cmplwi r3, 0
/* 803F94F4  41 82 00 40 */	beq lbl_803F9534
/* 803F94F8  4B FC 2F BD */	bl zelda_free
/* 803F94FC  3C 60 81 17 */	lis r3, work_p_1224@ha /* 0x81171600@ha */
/* 803F9500  38 00 00 00 */	li r0, 0
/* 803F9504  90 03 16 00 */	stw r0, work_p_1224@l(r3)  /* 0x81171600@l */
/* 803F9508  48 00 00 2C */	b lbl_803F9534
lbl_803F950C:
/* 803F950C  3C 60 81 17 */	lis r3, work_p_1224@ha /* 0x81171600@ha */
/* 803F9510  38 63 16 00 */	addi r3, r3, work_p_1224@l /* 0x81171600@l */
/* 803F9514  80 63 00 00 */	lwz r3, 0(r3)
/* 803F9518  28 03 00 00 */	cmplwi r3, 0
/* 803F951C  41 82 00 14 */	beq lbl_803F9530
/* 803F9520  4B FC 2F 95 */	bl zelda_free
/* 803F9524  3C 60 81 17 */	lis r3, work_p_1224@ha /* 0x81171600@ha */
/* 803F9528  38 00 00 00 */	li r0, 0
/* 803F952C  90 03 16 00 */	stw r0, work_p_1224@l(r3)  /* 0x81171600@l */
lbl_803F9530:
/* 803F9530  3B E0 FF FF */	li r31, -1
lbl_803F9534:
/* 803F9534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9538  7F E3 FB 78 */	mr r3, r31
/* 803F953C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F9540  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F9544  7C 08 03 A6 */	mtlr r0
/* 803F9548  38 21 00 20 */	addi r1, r1, 0x20
/* 803F954C  4E 80 00 20 */	blr 
