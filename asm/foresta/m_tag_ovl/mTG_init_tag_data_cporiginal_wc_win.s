lbl_805F1248:
/* 805F1248  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F124C  7C 08 02 A6 */	mflr r0
/* 805F1250  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F1254  39 61 00 20 */	addi r11, r1, 0x20
/* 805F1258  4B AA 9C 7D */	bl func_8009AED4
/* 805F125C  7C 7E 1B 78 */	mr r30, r3
/* 805F1260  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F1264  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805F1268  3B E4 00 08 */	addi r31, r4, 8
/* 805F126C  80 84 00 48 */	lwz r4, 0x48(r4)
/* 805F1270  4B FD C3 ED */	bl mCO_get_folder_name
/* 805F1274  7C 64 1B 78 */	mr r4, r3
/* 805F1278  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F127C  38 A0 00 0C */	li r5, 0xc
/* 805F1280  4B DC 97 A5 */	bl func_803BAA24
/* 805F1284  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F1288  38 80 00 0C */	li r4, 0xc
/* 805F128C  38 A0 00 20 */	li r5, 0x20
/* 805F1290  4B DC B3 95 */	bl func_803BC624
/* 805F1294  7C 7D 1B 79 */	or. r29, r3, r3
/* 805F1298  40 81 00 18 */	ble lbl_805F12B0
/* 805F129C  7F C3 F3 78 */	mr r3, r30
/* 805F12A0  4B FD BF A9 */	bl mCO_top_folder
/* 805F12A4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805F12A8  7C 00 18 00 */	cmpw r0, r3
/* 805F12AC  40 82 00 14 */	bne lbl_805F12C0
lbl_805F12B0:
/* 805F12B0  38 00 00 00 */	li r0, 0
/* 805F12B4  98 1F 00 01 */	stb r0, 1(r31)
/* 805F12B8  98 1F 00 02 */	stb r0, 2(r31)
/* 805F12BC  48 00 00 94 */	b lbl_805F1350
lbl_805F12C0:
/* 805F12C0  7F A4 EB 78 */	mr r4, r29
/* 805F12C4  38 7F 00 48 */	addi r3, r31, 0x48
/* 805F12C8  38 A0 00 01 */	li r5, 1
/* 805F12CC  4B DB E4 05 */	bl mFont_GetStringWidth
/* 805F12D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805F12D4  3C 00 43 30 */	lis r0, 0x4330
/* 805F12D8  90 61 00 0C */	stw r3, 0xc(r1)
/* 805F12DC  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064B824@ha */
/* 805F12E0  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F12E4  C8 44 B8 24 */	lfd f2, lit_523@l(r4)  /* 0x8064B824@l */
/* 805F12E8  90 01 00 08 */	stw r0, 8(r1)
/* 805F12EC  38 A3 B8 68 */	addi r5, r3, lit_874@l /* 0x8064B868@l */
/* 805F12F0  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F12F4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805F12F8  C8 21 00 08 */	lfd f1, 8(r1)
/* 805F12FC  38 83 B8 14 */	addi r4, r3, data_8064B814@l /* 0x8064B814@l */
/* 805F1300  7F E3 FB 78 */	mr r3, r31
/* 805F1304  EC 21 10 28 */	fsubs f1, f1, f2
/* 805F1308  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F130C  38 80 00 00 */	li r4, 0
/* 805F1310  EC 20 00 72 */	fmuls f1, f0, f1
/* 805F1314  4B FF E6 E9 */	bl mTG_set_tag_win_scale_p
/* 805F1318  38 00 00 00 */	li r0, 0
/* 805F131C  3C 60 80 65 */	lis r3, lit_877@ha /* 0x8064B874@ha */
/* 805F1320  98 1F 00 02 */	stb r0, 2(r31)
/* 805F1324  38 00 00 02 */	li r0, 2
/* 805F1328  C0 03 B8 74 */	lfs f0, lit_877@l(r3)  /* 0x8064B874@l */
/* 805F132C  7F E3 FB 78 */	mr r3, r31
/* 805F1330  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805F1334  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1338  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 805F133C  98 1F 00 01 */	stb r0, 1(r31)
/* 805F1340  4B FF E5 2D */	bl mTG_get_item_name_wait_time
/* 805F1344  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805F1348  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805F134C  B0 64 02 F0 */	sth r3, 0x2f0(r4)
lbl_805F1350:
/* 805F1350  39 61 00 20 */	addi r11, r1, 0x20
/* 805F1354  4B AA 9B CD */	bl func_8009AF20
/* 805F1358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F135C  7C 08 03 A6 */	mtlr r0
/* 805F1360  38 21 00 20 */	addi r1, r1, 0x20
/* 805F1364  4E 80 00 20 */	blr 
