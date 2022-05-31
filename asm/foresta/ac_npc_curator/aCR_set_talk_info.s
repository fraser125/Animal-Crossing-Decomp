lbl_8054CBC8:
/* 8054CBC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054CBCC  7C 08 02 A6 */	mflr r0
/* 8054CBD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054CBD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054CBD8  4B B4 E2 F1 */	bl func_8009AEC8
/* 8054CBDC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054CBE0  7C 7E 1B 78 */	mr r30, r3
/* 8054CBE4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8054CBE8  3B E0 00 00 */	li r31, 0
/* 8054CBEC  3F A3 00 02 */	addis r29, r3, 2
/* 8054CBF0  80 7D 60 F8 */	lwz r3, 0x60f8(r29)
/* 8054CBF4  28 03 00 00 */	cmplwi r3, 0
/* 8054CBF8  41 82 00 40 */	beq lbl_8054CC38
/* 8054CBFC  81 83 00 00 */	lwz r12, 0(r3)
/* 8054CC00  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D06D@ha */
/* 8054CC04  38 63 D0 6D */	addi r3, r3, 0xD06D /* 0x0000D06D@l */
/* 8054CC08  7D 89 03 A6 */	mtctr r12
/* 8054CC0C  4E 80 04 21 */	bctrl 
/* 8054CC10  2C 03 00 00 */	cmpwi r3, 0
/* 8054CC14  40 82 00 24 */	bne lbl_8054CC38
/* 8054CC18  80 BD 60 F8 */	lwz r5, 0x60f8(r29)
/* 8054CC1C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D06D@ha */
/* 8054CC20  38 63 D0 6D */	addi r3, r3, 0xD06D /* 0x0000D06D@l */
/* 8054CC24  38 80 00 01 */	li r4, 1
/* 8054CC28  81 85 00 08 */	lwz r12, 8(r5)
/* 8054CC2C  7D 89 03 A6 */	mtctr r12
/* 8054CC30  4E 80 04 21 */	bctrl 
/* 8054CC34  48 00 00 C0 */	b lbl_8054CCF4
lbl_8054CC38:
/* 8054CC38  3B A0 00 00 */	li r29, 0
/* 8054CC3C  3B 80 00 00 */	li r28, 0
/* 8054CC40  3B 60 00 00 */	li r27, 0
/* 8054CC44  3B 40 00 00 */	li r26, 0
/* 8054CC48  4B FF EE FD */	bl aCR_countDisplayed
/* 8054CC4C  2C 03 00 78 */	cmpwi r3, 0x78
/* 8054CC50  40 82 00 08 */	bne lbl_8054CC58
/* 8054CC54  3B A0 00 01 */	li r29, 1
lbl_8054CC58:
/* 8054CC58  4B E6 6E B1 */	bl mLd_PlayerManKindCheck
/* 8054CC5C  2C 03 00 00 */	cmpwi r3, 0
/* 8054CC60  40 82 00 08 */	bne lbl_8054CC68
/* 8054CC64  3B 80 00 01 */	li r28, 1
lbl_8054CC68:
/* 8054CC68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054CC6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054CC70  3C 63 00 03 */	addis r3, r3, 3
/* 8054CC74  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 8054CC78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8054CC7C  41 82 00 08 */	beq lbl_8054CC84
/* 8054CC80  3B 60 00 01 */	li r27, 1
lbl_8054CC84:
/* 8054CC84  4B FF E5 31 */	bl aCR_check_sleep_time
/* 8054CC88  2C 03 00 01 */	cmpwi r3, 1
/* 8054CC8C  40 82 00 18 */	bne lbl_8054CCA4
/* 8054CC90  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8054CC94  2C 00 00 01 */	cmpwi r0, 1
/* 8054CC98  40 82 00 10 */	bne lbl_8054CCA8
/* 8054CC9C  3B 40 00 01 */	li r26, 1
/* 8054CCA0  48 00 00 08 */	b lbl_8054CCA8
lbl_8054CCA4:
/* 8054CCA4  3B 40 00 02 */	li r26, 2
lbl_8054CCA8:
/* 8054CCA8  2C 1D 00 00 */	cmpwi r29, 0
/* 8054CCAC  40 82 00 20 */	bne lbl_8054CCCC
/* 8054CCB0  2C 1C 00 00 */	cmpwi r28, 0
/* 8054CCB4  40 82 00 14 */	bne lbl_8054CCC8
/* 8054CCB8  2C 1B 00 00 */	cmpwi r27, 0
/* 8054CCBC  40 82 00 10 */	bne lbl_8054CCCC
/* 8054CCC0  3B E0 00 01 */	li r31, 1
/* 8054CCC4  48 00 00 08 */	b lbl_8054CCCC
lbl_8054CCC8:
/* 8054CCC8  3B E0 00 02 */	li r31, 2
lbl_8054CCCC:
/* 8054CCCC  1C BD 00 30 */	mulli r5, r29, 0x30
/* 8054CCD0  3C 60 80 6A */	lis r3, msg_no_1046@ha /* 0x806A53CC@ha */
/* 8054CCD4  57 40 10 3A */	slwi r0, r26, 2
/* 8054CCD8  38 63 53 CC */	addi r3, r3, msg_no_1046@l /* 0x806A53CC@l */
/* 8054CCDC  1C 9C 00 18 */	mulli r4, r28, 0x18
/* 8054CCE0  7C A3 2A 14 */	add r5, r3, r5
/* 8054CCE4  1C 7B 00 0C */	mulli r3, r27, 0xc
/* 8054CCE8  7C 85 22 14 */	add r4, r5, r4
/* 8054CCEC  7C 64 1A 14 */	add r3, r4, r3
/* 8054CCF0  7C 63 00 2E */	lwzx r3, r3, r0
lbl_8054CCF4:
/* 8054CCF4  4B E4 B8 21 */	bl mDemo_Set_msg_num
/* 8054CCF8  93 FE 09 A0 */	stw r31, 0x9a0(r30)
/* 8054CCFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054CD00  4B B4 E2 15 */	bl func_8009AF14
/* 8054CD04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054CD08  7C 08 03 A6 */	mtlr r0
/* 8054CD0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054CD10  4E 80 00 20 */	blr 
