lbl_8058C510:
/* 8058C510  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C514  7C 08 02 A6 */	mflr r0
/* 8058C518  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C51C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C520  4B B0 E9 B5 */	bl func_8009AED4
/* 8058C524  7C 7F 1B 78 */	mr r31, r3
/* 8058C528  7C 9E 23 78 */	mr r30, r4
/* 8058C52C  3B A0 00 00 */	li r29, 0
/* 8058C530  38 60 00 08 */	li r3, 8
/* 8058C534  7F E4 FB 78 */	mr r4, r31
/* 8058C538  4B E0 DD 2D */	bl mDemo_Check
/* 8058C53C  2C 03 00 00 */	cmpwi r3, 0
/* 8058C540  40 82 00 2C */	bne lbl_8058C56C
/* 8058C544  7F E4 FB 78 */	mr r4, r31
/* 8058C548  38 60 00 07 */	li r3, 7
/* 8058C54C  4B E0 DD 19 */	bl mDemo_Check
/* 8058C550  2C 03 00 00 */	cmpwi r3, 0
/* 8058C554  40 82 00 18 */	bne lbl_8058C56C
/* 8058C558  88 BF 09 A9 */	lbz r5, 0x9a9(r31)
/* 8058C55C  7F E3 FB 78 */	mr r3, r31
/* 8058C560  7F C4 F3 78 */	mr r4, r30
/* 8058C564  48 00 0F B9 */	bl aTKN1_setup_think_proc
/* 8058C568  3B A0 00 01 */	li r29, 1
lbl_8058C56C:
/* 8058C56C  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 8058C570  4B DE 3F B1 */	bl cKF_FrameControl_stop_proc
/* 8058C574  2C 03 00 01 */	cmpwi r3, 1
/* 8058C578  40 82 00 90 */	bne lbl_8058C608
/* 8058C57C  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 8058C580  A8 7F 09 74 */	lha r3, 0x974(r31)
/* 8058C584  7C 00 18 00 */	cmpw r0, r3
/* 8058C588  40 82 00 80 */	bne lbl_8058C608
/* 8058C58C  2C 03 00 68 */	cmpwi r3, 0x68
/* 8058C590  3B C0 00 00 */	li r30, 0
/* 8058C594  41 82 00 14 */	beq lbl_8058C5A8
/* 8058C598  40 80 00 38 */	bge lbl_8058C5D0
/* 8058C59C  2C 03 00 67 */	cmpwi r3, 0x67
/* 8058C5A0  40 80 00 24 */	bge lbl_8058C5C4
/* 8058C5A4  48 00 00 2C */	b lbl_8058C5D0
lbl_8058C5A8:
/* 8058C5A8  38 00 08 00 */	li r0, 0x800
/* 8058C5AC  38 80 00 66 */	li r4, 0x66
/* 8058C5B0  B0 1F 09 26 */	sth r0, 0x926(r31)
/* 8058C5B4  3B C0 00 01 */	li r30, 1
/* 8058C5B8  A8 1F 00 B6 */	lha r0, 0xb6(r31)
/* 8058C5BC  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 8058C5C0  48 00 00 14 */	b lbl_8058C5D4
lbl_8058C5C4:
/* 8058C5C4  38 80 00 68 */	li r4, 0x68
/* 8058C5C8  3B C0 00 00 */	li r30, 0
/* 8058C5CC  48 00 00 08 */	b lbl_8058C5D4
lbl_8058C5D0:
/* 8058C5D0  38 80 00 F6 */	li r4, 0xf6
lbl_8058C5D4:
/* 8058C5D4  2C 04 00 F6 */	cmpwi r4, 0xf6
/* 8058C5D8  41 82 00 30 */	beq lbl_8058C608
/* 8058C5DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058C5E0  B0 9F 09 74 */	sth r4, 0x974(r31)
/* 8058C5E4  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8058C5E8  3C A5 00 02 */	addis r5, r5, 2
/* 8058C5EC  7F E3 FB 78 */	mr r3, r31
/* 8058C5F0  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 8058C5F4  38 A0 00 01 */	li r5, 1
/* 8058C5F8  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058C5FC  7D 89 03 A6 */	mtctr r12
/* 8058C600  4E 80 04 21 */	bctrl 
/* 8058C604  93 DF 01 BC */	stw r30, 0x1bc(r31)
lbl_8058C608:
/* 8058C608  7F A3 EB 78 */	mr r3, r29
/* 8058C60C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C610  4B B0 E9 11 */	bl func_8009AF20
/* 8058C614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C618  7C 08 03 A6 */	mtlr r0
/* 8058C61C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C620  4E 80 00 20 */	blr 
