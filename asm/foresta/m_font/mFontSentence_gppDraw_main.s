lbl_803B10D0:
/* 803B10D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B10D4  7C 08 02 A6 */	mflr r0
/* 803B10D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B10DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803B10E0  4B CE 9D E9 */	bl func_8009AEC8
/* 803B10E4  7C 7F 1B 78 */	mr r31, r3
/* 803B10E8  83 A4 00 00 */	lwz r29, 0(r4)
/* 803B10EC  80 63 00 00 */	lwz r3, 0(r3)
/* 803B10F0  7C BA 2B 78 */	mr r26, r5
/* 803B10F4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 803B10F8  7F 83 02 14 */	add r28, r3, r0
/* 803B10FC  8B 7C 00 00 */	lbz r27, 0(r28)
/* 803B1100  7F 83 E3 78 */	mr r3, r28
/* 803B1104  4B FF E6 AD */	bl mFont_CodeSize_get
/* 803B1108  93 9F 00 4C */	stw r28, 0x4c(r31)
/* 803B110C  7C 7E 1B 78 */	mr r30, r3
/* 803B1110  2C 1B 00 7F */	cmpwi r27, 0x7f
/* 803B1114  9B DF 00 50 */	stb r30, 0x50(r31)
/* 803B1118  40 82 00 60 */	bne lbl_803B1178
/* 803B111C  8B 7C 00 01 */	lbz r27, 1(r28)
/* 803B1120  7F 63 DB 78 */	mr r3, r27
/* 803B1124  4B FF E7 09 */	bl mFont_cont_attr_get
/* 803B1128  2C 03 00 04 */	cmpwi r3, 4
/* 803B112C  40 82 00 24 */	bne lbl_803B1150
/* 803B1130  7F 63 DB 78 */	mr r3, r27
/* 803B1134  4B FF FC 0D */	bl mFontSentence_cont_proc_get
/* 803B1138  7C 6C 1B 78 */	mr r12, r3
/* 803B113C  7F E3 FB 78 */	mr r3, r31
/* 803B1140  7F 44 D3 78 */	mr r4, r26
/* 803B1144  7D 89 03 A6 */	mtctr r12
/* 803B1148  4E 80 04 21 */	bctrl 
/* 803B114C  48 00 00 B0 */	b lbl_803B11FC
lbl_803B1150:
/* 803B1150  2C 03 00 05 */	cmpwi r3, 5
/* 803B1154  40 82 00 A8 */	bne lbl_803B11FC
/* 803B1158  7F 63 DB 78 */	mr r3, r27
/* 803B115C  4B FF F6 21 */	bl mFontChar_cont_proc_get
/* 803B1160  7C 6C 1B 78 */	mr r12, r3
/* 803B1164  7F 44 D3 78 */	mr r4, r26
/* 803B1168  38 7F 00 4C */	addi r3, r31, 0x4c
/* 803B116C  7D 89 03 A6 */	mtctr r12
/* 803B1170  4E 80 04 21 */	bctrl 
/* 803B1174  48 00 00 88 */	b lbl_803B11FC
lbl_803B1178:
/* 803B1178  80 1F 00 08 */	lwz r0, 8(r31)
/* 803B117C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 803B1180  41 82 00 0C */	beq lbl_803B118C
/* 803B1184  2C 1B 00 CD */	cmpwi r27, 0xcd
/* 803B1188  41 82 00 74 */	beq lbl_803B11FC
lbl_803B118C:
/* 803B118C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 803B1190  7F E4 FB 78 */	mr r4, r31
/* 803B1194  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 803B1198  38 7F 00 4C */	addi r3, r31, 0x4c
/* 803B119C  EC 01 00 2A */	fadds f0, f1, f0
/* 803B11A0  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 803B11A4  4B FF F4 8D */	bl mFontChar_total_scale_reset
/* 803B11A8  7F A4 EB 78 */	mr r4, r29
/* 803B11AC  7F 45 D3 78 */	mr r5, r26
/* 803B11B0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 803B11B4  4B FF F9 ED */	bl mFontChar_gppDraw
/* 803B11B8  80 1F 00 08 */	lwz r0, 8(r31)
/* 803B11BC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 803B11C0  41 82 00 1C */	beq lbl_803B11DC
/* 803B11C4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 803B11C8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 803B11CC  7C 03 00 00 */	cmpw r3, r0
/* 803B11D0  40 82 00 0C */	bne lbl_803B11DC
/* 803B11D4  7F E3 FB 78 */	mr r3, r31
/* 803B11D8  4B FF FB BD */	bl mFontSentence_animal_voice_se
lbl_803B11DC:
/* 803B11DC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 803B11E0  7F E4 FB 78 */	mr r4, r31
/* 803B11E4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 803B11E8  7F 45 D3 78 */	mr r5, r26
/* 803B11EC  38 7F 00 4C */	addi r3, r31, 0x4c
/* 803B11F0  EC 01 00 2A */	fadds f0, f1, f0
/* 803B11F4  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 803B11F8  4B FF F3 91 */	bl mFontChar_gppDraw_sentence_restore
lbl_803B11FC:
/* 803B11FC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 803B1200  7C 00 F2 14 */	add r0, r0, r30
/* 803B1204  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803B1208  39 61 00 20 */	addi r11, r1, 0x20
/* 803B120C  4B CE 9D 09 */	bl func_8009AF14
/* 803B1210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B1214  7C 08 03 A6 */	mtlr r0
/* 803B1218  38 21 00 20 */	addi r1, r1, 0x20
/* 803B121C  4E 80 00 20 */	blr 
