lbl_805DEAD8:
/* 805DEAD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DEADC  7C 08 02 A6 */	mflr r0
/* 805DEAE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DEAE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEAE8  4B AB C3 E5 */	bl func_8009AECC
/* 805DEAEC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DEAF0  7C 7E 1B 78 */	mr r30, r3
/* 805DEAF4  83 E5 09 80 */	lwz r31, 0x980(r5)
/* 805DEAF8  80 65 09 7C */	lwz r3, 0x97c(r5)
/* 805DEAFC  A0 1F 02 34 */	lhz r0, 0x234(r31)
/* 805DEB00  3B 63 00 08 */	addi r27, r3, 8
/* 805DEB04  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 805DEB08  54 03 C7 3E */	rlwinm r3, r0, 0x18, 0x1c, 0x1f
/* 805DEB0C  41 82 00 14 */	beq lbl_805DEB20
/* 805DEB10  28 00 24 00 */	cmplwi r0, 0x2400
/* 805DEB14  41 80 00 E4 */	blt lbl_805DEBF8
/* 805DEB18  28 00 24 FF */	cmplwi r0, 0x24ff
/* 805DEB1C  40 80 00 DC */	bge lbl_805DEBF8
lbl_805DEB20:
/* 805DEB20  3C 80 80 65 */	lis r4, lit_825@ha /* 0x8064B2F4@ha */
/* 805DEB24  80 65 09 88 */	lwz r3, 0x988(r5)
/* 805DEB28  C0 24 B2 F4 */	lfs f1, lit_825@l(r4)  /* 0x8064B2F4@l */
/* 805DEB2C  4B D9 19 5D */	bl cKF_FrameControl_passCheck_now
/* 805DEB30  2C 03 00 00 */	cmpwi r3, 0
/* 805DEB34  41 82 01 14 */	beq lbl_805DEC48
/* 805DEB38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DEB3C  7F C3 F3 78 */	mr r3, r30
/* 805DEB40  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805DEB44  7F 64 DB 78 */	mr r4, r27
/* 805DEB48  3F 85 00 02 */	addis r28, r5, 2
/* 805DEB4C  38 C0 00 00 */	li r6, 0
/* 805DEB50  83 BC 61 3C */	lwz r29, 0x613c(r28)
/* 805DEB54  38 BD 10 8A */	addi r5, r29, 0x108a
/* 805DEB58  4B FF EC 11 */	bl mHD_drop_item
/* 805DEB5C  A0 9D 10 8A */	lhz r4, 0x108a(r29)
/* 805DEB60  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 805DEB64  40 82 00 38 */	bne lbl_805DEB9C
/* 805DEB68  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805DEB6C  7F 63 DB 78 */	mr r3, r27
/* 805DEB70  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DEB74  81 84 02 EC */	lwz r12, 0x2ec(r4)
/* 805DEB78  7D 89 03 A6 */	mtctr r12
/* 805DEB7C  4E 80 04 21 */	bctrl 
/* 805DEB80  7C 64 1B 78 */	mr r4, r3
/* 805DEB84  7F C3 F3 78 */	mr r3, r30
/* 805DEB88  48 00 AC 99 */	bl mNW_get_image_no
/* 805DEB8C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805DEB90  38 03 01 00 */	addi r0, r3, 0x100
/* 805DEB94  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805DEB98  48 00 00 30 */	b lbl_805DEBC8
lbl_805DEB9C:
/* 805DEB9C  28 04 24 00 */	cmplwi r4, 0x2400
/* 805DEBA0  38 00 00 00 */	li r0, 0
/* 805DEBA4  41 80 00 10 */	blt lbl_805DEBB4
/* 805DEBA8  28 04 24 FF */	cmplwi r4, 0x24ff
/* 805DEBAC  40 80 00 08 */	bge lbl_805DEBB4
/* 805DEBB0  38 00 00 01 */	li r0, 1
lbl_805DEBB4:
/* 805DEBB4  20 60 00 00 */	subfic r3, r0, 0
/* 805DEBB8  38 04 DC 00 */	addi r0, r4, -9216
/* 805DEBBC  7C 63 19 10 */	subfe r3, r3, r3
/* 805DEBC0  7C 00 18 38 */	and r0, r0, r3
/* 805DEBC4  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_805DEBC8:
/* 805DEBC8  B0 1D 10 88 */	sth r0, 0x1088(r29)
/* 805DEBCC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805DEBD0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805DEBD4  80 9C 61 3C */	lwz r4, 0x613c(r28)
/* 805DEBD8  80 63 00 00 */	lwz r3, 0(r3)
/* 805DEBDC  A0 84 10 88 */	lhz r4, 0x1088(r4)
/* 805DEBE0  4B DF A8 99 */	bl mPlib_change_player_cloth
/* 805DEBE4  38 60 00 00 */	li r3, 0
/* 805DEBE8  38 00 00 01 */	li r0, 1
/* 805DEBEC  B0 7F 02 32 */	sth r3, 0x232(r31)
/* 805DEBF0  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 805DEBF4  48 00 00 54 */	b lbl_805DEC48
lbl_805DEBF8:
/* 805DEBF8  2C 03 00 08 */	cmpwi r3, 8
/* 805DEBFC  41 82 00 4C */	beq lbl_805DEC48
/* 805DEC00  2C 03 00 0F */	cmpwi r3, 0xf
/* 805DEC04  41 82 00 44 */	beq lbl_805DEC48
/* 805DEC08  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 805DEC0C  2C 00 00 00 */	cmpwi r0, 0
/* 805DEC10  41 81 00 38 */	bgt lbl_805DEC48
/* 805DEC14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DEC18  7F C3 F3 78 */	mr r3, r30
/* 805DEC1C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805DEC20  7F 64 DB 78 */	mr r4, r27
/* 805DEC24  3C A5 00 02 */	addis r5, r5, 2
/* 805DEC28  38 C0 00 00 */	li r6, 0
/* 805DEC2C  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805DEC30  38 A5 04 A4 */	addi r5, r5, 0x4a4
/* 805DEC34  4B FF EB 35 */	bl mHD_drop_item
/* 805DEC38  38 60 00 00 */	li r3, 0
/* 805DEC3C  38 00 00 01 */	li r0, 1
/* 805DEC40  B0 7F 02 32 */	sth r3, 0x232(r31)
/* 805DEC44  B0 1F 00 14 */	sth r0, 0x14(r31)
lbl_805DEC48:
/* 805DEC48  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEC4C  4B AB C2 CD */	bl func_8009AF18
/* 805DEC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DEC54  7C 08 03 A6 */	mtlr r0
/* 805DEC58  38 21 00 20 */	addi r1, r1, 0x20
/* 805DEC5C  4E 80 00 20 */	blr 
