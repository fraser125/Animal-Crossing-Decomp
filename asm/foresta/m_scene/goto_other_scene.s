lbl_803F11A8:
/* 803F11A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F11AC  7C 08 02 A6 */	mflr r0
/* 803F11B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F11B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803F11B8  4B CA 9D 1D */	bl func_8009AED4
/* 803F11BC  7C 7D 1B 78 */	mr r29, r3
/* 803F11C0  7C 9E 23 78 */	mr r30, r4
/* 803F11C4  7C BF 2B 78 */	mr r31, r5
/* 803F11C8  4B FE 84 79 */	bl get_player_actor_withoutCheck
/* 803F11CC  28 03 00 00 */	cmplwi r3, 0
/* 803F11D0  38 60 00 00 */	li r3, 0
/* 803F11D4  41 82 00 CC */	beq lbl_803F12A0
/* 803F11D8  88 1D 20 D3 */	lbz r0, 0x20d3(r29)
/* 803F11DC  28 00 00 00 */	cmplwi r0, 0
/* 803F11E0  40 82 00 BC */	bne lbl_803F129C
/* 803F11E4  38 00 00 02 */	li r0, 2
/* 803F11E8  98 1D 20 D0 */	stb r0, 0x20d0(r29)
/* 803F11EC  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 803F11F0  28 00 00 00 */	cmplwi r0, 0
/* 803F11F4  40 82 00 10 */	bne lbl_803F1204
/* 803F11F8  38 00 00 03 */	li r0, 3
/* 803F11FC  98 1D 20 D1 */	stb r0, 0x20d1(r29)
/* 803F1200  48 00 00 08 */	b lbl_803F1208
lbl_803F1204:
/* 803F1204  98 1D 20 D1 */	stb r0, 0x20d1(r29)
lbl_803F1208:
/* 803F1208  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F120C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1210  3C 63 00 02 */	addis r3, r3, 2
/* 803F1214  88 03 61 4F */	lbz r0, 0x614f(r3)
/* 803F1218  28 00 00 FF */	cmplwi r0, 0xff
/* 803F121C  40 82 00 0C */	bne lbl_803F1228
/* 803F1220  88 1D 20 D1 */	lbz r0, 0x20d1(r29)
/* 803F1224  98 03 61 4F */	stb r0, 0x614f(r3)
lbl_803F1228:
/* 803F1228  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F122C  38 00 00 02 */	li r0, 2
/* 803F1230  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1234  38 9E FF FC */	addi r4, r30, -4
/* 803F1238  3C C3 00 03 */	addis r6, r3, 3
/* 803F123C  38 A6 85 2C */	addi r5, r6, -31444
/* 803F1240  7C 09 03 A6 */	mtctr r0
lbl_803F1244:
/* 803F1244  80 64 00 04 */	lwz r3, 4(r4)
/* 803F1248  84 04 00 08 */	lwzu r0, 8(r4)
/* 803F124C  90 65 00 04 */	stw r3, 4(r5)
/* 803F1250  94 05 00 08 */	stwu r0, 8(r5)
/* 803F1254  42 00 FF F0 */	bdnz lbl_803F1244
/* 803F1258  80 04 00 04 */	lwz r0, 4(r4)
/* 803F125C  2C 1F 00 00 */	cmpwi r31, 0
/* 803F1260  90 05 00 04 */	stw r0, 4(r5)
/* 803F1264  80 7E 00 00 */	lwz r3, 0(r30)
/* 803F1268  38 03 00 01 */	addi r0, r3, 1
/* 803F126C  90 06 85 30 */	stw r0, -0x7ad0(r6)
/* 803F1270  80 1E 00 00 */	lwz r0, 0(r30)
/* 803F1274  90 1D 20 08 */	stw r0, 0x2008(r29)
/* 803F1278  41 82 00 0C */	beq lbl_803F1284
/* 803F127C  7F A3 EB 78 */	mr r3, r29
/* 803F1280  4B FE 8E D1 */	bl mPlib_request_main_invade_type1
lbl_803F1284:
/* 803F1284  7F A3 EB 78 */	mr r3, r29
/* 803F1288  4B F8 47 D5 */	bl restore_fgdata_all
/* 803F128C  38 00 00 00 */	li r0, 0
/* 803F1290  38 60 00 01 */	li r3, 1
/* 803F1294  90 1D 00 74 */	stw r0, 0x74(r29)
/* 803F1298  48 00 00 08 */	b lbl_803F12A0
lbl_803F129C:
/* 803F129C  38 60 00 02 */	li r3, 2
lbl_803F12A0:
/* 803F12A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803F12A4  4B CA 9C 7D */	bl func_8009AF20
/* 803F12A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F12AC  7C 08 03 A6 */	mtlr r0
/* 803F12B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803F12B4  4E 80 00 20 */	blr 
