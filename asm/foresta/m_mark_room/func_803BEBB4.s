lbl_803BEBB4:
/* 803BEBB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BEBB8  7C 08 02 A6 */	mflr r0
/* 803BEBBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BEBC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BEBC4  7C 7F 1B 78 */	mr r31, r3
/* 803BEBC8  4B FD BF E1 */	bl mEv_CheckArbeit
/* 803BEBCC  2C 03 00 00 */	cmpwi r3, 0
/* 803BEBD0  40 82 00 74 */	bne lbl_803BEC44
/* 803BEBD4  2C 1F 00 04 */	cmpwi r31, 4
/* 803BEBD8  40 80 00 6C */	bge lbl_803BEC44
/* 803BEBDC  7F E3 FB 78 */	mr r3, r31
/* 803BEBE0  4B FF 49 D9 */	bl mHS_get_arrange_idx
/* 803BEBE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BEBE8  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 803BEBEC  3C A6 00 02 */	addis r5, r6, 2
/* 803BEBF0  80 85 61 24 */	lwz r4, 0x6124(r5)
/* 803BEBF4  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 803BEBF8  3C 06 00 01 */	addis r0, r6, 1
/* 803BEBFC  80 A5 61 20 */	lwz r5, 0x6120(r5)
/* 803BEC00  90 81 00 0C */	stw r4, 0xc(r1)
/* 803BEC04  7C 80 1A 14 */	add r4, r0, r3
/* 803BEC08  A0 64 9D 04 */	lhz r3, -0x62fc(r4)
/* 803BEC0C  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 803BEC10  90 A1 00 08 */	stw r5, 8(r1)
/* 803BEC14  7C 03 00 40 */	cmplw r3, r0
/* 803BEC18  88 64 9D 06 */	lbz r3, -0x62fa(r4)
/* 803BEC1C  88 84 9D 07 */	lbz r4, -0x62f9(r4)
/* 803BEC20  40 82 00 1C */	bne lbl_803BEC3C
/* 803BEC24  88 01 00 0D */	lbz r0, 0xd(r1)
/* 803BEC28  7C 03 00 40 */	cmplw r3, r0
/* 803BEC2C  40 82 00 10 */	bne lbl_803BEC3C
/* 803BEC30  88 01 00 0B */	lbz r0, 0xb(r1)
/* 803BEC34  7C 04 00 40 */	cmplw r4, r0
/* 803BEC38  41 82 00 0C */	beq lbl_803BEC44
lbl_803BEC3C:
/* 803BEC3C  38 60 00 01 */	li r3, 1
/* 803BEC40  48 00 00 08 */	b lbl_803BEC48
lbl_803BEC44:
/* 803BEC44  38 60 00 00 */	li r3, 0
lbl_803BEC48:
/* 803BEC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BEC4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BEC50  7C 08 03 A6 */	mtlr r0
/* 803BEC54  38 21 00 20 */	addi r1, r1, 0x20
/* 803BEC58  4E 80 00 20 */	blr 
