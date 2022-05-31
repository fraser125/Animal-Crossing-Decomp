lbl_805F1124:
/* 805F1124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F1128  7C 08 02 A6 */	mflr r0
/* 805F112C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F1130  39 61 00 20 */	addi r11, r1, 0x20
/* 805F1134  4B AA 9D A1 */	bl func_8009AED4
/* 805F1138  7C 7E 1B 78 */	mr r30, r3
/* 805F113C  38 A0 00 0C */	li r5, 0xc
/* 805F1140  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805F1144  1C 64 00 0C */	mulli r3, r4, 0xc
/* 805F1148  83 A6 09 C0 */	lwz r29, 0x9c0(r6)
/* 805F114C  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805F1150  38 83 00 04 */	addi r4, r3, 4
/* 805F1154  80 1D 00 00 */	lwz r0, 0(r29)
/* 805F1158  3B E6 00 08 */	addi r31, r6, 8
/* 805F115C  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F1160  7C 80 22 14 */	add r4, r0, r4
/* 805F1164  4B DC 98 C1 */	bl func_803BAA24
/* 805F1168  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F116C  38 80 00 0C */	li r4, 0xc
/* 805F1170  38 A0 00 20 */	li r5, 0x20
/* 805F1174  4B DC B4 B1 */	bl func_803BC624
/* 805F1178  2C 03 00 00 */	cmpwi r3, 0
/* 805F117C  40 81 00 14 */	ble lbl_805F1190
/* 805F1180  88 9D 0B A8 */	lbz r4, 0xba8(r29)
/* 805F1184  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F1188  7C 04 00 00 */	cmpw r4, r0
/* 805F118C  40 82 00 14 */	bne lbl_805F11A0
lbl_805F1190:
/* 805F1190  38 00 00 00 */	li r0, 0
/* 805F1194  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1198  98 1F 00 02 */	stb r0, 2(r31)
/* 805F119C  48 00 00 94 */	b lbl_805F1230
lbl_805F11A0:
/* 805F11A0  7C 64 1B 78 */	mr r4, r3
/* 805F11A4  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F11A8  38 A0 00 01 */	li r5, 1
/* 805F11AC  4B DB E5 25 */	bl mFont_GetStringWidth
/* 805F11B0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F11B4  3C 00 43 30 */	lis r0, 0x4330
/* 805F11B8  90 61 00 0C */	stw r3, 0xc(r1)
/* 805F11BC  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F11C0  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F11C4  C8 44 B8 24 */	lfd f2, lit_523@l(r4)  /* 0x8064B824@l */
/* 805F11C8  90 01 00 08 */	stw r0, 8(r1)
/* 805F11CC  38 A3 B8 68 */	addi r5, r3, lit_874@l /* 0x8064B868@l */
/* 805F11D0  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F11D4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805F11D8  C8 21 00 08 */	lfd f1, 8(r1)
/* 805F11DC  38 83 B8 14 */	addi r4, r3, data_8064B814@l /* 0x8064B814@l */
/* 805F11E0  7F E3 FB 78 */	mr r3, r31
/* 805F11E4  EC 21 10 28 */	fsubs f1, f1, f2
/* 805F11E8  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F11EC  38 80 00 00 */	li r4, 0
/* 805F11F0  EC 20 00 72 */	fmuls f1, f0, f1
/* 805F11F4  4B FF E8 09 */	bl mTG_set_tag_win_scale_p
/* 805F11F8  38 00 00 00 */	li r0, 0
/* 805F11FC  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F1200  98 1F 00 02 */	stb r0, 2(r31)
/* 805F1204  38 00 00 02 */	li r0, 2
/* 805F1208  C0 03 B8 74 */	lfs f0, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F120C  7F E3 FB 78 */	mr r3, r31
/* 805F1210  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805F1214  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1218  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 805F121C  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1220  4B FF E6 4D */	bl mTG_get_item_name_wait_time
/* 805F1224  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805F1228  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805F122C  B0 64 02 F0 */	sth r3, 0x2f0(r4)
lbl_805F1230:
/* 805F1230  39 61 00 20 */	addi r11, r1, 0x20
/* 805F1234  4B AA 9C ED */	bl func_8009AF20
/* 805F1238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F123C  7C 08 03 A6 */	mtlr r0
/* 805F1240  38 21 00 20 */	addi r1, r1, 0x20
/* 805F1244  4E 80 00 20 */	blr 
