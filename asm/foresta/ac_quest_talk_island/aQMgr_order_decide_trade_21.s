lbl_8048F2B0:
/* 8048F2B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F2B4  7C 08 02 A6 */	mflr r0
/* 8048F2B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F2C0  4B C0 BC 15 */	bl func_8009AED4
/* 8048F2C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048F2C8  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F2CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048F2D0  3C 63 00 02 */	addis r3, r3, 2
/* 8048F2D4  3B E4 EB F0 */	addi r31, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F2D8  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 8048F2DC  38 7F 00 14 */	addi r3, r31, 0x14
/* 8048F2E0  7F C4 F3 78 */	mr r4, r30
/* 8048F2E4  4B FF EA 95 */	bl aQMgr_get_best_ftr_idx
/* 8048F2E8  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F2EC  2C 03 FF FF */	cmpwi r3, -1
/* 8048F2F0  38 84 EB F0 */	addi r4, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F2F4  90 64 00 0C */	stw r3, 0xc(r4)
/* 8048F2F8  41 82 00 28 */	beq lbl_8048F320
/* 8048F2FC  A0 7F 00 14 */	lhz r3, 0x14(r31)
/* 8048F300  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F304  2C 00 00 01 */	cmpwi r0, 1
/* 8048F308  41 82 00 0C */	beq lbl_8048F314
/* 8048F30C  2C 00 00 03 */	cmpwi r0, 3
/* 8048F310  40 82 00 10 */	bne lbl_8048F320
lbl_8048F314:
/* 8048F314  38 80 00 00 */	li r4, 0
/* 8048F318  4B F5 43 1D */	bl mQst_SetItemNameStr
/* 8048F31C  48 00 00 14 */	b lbl_8048F330
lbl_8048F320:
/* 8048F320  38 60 FF FF */	li r3, -1
/* 8048F324  38 00 00 00 */	li r0, 0
/* 8048F328  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8048F32C  B0 1F 00 14 */	sth r0, 0x14(r31)
lbl_8048F330:
/* 8048F330  7F C3 F3 78 */	mr r3, r30
/* 8048F334  38 9F 00 16 */	addi r4, r31, 0x16
/* 8048F338  38 A0 00 00 */	li r5, 0
/* 8048F33C  4B F4 63 C9 */	bl mNpc_GetOtherBestFtr
/* 8048F340  7C 7D 1B 79 */	or. r29, r3, r3
/* 8048F344  41 82 00 2C */	beq lbl_8048F370
/* 8048F348  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 8048F34C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F350  2C 00 00 01 */	cmpwi r0, 1
/* 8048F354  41 82 00 0C */	beq lbl_8048F360
/* 8048F358  2C 00 00 03 */	cmpwi r0, 3
/* 8048F35C  40 82 00 14 */	bne lbl_8048F370
lbl_8048F360:
/* 8048F360  28 03 00 00 */	cmplwi r3, 0
/* 8048F364  41 82 00 0C */	beq lbl_8048F370
/* 8048F368  38 80 00 01 */	li r4, 1
/* 8048F36C  4B F5 42 C9 */	bl mQst_SetItemNameStr
lbl_8048F370:
/* 8048F370  7F C3 F3 78 */	mr r3, r30
/* 8048F374  38 80 00 00 */	li r4, 0
/* 8048F378  4B F4 65 79 */	bl mNpc_GetPlayerBestFtr
/* 8048F37C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F380  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 8048F384  2C 00 00 01 */	cmpwi r0, 1
/* 8048F388  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8048F38C  41 82 00 0C */	beq lbl_8048F398
/* 8048F390  2C 00 00 03 */	cmpwi r0, 3
/* 8048F394  40 82 00 10 */	bne lbl_8048F3A4
lbl_8048F398:
/* 8048F398  38 80 00 02 */	li r4, 2
/* 8048F39C  4B F5 42 99 */	bl mQst_SetItemNameStr
/* 8048F3A0  48 00 00 0C */	b lbl_8048F3AC
lbl_8048F3A4:
/* 8048F3A4  38 00 00 00 */	li r0, 0
/* 8048F3A8  B0 1F 00 18 */	sth r0, 0x18(r31)
lbl_8048F3AC:
/* 8048F3AC  7F C3 F3 78 */	mr r3, r30
/* 8048F3B0  4B F4 67 09 */	bl mNpc_GetPlayerFtr
/* 8048F3B4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F3B8  B0 7F 00 1A */	sth r3, 0x1a(r31)
/* 8048F3BC  2C 00 00 01 */	cmpwi r0, 1
/* 8048F3C0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8048F3C4  41 82 00 0C */	beq lbl_8048F3D0
/* 8048F3C8  2C 00 00 03 */	cmpwi r0, 3
/* 8048F3CC  40 82 00 10 */	bne lbl_8048F3DC
lbl_8048F3D0:
/* 8048F3D0  38 80 00 03 */	li r4, 3
/* 8048F3D4  4B F5 42 61 */	bl mQst_SetItemNameStr
/* 8048F3D8  48 00 00 0C */	b lbl_8048F3E4
lbl_8048F3DC:
/* 8048F3DC  38 00 00 00 */	li r0, 0
/* 8048F3E0  B0 1F 00 1A */	sth r0, 0x1a(r31)
lbl_8048F3E4:
/* 8048F3E4  28 1D 00 00 */	cmplwi r29, 0
/* 8048F3E8  41 82 00 18 */	beq lbl_8048F400
/* 8048F3EC  4B F3 02 BD */	bl func_803BF6A8
/* 8048F3F0  7F A5 EB 78 */	mr r5, r29
/* 8048F3F4  38 80 00 12 */	li r4, 0x12
/* 8048F3F8  38 C0 00 08 */	li r6, 8
/* 8048F3FC  4B F3 08 59 */	bl mMsg_Set_free_str
lbl_8048F400:
/* 8048F400  38 60 00 64 */	li r3, 0x64
/* 8048F404  38 80 0B B8 */	li r4, 0xbb8
/* 8048F408  38 A0 00 01 */	li r5, 1
/* 8048F40C  4B FF EF 75 */	bl aQMgr_order_decide_trade_common_pay
/* 8048F410  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F414  4B C0 BB 0D */	bl func_8009AF20
/* 8048F418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F41C  7C 08 03 A6 */	mtlr r0
/* 8048F420  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F424  4E 80 00 20 */	blr 
