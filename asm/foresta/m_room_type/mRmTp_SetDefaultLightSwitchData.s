lbl_803E73DC:
/* 803E73DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E73E0  7C 08 02 A6 */	mflr r0
/* 803E73E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E73E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803E73EC  4B CB 3A E1 */	bl func_8009AECC
/* 803E73F0  2C 03 00 00 */	cmpwi r3, 0
/* 803E73F4  40 82 00 68 */	bne lbl_803E745C
/* 803E73F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E73FC  3C A0 81 17 */	lis r5, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E7400  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E7404  38 E0 00 00 */	li r7, 0
/* 803E7408  38 C5 14 3C */	addi r6, r5, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E740C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803E7410  3C 84 00 02 */	addis r4, r4, 2
/* 803E7414  38 00 00 04 */	li r0, 4
/* 803E7418  38 A3 FD 20 */	addi r5, r3, 0xFD20 /* 0x0000FD20@l */
/* 803E741C  90 E6 00 00 */	stw r7, 0(r6)
/* 803E7420  81 04 61 1C */	lwz r8, 0x611c(r4)
/* 803E7424  38 60 00 01 */	li r3, 1
/* 803E7428  7C 09 03 A6 */	mtctr r0
lbl_803E742C:
/* 803E742C  7C 08 28 00 */	cmpw r8, r5
/* 803E7430  40 80 00 0C */	bge lbl_803E743C
/* 803E7434  2C 08 46 50 */	cmpwi r8, 0x4650
/* 803E7438  40 80 00 14 */	bge lbl_803E744C
lbl_803E743C:
/* 803E743C  80 86 00 00 */	lwz r4, 0(r6)
/* 803E7440  7C 60 38 30 */	slw r0, r3, r7
/* 803E7444  7C 80 03 78 */	or r0, r4, r0
/* 803E7448  90 06 00 00 */	stw r0, 0(r6)
lbl_803E744C:
/* 803E744C  38 E7 00 02 */	addi r7, r7, 2
/* 803E7450  42 00 FF DC */	bdnz lbl_803E742C
/* 803E7454  38 60 00 01 */	li r3, 1
/* 803E7458  48 00 01 40 */	b lbl_803E7598
lbl_803E745C:
/* 803E745C  2C 03 00 01 */	cmpwi r3, 1
/* 803E7460  40 82 00 58 */	bne lbl_803E74B8
/* 803E7464  3C 60 81 17 */	lis r3, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E7468  3B 60 00 00 */	li r27, 0
/* 803E746C  3B A3 14 3C */	addi r29, r3, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E7470  3B E0 00 00 */	li r31, 0
/* 803E7474  93 7D 00 00 */	stw r27, 0(r29)
/* 803E7478  3B 80 00 01 */	li r28, 1
lbl_803E747C:
/* 803E747C  7F 63 DB 78 */	mr r3, r27
/* 803E7480  38 80 00 01 */	li r4, 1
/* 803E7484  4B FF FE CD */	bl mRmTp_CheckMyRoomLightON
/* 803E7488  2C 03 00 00 */	cmpwi r3, 0
/* 803E748C  41 82 00 14 */	beq lbl_803E74A0
/* 803E7490  80 7D 00 00 */	lwz r3, 0(r29)
/* 803E7494  7F 80 F8 30 */	slw r0, r28, r31
/* 803E7498  7C 60 03 78 */	or r0, r3, r0
/* 803E749C  90 1D 00 00 */	stw r0, 0(r29)
lbl_803E74A0:
/* 803E74A0  3B 7B 00 01 */	addi r27, r27, 1
/* 803E74A4  3B FF 00 02 */	addi r31, r31, 2
/* 803E74A8  2C 1B 00 04 */	cmpwi r27, 4
/* 803E74AC  41 80 FF D0 */	blt lbl_803E747C
/* 803E74B0  38 60 00 01 */	li r3, 1
/* 803E74B4  48 00 00 E4 */	b lbl_803E7598
lbl_803E74B8:
/* 803E74B8  2C 03 00 02 */	cmpwi r3, 2
/* 803E74BC  40 82 00 58 */	bne lbl_803E7514
/* 803E74C0  3C 60 81 17 */	lis r3, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E74C4  3B 60 00 00 */	li r27, 0
/* 803E74C8  3B A3 14 3C */	addi r29, r3, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E74CC  3B E0 00 00 */	li r31, 0
/* 803E74D0  93 7D 00 00 */	stw r27, 0(r29)
/* 803E74D4  3B 80 00 01 */	li r28, 1
lbl_803E74D8:
/* 803E74D8  7F 63 DB 78 */	mr r3, r27
/* 803E74DC  38 80 00 01 */	li r4, 1
/* 803E74E0  4B FF FE 71 */	bl mRmTp_CheckMyRoomLightON
/* 803E74E4  2C 03 00 00 */	cmpwi r3, 0
/* 803E74E8  41 82 00 14 */	beq lbl_803E74FC
/* 803E74EC  80 7D 00 00 */	lwz r3, 0(r29)
/* 803E74F0  7F 80 F8 30 */	slw r0, r28, r31
/* 803E74F4  7C 60 03 78 */	or r0, r3, r0
/* 803E74F8  90 1D 00 00 */	stw r0, 0(r29)
lbl_803E74FC:
/* 803E74FC  3B 7B 00 01 */	addi r27, r27, 1
/* 803E7500  3B FF 00 02 */	addi r31, r31, 2
/* 803E7504  2C 1B 00 04 */	cmpwi r27, 4
/* 803E7508  41 80 FF D0 */	blt lbl_803E74D8
/* 803E750C  38 60 00 01 */	li r3, 1
/* 803E7510  48 00 00 88 */	b lbl_803E7598
lbl_803E7514:
/* 803E7514  2C 03 00 03 */	cmpwi r3, 3
/* 803E7518  40 82 00 7C */	bne lbl_803E7594
/* 803E751C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E7520  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E7524  3C 63 00 02 */	addis r3, r3, 2
/* 803E7528  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 803E752C  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 803E7530  4B FC C0 89 */	bl mHS_get_arrange_idx
/* 803E7534  3C 80 81 17 */	lis r4, l_mRmTp_switch_data@ha /* 0x8117143C@ha */
/* 803E7538  3B 60 00 00 */	li r27, 0
/* 803E753C  3B A4 14 3C */	addi r29, r4, l_mRmTp_switch_data@l /* 0x8117143C@l */
/* 803E7540  7C 7C 1B 78 */	mr r28, r3
/* 803E7544  93 7D 00 00 */	stw r27, 0(r29)
/* 803E7548  3B E0 00 00 */	li r31, 0
/* 803E754C  3B C0 00 01 */	li r30, 1
lbl_803E7550:
/* 803E7550  7C 1B E0 00 */	cmpw r27, r28
/* 803E7554  41 82 00 28 */	beq lbl_803E757C
/* 803E7558  7F 63 DB 78 */	mr r3, r27
/* 803E755C  38 80 00 01 */	li r4, 1
/* 803E7560  4B FF FD F1 */	bl mRmTp_CheckMyRoomLightON
/* 803E7564  2C 03 00 00 */	cmpwi r3, 0
/* 803E7568  41 82 00 14 */	beq lbl_803E757C
/* 803E756C  80 7D 00 00 */	lwz r3, 0(r29)
/* 803E7570  7F C0 F8 30 */	slw r0, r30, r31
/* 803E7574  7C 60 03 78 */	or r0, r3, r0
/* 803E7578  90 1D 00 00 */	stw r0, 0(r29)
lbl_803E757C:
/* 803E757C  3B 7B 00 01 */	addi r27, r27, 1
/* 803E7580  3B FF 00 02 */	addi r31, r31, 2
/* 803E7584  2C 1B 00 04 */	cmpwi r27, 4
/* 803E7588  41 80 FF C8 */	blt lbl_803E7550
/* 803E758C  38 60 00 01 */	li r3, 1
/* 803E7590  48 00 00 08 */	b lbl_803E7598
lbl_803E7594:
/* 803E7594  38 60 00 00 */	li r3, 0
lbl_803E7598:
/* 803E7598  39 61 00 20 */	addi r11, r1, 0x20
/* 803E759C  4B CB 39 7D */	bl func_8009AF18
/* 803E75A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E75A4  7C 08 03 A6 */	mtlr r0
/* 803E75A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803E75AC  4E 80 00 20 */	blr 
