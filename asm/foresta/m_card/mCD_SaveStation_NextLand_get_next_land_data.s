lbl_80401408:
/* 80401408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040140C  7C 08 02 A6 */	mflr r0
/* 80401410  90 01 00 24 */	stw r0, 0x24(r1)
/* 80401414  39 61 00 20 */	addi r11, r1, 0x20
/* 80401418  4B C9 9A B1 */	bl func_8009AEC8
/* 8040141C  7C 7A 1B 78 */	mr r26, r3
/* 80401420  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80401424  83 9A 00 00 */	lwz r28, 0(r26)
/* 80401428  7C 9E 23 78 */	mr r30, r4
/* 8040142C  28 03 00 00 */	cmplwi r3, 0
/* 80401430  41 82 01 D0 */	beq lbl_80401600
/* 80401434  2C 1C FF FF */	cmpwi r28, -1
/* 80401438  41 82 01 C8 */	beq lbl_80401600
/* 8040143C  80 9A 00 08 */	lwz r4, 8(r26)
/* 80401440  4B C5 BC 29 */	bl bzero
/* 80401444  1C 7C 00 94 */	mulli r3, r28, 0x94
/* 80401448  38 00 00 00 */	li r0, 0
/* 8040144C  3B 60 00 00 */	li r27, 0
/* 80401450  3B E3 00 54 */	addi r31, r3, 0x54
/* 80401454  7F FA FA 14 */	add r31, r26, r31
/* 80401458  90 1F 00 8C */	stw r0, 0x8c(r31)
lbl_8040145C:
/* 8040145C  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80401460  7F 85 E3 78 */	mr r5, r28
/* 80401464  38 9B 00 01 */	addi r4, r27, 1
/* 80401468  38 DF 00 74 */	addi r6, r31, 0x74
/* 8040146C  4B FF 95 55 */	bl mCD_load_file
/* 80401470  2C 03 00 01 */	cmpwi r3, 1
/* 80401474  40 82 00 E0 */	bne lbl_80401554
/* 80401478  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8040147C  80 9A 00 08 */	lwz r4, 8(r26)
/* 80401480  4B FA B0 7D */	bl mFRm_ReturnCheckSum
/* 80401484  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80401488  83 BA 00 0C */	lwz r29, 0xc(r26)
/* 8040148C  40 82 00 B8 */	bne lbl_80401544
/* 80401490  3C 7D 00 01 */	addis r3, r29, 1
/* 80401494  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 80401498  4B FB 23 5D */	bl mLd_CheckId
/* 8040149C  2C 03 00 01 */	cmpwi r3, 1
/* 804014A0  40 82 00 94 */	bne lbl_80401534
/* 804014A4  3C 7D 00 01 */	addis r3, r29, 1
/* 804014A8  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 804014AC  38 63 91 20 */	addi r3, r3, -28384
/* 804014B0  4B FB 26 89 */	bl mLd_CheckThisLand
/* 804014B4  2C 03 00 00 */	cmpwi r3, 0
/* 804014B8  40 82 00 6C */	bne lbl_80401524
/* 804014BC  3C 60 81 17 */	lis r3, l_mcd_keep_startCond@ha /* 0x81171614@ha */
/* 804014C0  80 03 16 14 */	lwz r0, l_mcd_keep_startCond@l(r3)  /* 0x81171614@l */
/* 804014C4  2C 00 00 03 */	cmpwi r0, 3
/* 804014C8  40 82 00 20 */	bne lbl_804014E8
/* 804014CC  4B FB 26 3D */	bl mLd_PlayerManKindCheck
/* 804014D0  2C 03 00 00 */	cmpwi r3, 0
/* 804014D4  41 82 00 14 */	beq lbl_804014E8
/* 804014D8  38 00 00 13 */	li r0, 0x13
/* 804014DC  38 60 FF FF */	li r3, -1
/* 804014E0  90 1E 00 04 */	stw r0, 4(r30)
/* 804014E4  48 00 00 8C */	b lbl_80401570
lbl_804014E8:
/* 804014E8  80 DE 00 00 */	lwz r6, 0(r30)
/* 804014EC  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 804014F0  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 804014F4  38 06 00 01 */	addi r0, r6, 1
/* 804014F8  38 83 16 38 */	addi r4, r3, l_keepSave@l /* 0x81171638@l */
/* 804014FC  90 1E 00 00 */	stw r0, 0(r30)
/* 80401500  7F A3 EB 78 */	mr r3, r29
/* 80401504  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 80401508  4B C5 BB 15 */	bl func_8005D01C
/* 8040150C  3C 60 81 17 */	lis r3, l_keepSave_set@ha /* 0x81171610@ha */
/* 80401510  38 00 00 01 */	li r0, 1
/* 80401514  38 83 16 10 */	addi r4, r3, l_keepSave_set@l /* 0x81171610@l */
/* 80401518  38 60 00 01 */	li r3, 1
/* 8040151C  90 04 00 00 */	stw r0, 0(r4)
/* 80401520  48 00 00 50 */	b lbl_80401570
lbl_80401524:
/* 80401524  38 00 00 17 */	li r0, 0x17
/* 80401528  38 60 FF FF */	li r3, -1
/* 8040152C  90 1E 00 04 */	stw r0, 4(r30)
/* 80401530  48 00 00 34 */	b lbl_80401564
lbl_80401534:
/* 80401534  38 00 00 11 */	li r0, 0x11
/* 80401538  38 60 FF FF */	li r3, -1
/* 8040153C  90 1E 00 04 */	stw r0, 4(r30)
/* 80401540  48 00 00 24 */	b lbl_80401564
lbl_80401544:
/* 80401544  38 00 00 11 */	li r0, 0x11
/* 80401548  38 60 FF FF */	li r3, -1
/* 8040154C  90 1E 00 04 */	stw r0, 4(r30)
/* 80401550  48 00 00 14 */	b lbl_80401564
lbl_80401554:
/* 80401554  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 80401558  38 60 FF FF */	li r3, -1
/* 8040155C  38 04 00 01 */	addi r0, r4, 1
/* 80401560  90 1F 00 8C */	stw r0, 0x8c(r31)
lbl_80401564:
/* 80401564  3B 7B 00 01 */	addi r27, r27, 1
/* 80401568  2C 1B 00 02 */	cmpwi r27, 2
/* 8040156C  41 80 FE F0 */	blt lbl_8040145C
lbl_80401570:
/* 80401570  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 80401574  2C 00 00 02 */	cmpwi r0, 2
/* 80401578  40 82 00 94 */	bne lbl_8040160C
/* 8040157C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80401580  38 03 00 0D */	addi r0, r3, 0xd
/* 80401584  28 00 00 0B */	cmplwi r0, 0xb
/* 80401588  41 81 00 4C */	bgt lbl_804015D4
/* 8040158C  3C 60 80 66 */	lis r3, lit_4216@ha /* 0x8065EAC4@ha */
/* 80401590  54 00 10 3A */	slwi r0, r0, 2
/* 80401594  38 63 EA C4 */	addi r3, r3, lit_4216@l /* 0x8065EAC4@l */
/* 80401598  7C 03 00 2E */	lwzx r0, r3, r0
/* 8040159C  7C 09 03 A6 */	mtctr r0
/* 804015A0  4E 80 04 20 */	bctr 
lbl_804015A4:
/* 804015A4  38 00 00 15 */	li r0, 0x15
/* 804015A8  90 1E 00 04 */	stw r0, 4(r30)
/* 804015AC  48 00 00 4C */	b lbl_804015F8
lbl_804015B0:
/* 804015B0  38 00 00 17 */	li r0, 0x17
/* 804015B4  90 1E 00 04 */	stw r0, 4(r30)
/* 804015B8  48 00 00 40 */	b lbl_804015F8
lbl_804015BC:
/* 804015BC  38 00 00 03 */	li r0, 3
/* 804015C0  90 1E 00 04 */	stw r0, 4(r30)
/* 804015C4  48 00 00 34 */	b lbl_804015F8
lbl_804015C8:
/* 804015C8  38 00 00 04 */	li r0, 4
/* 804015CC  90 1E 00 04 */	stw r0, 4(r30)
/* 804015D0  48 00 00 28 */	b lbl_804015F8
lbl_804015D4:
/* 804015D4  3C 60 81 17 */	lis r3, l_mcd_keep_startCond@ha /* 0x81171614@ha */
/* 804015D8  80 03 16 14 */	lwz r0, l_mcd_keep_startCond@l(r3)  /* 0x81171614@l */
/* 804015DC  2C 00 00 03 */	cmpwi r0, 3
/* 804015E0  40 82 00 10 */	bne lbl_804015F0
/* 804015E4  38 00 00 13 */	li r0, 0x13
/* 804015E8  90 1E 00 04 */	stw r0, 4(r30)
/* 804015EC  48 00 00 0C */	b lbl_804015F8
lbl_804015F0:
/* 804015F0  38 00 00 17 */	li r0, 0x17
/* 804015F4  90 1E 00 04 */	stw r0, 4(r30)
lbl_804015F8:
/* 804015F8  38 60 FF FF */	li r3, -1
/* 804015FC  48 00 00 10 */	b lbl_8040160C
lbl_80401600:
/* 80401600  38 00 00 17 */	li r0, 0x17
/* 80401604  38 60 FF FF */	li r3, -1
/* 80401608  90 1E 00 04 */	stw r0, 4(r30)
lbl_8040160C:
/* 8040160C  39 61 00 20 */	addi r11, r1, 0x20
/* 80401610  4B C9 99 05 */	bl func_8009AF14
/* 80401614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80401618  7C 08 03 A6 */	mtlr r0
/* 8040161C  38 21 00 20 */	addi r1, r1, 0x20
/* 80401620  4E 80 00 20 */	blr 