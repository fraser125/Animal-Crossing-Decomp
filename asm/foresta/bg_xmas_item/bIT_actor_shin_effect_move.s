lbl_804C7478:
/* 804C7478  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C747C  7C 08 02 A6 */	mflr r0
/* 804C7480  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C7484  39 61 00 40 */	addi r11, r1, 0x40
/* 804C7488  4B BD 3A 45 */	bl func_8009AECC
/* 804C748C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804C7490  7C 7C 1B 78 */	mr r28, r3
/* 804C7494  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804C7498  7C 9D 23 78 */	mr r29, r4
/* 804C749C  3F E3 00 02 */	addis r31, r3, 2
/* 804C74A0  3B 60 00 00 */	li r27, 0
/* 804C74A4  3B C0 00 00 */	li r30, 0
/* 804C74A8  48 00 01 4C */	b lbl_804C75F4
lbl_804C74AC:
/* 804C74AC  A0 1D 00 0E */	lhz r0, 0xe(r29)
/* 804C74B0  2C 00 00 04 */	cmpwi r0, 4
/* 804C74B4  41 82 00 E0 */	beq lbl_804C7594
/* 804C74B8  40 80 00 1C */	bge lbl_804C74D4
/* 804C74BC  2C 00 00 02 */	cmpwi r0, 2
/* 804C74C0  41 82 00 7C */	beq lbl_804C753C
/* 804C74C4  40 80 01 28 */	bge lbl_804C75EC
/* 804C74C8  2C 00 00 01 */	cmpwi r0, 1
/* 804C74CC  40 80 00 18 */	bge lbl_804C74E4
/* 804C74D0  48 00 01 1C */	b lbl_804C75EC
lbl_804C74D4:
/* 804C74D4  2C 00 00 06 */	cmpwi r0, 6
/* 804C74D8  41 82 00 F4 */	beq lbl_804C75CC
/* 804C74DC  40 80 01 10 */	bge lbl_804C75EC
/* 804C74E0  48 00 00 C8 */	b lbl_804C75A8
lbl_804C74E4:
/* 804C74E4  80 7D 00 00 */	lwz r3, 0(r29)
/* 804C74E8  7F 87 E3 78 */	mr r7, r28
/* 804C74EC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C74F0  38 81 00 14 */	addi r4, r1, 0x14
/* 804C74F4  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 804C74F8  57 C8 04 3E */	clrlwi r8, r30, 0x10
/* 804C74FC  90 61 00 14 */	stw r3, 0x14(r1)
/* 804C7500  38 60 00 32 */	li r3, 0x32
/* 804C7504  38 A0 00 01 */	li r5, 1
/* 804C7508  38 C0 00 00 */	li r6, 0
/* 804C750C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C7510  39 20 00 00 */	li r9, 0
/* 804C7514  39 40 00 00 */	li r10, 0
/* 804C7518  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C751C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C7520  81 8B 00 00 */	lwz r12, 0(r11)
/* 804C7524  7D 89 03 A6 */	mtctr r12
/* 804C7528  4E 80 04 21 */	bctrl 
/* 804C752C  38 00 00 03 */	li r0, 3
/* 804C7530  3B 60 00 01 */	li r27, 1
/* 804C7534  B0 1D 00 0E */	sth r0, 0xe(r29)
/* 804C7538  48 00 00 B4 */	b lbl_804C75EC
lbl_804C753C:
/* 804C753C  80 7D 00 00 */	lwz r3, 0(r29)
/* 804C7540  7F 87 E3 78 */	mr r7, r28
/* 804C7544  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C7548  38 81 00 08 */	addi r4, r1, 8
/* 804C754C  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 804C7550  57 C8 04 3E */	clrlwi r8, r30, 0x10
/* 804C7554  90 61 00 08 */	stw r3, 8(r1)
/* 804C7558  38 60 00 32 */	li r3, 0x32
/* 804C755C  38 A0 00 01 */	li r5, 1
/* 804C7560  38 C0 00 00 */	li r6, 0
/* 804C7564  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C7568  39 20 00 01 */	li r9, 1
/* 804C756C  39 40 00 00 */	li r10, 0
/* 804C7570  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C7574  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C7578  81 8B 00 00 */	lwz r12, 0(r11)
/* 804C757C  7D 89 03 A6 */	mtctr r12
/* 804C7580  4E 80 04 21 */	bctrl 
/* 804C7584  38 00 00 04 */	li r0, 4
/* 804C7588  3B 60 00 01 */	li r27, 1
/* 804C758C  B0 1D 00 0E */	sth r0, 0xe(r29)
/* 804C7590  48 00 00 5C */	b lbl_804C75EC
lbl_804C7594:
/* 804C7594  7F A3 EB 78 */	mr r3, r29
/* 804C7598  7F A5 EB 78 */	mr r5, r29
/* 804C759C  38 80 00 2C */	li r4, 0x2c
/* 804C75A0  48 16 69 A5 */	bl sAdo_OngenPos
/* 804C75A4  48 00 00 48 */	b lbl_804C75EC
lbl_804C75A8:
/* 804C75A8  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804C75AC  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 804C75B0  38 60 00 32 */	li r3, 0x32
/* 804C75B4  81 85 00 04 */	lwz r12, 4(r5)
/* 804C75B8  7D 89 03 A6 */	mtctr r12
/* 804C75BC  4E 80 04 21 */	bctrl 
/* 804C75C0  38 00 00 00 */	li r0, 0
/* 804C75C4  B0 1D 00 0E */	sth r0, 0xe(r29)
/* 804C75C8  48 00 00 24 */	b lbl_804C75EC
lbl_804C75CC:
/* 804C75CC  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804C75D0  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 804C75D4  38 60 00 32 */	li r3, 0x32
/* 804C75D8  81 85 00 04 */	lwz r12, 4(r5)
/* 804C75DC  7D 89 03 A6 */	mtctr r12
/* 804C75E0  4E 80 04 21 */	bctrl 
/* 804C75E4  38 00 00 00 */	li r0, 0
/* 804C75E8  B0 1D 00 0E */	sth r0, 0xe(r29)
lbl_804C75EC:
/* 804C75EC  3B DE 00 01 */	addi r30, r30, 1
/* 804C75F0  3B BD 00 10 */	addi r29, r29, 0x10
lbl_804C75F4:
/* 804C75F4  2C 1B 00 00 */	cmpwi r27, 0
/* 804C75F8  40 82 00 0C */	bne lbl_804C7604
/* 804C75FC  2C 1E 00 01 */	cmpwi r30, 1
/* 804C7600  41 80 FE AC */	blt lbl_804C74AC
lbl_804C7604:
/* 804C7604  7F 63 DB 78 */	mr r3, r27
/* 804C7608  39 61 00 40 */	addi r11, r1, 0x40
/* 804C760C  4B BD 39 0D */	bl func_8009AF18
/* 804C7610  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C7614  7C 08 03 A6 */	mtlr r0
/* 804C7618  38 21 00 40 */	addi r1, r1, 0x40
/* 804C761C  4E 80 00 20 */	blr 