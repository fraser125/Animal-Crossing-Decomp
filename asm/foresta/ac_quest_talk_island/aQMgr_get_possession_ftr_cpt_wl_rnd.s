lbl_8048DAD4:
/* 8048DAD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048DAD8  7C 08 02 A6 */	mflr r0
/* 8048DADC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048DAE0  39 61 00 40 */	addi r11, r1, 0x40
/* 8048DAE4  4B C0 D3 E1 */	bl func_8009AEC4
/* 8048DAE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048DAEC  7C 7D 1B 78 */	mr r29, r3
/* 8048DAF0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8048DAF4  3B C0 FF FF */	li r30, -1
/* 8048DAF8  3F 63 00 02 */	addis r27, r3, 2
/* 8048DAFC  38 80 00 01 */	li r4, 1
/* 8048DB00  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8048DB04  38 A0 00 00 */	li r5, 0
/* 8048DB08  3B E3 00 68 */	addi r31, r3, 0x68
/* 8048DB0C  4B FF FF 25 */	bl aQMgr_GetPossessionItemSumFGTypeWithCond_cancelSPFamicom
/* 8048DB10  7C 7C 1B 78 */	mr r28, r3
/* 8048DB14  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8048DB18  38 80 00 03 */	li r4, 3
/* 8048DB1C  38 A0 00 00 */	li r5, 0
/* 8048DB20  4B FF FF 11 */	bl aQMgr_GetPossessionItemSumFGTypeWithCond_cancelSPFamicom
/* 8048DB24  7F 9C 1A 14 */	add r28, r28, r3
/* 8048DB28  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8048DB2C  38 80 00 06 */	li r4, 6
/* 8048DB30  38 A0 00 00 */	li r5, 0
/* 8048DB34  4B F5 2F CD */	bl mPr_GetPossessionItemSumItemCategoryWithCond
/* 8048DB38  7F 9C 1A 14 */	add r28, r28, r3
/* 8048DB3C  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8048DB40  38 80 00 07 */	li r4, 7
/* 8048DB44  38 A0 00 00 */	li r5, 0
/* 8048DB48  4B F5 2F B9 */	bl mPr_GetPossessionItemSumItemCategoryWithCond
/* 8048DB4C  7F 9C 1A 15 */	add. r28, r28, r3
/* 8048DB50  41 82 00 CC */	beq lbl_8048DC1C
/* 8048DB54  4B BC F1 A1 */	bl fqrand
/* 8048DB58  3C 00 43 30 */	lis r0, 0x4330
/* 8048DB5C  93 81 00 0C */	stw r28, 0xc(r1)
/* 8048DB60  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644C34@ha */
/* 8048DB64  3B 20 00 00 */	li r25, 0
/* 8048DB68  90 01 00 08 */	stw r0, 8(r1)
/* 8048DB6C  3B 80 00 00 */	li r28, 0
/* 8048DB70  C8 43 4C 34 */	lfd f2, lit_555@l(r3)  /* 0x80644C34@l */
/* 8048DB74  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048DB78  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048DB7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DB80  FC 00 00 1E */	fctiwz f0, f0
/* 8048DB84  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8048DB88  83 41 00 14 */	lwz r26, 0x14(r1)
lbl_8048DB8C:
/* 8048DB8C  80 7B 61 3C */	lwz r3, 0x613c(r27)
/* 8048DB90  80 03 00 88 */	lwz r0, 0x88(r3)
/* 8048DB94  7C 00 E4 30 */	srw r0, r0, r28
/* 8048DB98  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8048DB9C  40 82 00 6C */	bne lbl_8048DC08
/* 8048DBA0  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8048DBA4  38 80 00 00 */	li r4, 0
/* 8048DBA8  38 A0 00 0F */	li r5, 0xf
/* 8048DBAC  38 C0 00 00 */	li r6, 0
/* 8048DBB0  4B F5 AD 11 */	bl mSP_SearchItemCategoryPriority
/* 8048DBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8048DBB8  40 82 00 50 */	bne lbl_8048DC08
/* 8048DBBC  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8048DBC0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048DBC4  2C 00 00 01 */	cmpwi r0, 1
/* 8048DBC8  41 82 00 28 */	beq lbl_8048DBF0
/* 8048DBCC  2C 00 00 03 */	cmpwi r0, 3
/* 8048DBD0  41 82 00 20 */	beq lbl_8048DBF0
/* 8048DBD4  2C 00 00 02 */	cmpwi r0, 2
/* 8048DBD8  40 82 00 30 */	bne lbl_8048DC08
/* 8048DBDC  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 8048DBE0  2C 00 00 06 */	cmpwi r0, 6
/* 8048DBE4  41 82 00 0C */	beq lbl_8048DBF0
/* 8048DBE8  2C 00 00 07 */	cmpwi r0, 7
/* 8048DBEC  40 82 00 1C */	bne lbl_8048DC08
lbl_8048DBF0:
/* 8048DBF0  2C 1A 00 00 */	cmpwi r26, 0
/* 8048DBF4  41 81 00 10 */	bgt lbl_8048DC04
/* 8048DBF8  B0 7D 00 00 */	sth r3, 0(r29)
/* 8048DBFC  7F 3E CB 78 */	mr r30, r25
/* 8048DC00  48 00 00 1C */	b lbl_8048DC1C
lbl_8048DC04:
/* 8048DC04  3B 5A FF FF */	addi r26, r26, -1
lbl_8048DC08:
/* 8048DC08  3B 39 00 01 */	addi r25, r25, 1
/* 8048DC0C  3B 9C 00 02 */	addi r28, r28, 2
/* 8048DC10  2C 19 00 0F */	cmpwi r25, 0xf
/* 8048DC14  3B FF 00 02 */	addi r31, r31, 2
/* 8048DC18  41 80 FF 74 */	blt lbl_8048DB8C
lbl_8048DC1C:
/* 8048DC1C  7F C3 F3 78 */	mr r3, r30
/* 8048DC20  39 61 00 40 */	addi r11, r1, 0x40
/* 8048DC24  4B C0 D2 ED */	bl func_8009AF10
/* 8048DC28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048DC2C  7C 08 03 A6 */	mtlr r0
/* 8048DC30  38 21 00 40 */	addi r1, r1, 0x40
/* 8048DC34  4E 80 00 20 */	blr 
