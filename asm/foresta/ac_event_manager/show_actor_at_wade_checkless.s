lbl_8041CBB0:
/* 8041CBB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041CBB4  7C 08 02 A6 */	mflr r0
/* 8041CBB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041CBBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041CBC0  4B C7 E3 15 */	bl func_8009AED4
/* 8041CBC4  7C 7D 1B 78 */	mr r29, r3
/* 8041CBC8  7C 9E 23 78 */	mr r30, r4
/* 8041CBCC  7C BF 2B 78 */	mr r31, r5
/* 8041CBD0  4B F8 80 FD */	bl mFI_GetFieldId
/* 8041CBD4  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041CBD8  40 82 00 F0 */	bne lbl_8041CCC8
/* 8041CBDC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041CBE0  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8041CBE4  4B F8 16 C9 */	bl mEv_get_common_place
/* 8041CBE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041CBEC  41 82 00 DC */	beq lbl_8041CCC8
/* 8041CBF0  80 7D 02 10 */	lwz r3, 0x210(r29)
/* 8041CBF4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8041CBF8  7C 03 00 00 */	cmpw r3, r0
/* 8041CBFC  40 82 00 1C */	bne lbl_8041CC18
/* 8041CC00  80 7D 02 0C */	lwz r3, 0x20c(r29)
/* 8041CC04  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041CC08  7C 03 00 00 */	cmpw r3, r0
/* 8041CC0C  40 82 00 0C */	bne lbl_8041CC18
/* 8041CC10  38 60 FF FF */	li r3, -1
/* 8041CC14  48 00 00 B8 */	b lbl_8041CCCC
lbl_8041CC18:
/* 8041CC18  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8041CC1C  38 9E 00 18 */	addi r4, r30, 0x18
/* 8041CC20  4B FF C8 99 */	bl func_804194B8
/* 8041CC24  2C 03 00 00 */	cmpwi r3, 0
/* 8041CC28  40 82 00 0C */	bne lbl_8041CC34
/* 8041CC2C  38 60 FF FF */	li r3, -1
/* 8041CC30  48 00 00 9C */	b lbl_8041CCCC
lbl_8041CC34:
/* 8041CC34  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8041CC38  80 1F 00 04 */	lwz r0, 4(r31)
/* 8041CC3C  7C 03 00 00 */	cmpw r3, r0
/* 8041CC40  40 82 00 14 */	bne lbl_8041CC54
/* 8041CC44  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8041CC48  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041CC4C  7C 03 00 00 */	cmpw r3, r0
/* 8041CC50  41 82 00 0C */	beq lbl_8041CC5C
lbl_8041CC54:
/* 8041CC54  38 60 FF FF */	li r3, -1
/* 8041CC58  48 00 00 74 */	b lbl_8041CCCC
lbl_8041CC5C:
/* 8041CC5C  7F E3 FB 78 */	mr r3, r31
/* 8041CC60  4B FF E5 41 */	bl be_flat_unit
/* 8041CC64  80 1F 00 08 */	lwz r0, 8(r31)
/* 8041CC68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041CC6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041CC70  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041CC74  90 01 00 08 */	stw r0, 8(r1)
/* 8041CC78  3C 63 00 02 */	addis r3, r3, 2
/* 8041CC7C  38 E4 52 F0 */	addi r7, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8041CC80  38 A0 FF FF */	li r5, -1
/* 8041CC84  80 83 60 4C */	lwz r4, 0x604c(r3)
/* 8041CC88  38 C0 FF FF */	li r6, -1
/* 8041CC8C  80 67 00 00 */	lwz r3, 0(r7)
/* 8041CC90  38 E0 FF FF */	li r7, -1
/* 8041CC94  81 84 00 00 */	lwz r12, 0(r4)
/* 8041CC98  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 8041CC9C  81 1F 00 04 */	lwz r8, 4(r31)
/* 8041CCA0  81 3F 00 00 */	lwz r9, 0(r31)
/* 8041CCA4  81 5F 00 0C */	lwz r10, 0xc(r31)
/* 8041CCA8  7D 89 03 A6 */	mtctr r12
/* 8041CCAC  4E 80 04 21 */	bctrl 
/* 8041CCB0  2C 03 00 00 */	cmpwi r3, 0
/* 8041CCB4  41 82 00 0C */	beq lbl_8041CCC0
/* 8041CCB8  7F E3 FB 78 */	mr r3, r31
/* 8041CCBC  48 00 00 10 */	b lbl_8041CCCC
lbl_8041CCC0:
/* 8041CCC0  38 60 00 00 */	li r3, 0
/* 8041CCC4  48 00 00 08 */	b lbl_8041CCCC
lbl_8041CCC8:
/* 8041CCC8  38 60 FF FF */	li r3, -1
lbl_8041CCCC:
/* 8041CCCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041CCD0  4B C7 E2 51 */	bl func_8009AF20
/* 8041CCD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041CCD8  7C 08 03 A6 */	mtlr r0
/* 8041CCDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8041CCE0  4E 80 00 20 */	blr 
