lbl_804024E8:
/* 804024E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804024EC  7C 08 02 A6 */	mflr r0
/* 804024F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804024F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804024F8  4B C9 89 D9 */	bl func_8009AED0
/* 804024FC  7C 7D 1B 78 */	mr r29, r3
/* 80402500  7C 9E 23 78 */	mr r30, r4
/* 80402504  4B FF 9D ED */	bl mCD_write_common
/* 80402508  7C 7F 1B 78 */	mr r31, r3
/* 8040250C  2C 1F 00 01 */	cmpwi r31, 1
/* 80402510  40 82 00 5C */	bne lbl_8040256C
/* 80402514  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402518  80 9D 00 08 */	lwz r4, 8(r29)
/* 8040251C  4B C5 AB 4D */	bl bzero
/* 80402520  80 7D 00 00 */	lwz r3, 0(r29)
/* 80402524  38 00 00 07 */	li r0, 7
/* 80402528  7C 63 18 F8 */	nor r3, r3, r3
/* 8040252C  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 80402530  90 7D 00 00 */	stw r3, 0(r29)
/* 80402534  90 1D 00 04 */	stw r0, 4(r29)
/* 80402538  80 7D 00 04 */	lwz r3, 4(r29)
/* 8040253C  4B FF 7F 1D */	bl mCD_get_size
/* 80402540  90 7D 00 08 */	stw r3, 8(r29)
/* 80402544  80 1E 00 08 */	lwz r0, 8(r30)
/* 80402548  2C 00 00 00 */	cmpwi r0, 0
/* 8040254C  40 82 00 14 */	bne lbl_80402560
/* 80402550  80 7E 00 00 */	lwz r3, 0(r30)
/* 80402554  38 03 00 01 */	addi r0, r3, 1
/* 80402558  90 1E 00 00 */	stw r0, 0(r30)
/* 8040255C  48 00 01 40 */	b lbl_8040269C
lbl_80402560:
/* 80402560  38 00 00 08 */	li r0, 8
/* 80402564  90 1E 00 00 */	stw r0, 0(r30)
/* 80402568  48 00 01 34 */	b lbl_8040269C
lbl_8040256C:
/* 8040256C  2C 1F 00 00 */	cmpwi r31, 0
/* 80402570  41 82 01 2C */	beq lbl_8040269C
/* 80402574  80 1D 00 00 */	lwz r0, 0(r29)
/* 80402578  2C 00 FF FF */	cmpwi r0, -1
/* 8040257C  41 82 00 60 */	beq lbl_804025DC
/* 80402580  1C 60 00 94 */	mulli r3, r0, 0x94
/* 80402584  38 03 00 C8 */	addi r0, r3, 0xc8
/* 80402588  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8040258C  2C 00 FF FA */	cmpwi r0, -6
/* 80402590  41 82 00 28 */	beq lbl_804025B8
/* 80402594  40 80 00 10 */	bge lbl_804025A4
/* 80402598  2C 00 FF F3 */	cmpwi r0, -13
/* 8040259C  41 82 00 1C */	beq lbl_804025B8
/* 804025A0  48 00 00 30 */	b lbl_804025D0
lbl_804025A4:
/* 804025A4  2C 00 FF FF */	cmpwi r0, -1
/* 804025A8  40 80 00 28 */	bge lbl_804025D0
/* 804025AC  2C 00 FF FD */	cmpwi r0, -3
/* 804025B0  40 80 00 14 */	bge lbl_804025C4
/* 804025B4  48 00 00 1C */	b lbl_804025D0
lbl_804025B8:
/* 804025B8  38 00 00 04 */	li r0, 4
/* 804025BC  90 1E 00 04 */	stw r0, 4(r30)
/* 804025C0  48 00 00 24 */	b lbl_804025E4
lbl_804025C4:
/* 804025C4  38 00 00 16 */	li r0, 0x16
/* 804025C8  90 1E 00 04 */	stw r0, 4(r30)
/* 804025CC  48 00 00 18 */	b lbl_804025E4
lbl_804025D0:
/* 804025D0  38 00 00 02 */	li r0, 2
/* 804025D4  90 1E 00 04 */	stw r0, 4(r30)
/* 804025D8  48 00 00 0C */	b lbl_804025E4
lbl_804025DC:
/* 804025DC  38 00 00 02 */	li r0, 2
/* 804025E0  90 1E 00 04 */	stw r0, 4(r30)
lbl_804025E4:
/* 804025E4  80 7E 00 04 */	lwz r3, 4(r30)
/* 804025E8  38 00 00 02 */	li r0, 2
/* 804025EC  90 7E 00 0C */	stw r3, 0xc(r30)
/* 804025F0  80 7D 00 00 */	lwz r3, 0(r29)
/* 804025F4  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 804025F8  90 1D 00 04 */	stw r0, 4(r29)
/* 804025FC  80 7D 00 04 */	lwz r3, 4(r29)
/* 80402600  4B FF 7E 59 */	bl mCD_get_size
/* 80402604  90 7D 00 08 */	stw r3, 8(r29)
/* 80402608  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8040260C  80 9D 00 08 */	lwz r4, 8(r29)
/* 80402610  4B C5 AA 59 */	bl bzero
/* 80402614  80 BD 00 00 */	lwz r5, 0(r29)
/* 80402618  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8040261C  1C C5 00 94 */	mulli r6, r5, 0x94
/* 80402620  80 9D 00 04 */	lwz r4, 4(r29)
/* 80402624  38 C6 00 54 */	addi r6, r6, 0x54
/* 80402628  7C DD 32 14 */	add r6, r29, r6
/* 8040262C  38 C6 00 74 */	addi r6, r6, 0x74
/* 80402630  4B FF 83 91 */	bl mCD_load_file
/* 80402634  2C 03 00 01 */	cmpwi r3, 1
/* 80402638  40 82 00 54 */	bne lbl_8040268C
/* 8040263C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80402640  80 9D 00 08 */	lwz r4, 8(r29)
/* 80402644  4B FA 9E B9 */	bl mFRm_ReturnCheckSum
/* 80402648  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8040264C  83 9D 00 0C */	lwz r28, 0xc(r29)
/* 80402650  40 82 00 3C */	bne lbl_8040268C
/* 80402654  3C 7C 00 01 */	addis r3, r28, 1
/* 80402658  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 8040265C  4B FB 11 99 */	bl mLd_CheckId
/* 80402660  2C 03 00 01 */	cmpwi r3, 1
/* 80402664  40 82 00 28 */	bne lbl_8040268C
/* 80402668  3C 7C 00 01 */	addis r3, r28, 1
/* 8040266C  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 80402670  38 63 91 20 */	addi r3, r3, -28384
/* 80402674  4B FB 14 C5 */	bl mLd_CheckThisLand
/* 80402678  2C 03 00 01 */	cmpwi r3, 1
/* 8040267C  40 82 00 10 */	bne lbl_8040268C
/* 80402680  38 00 00 01 */	li r0, 1
/* 80402684  3B E0 00 01 */	li r31, 1
/* 80402688  90 1D 00 04 */	stw r0, 4(r29)
lbl_8040268C:
/* 8040268C  2C 1F 00 01 */	cmpwi r31, 1
/* 80402690  40 82 00 0C */	bne lbl_8040269C
/* 80402694  38 00 00 0C */	li r0, 0xc
/* 80402698  90 1E 00 00 */	stw r0, 0(r30)
lbl_8040269C:
/* 8040269C  7F E3 FB 78 */	mr r3, r31
/* 804026A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804026A4  4B C9 88 79 */	bl func_8009AF1C
/* 804026A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804026AC  7C 08 03 A6 */	mtlr r0
/* 804026B0  38 21 00 20 */	addi r1, r1, 0x20
/* 804026B4  4E 80 00 20 */	blr 