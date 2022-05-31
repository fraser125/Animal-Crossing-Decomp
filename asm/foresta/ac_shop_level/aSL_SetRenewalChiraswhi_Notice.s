lbl_8049F4C0:
/* 8049F4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049F4C4  7C 08 02 A6 */	mflr r0
/* 8049F4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F4D0  4B BF BA 05 */	bl func_8009AED4
/* 8049F4D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F4D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F4DC  3F C3 00 02 */	addis r30, r3, 2
/* 8049F4E0  88 1E 04 66 */	lbz r0, 0x466(r30)
/* 8049F4E4  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8049F4E8  28 00 00 01 */	cmplwi r0, 1
/* 8049F4EC  40 82 00 C8 */	bne lbl_8049F5B4
/* 8049F4F0  4B F4 A4 F1 */	bl mSP_GetRealShopLevel
/* 8049F4F4  7C 7F 1B 78 */	mr r31, r3
/* 8049F4F8  4B F4 A4 6D */	bl mSP_GetShopLevel
/* 8049F4FC  7C 03 F8 00 */	cmpw r3, r31
/* 8049F500  40 80 00 84 */	bge lbl_8049F584
/* 8049F504  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049F508  38 61 00 08 */	addi r3, r1, 8
/* 8049F50C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8049F510  3F A5 00 02 */	addis r29, r5, 2
/* 8049F514  38 80 00 01 */	li r4, 1
/* 8049F518  80 BD 04 74 */	lwz r5, 0x474(r29)
/* 8049F51C  7F BF EB 78 */	mr r31, r29
/* 8049F520  80 1D 04 78 */	lwz r0, 0x478(r29)
/* 8049F524  3B BD 61 20 */	addi r29, r29, 0x6120
/* 8049F528  90 A1 00 08 */	stw r5, 8(r1)
/* 8049F52C  3B FF 04 74 */	addi r31, r31, 0x474
/* 8049F530  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049F534  4B F6 7A 89 */	bl lbRTC_Sub_DD
/* 8049F538  7F A4 EB 78 */	mr r4, r29
/* 8049F53C  38 61 00 08 */	addi r3, r1, 8
/* 8049F540  4B F6 73 D5 */	bl lbRTC_IsOverTime
/* 8049F544  2C 03 00 01 */	cmpwi r3, 1
/* 8049F548  41 82 00 1C */	beq lbl_8049F564
/* 8049F54C  7F A3 EB 78 */	mr r3, r29
/* 8049F550  38 81 00 08 */	addi r4, r1, 8
/* 8049F554  38 A0 00 70 */	li r5, 0x70
/* 8049F558  4B F6 72 E1 */	bl lbRTC_IsEqualTime
/* 8049F55C  2C 03 00 00 */	cmpwi r3, 0
/* 8049F560  41 82 00 54 */	beq lbl_8049F5B4
lbl_8049F564:
/* 8049F564  4B F4 A4 01 */	bl mSP_GetShopLevel
/* 8049F568  7F E4 FB 78 */	mr r4, r31
/* 8049F56C  4B FF FD B9 */	bl func_8049F324
/* 8049F570  88 1E 04 66 */	lbz r0, 0x466(r30)
/* 8049F574  38 60 00 00 */	li r3, 0
/* 8049F578  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8049F57C  98 1E 04 66 */	stb r0, 0x466(r30)
/* 8049F580  48 00 00 34 */	b lbl_8049F5B4
lbl_8049F584:
/* 8049F584  4B F4 A3 E1 */	bl mSP_GetShopLevel
/* 8049F588  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049F58C  38 03 FF FF */	addi r0, r3, -1
/* 8049F590  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049F594  3C 84 00 02 */	addis r4, r4, 2
/* 8049F598  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 8049F59C  38 84 04 74 */	addi r4, r4, 0x474
/* 8049F5A0  4B FF FD 85 */	bl func_8049F324
/* 8049F5A4  88 1E 04 66 */	lbz r0, 0x466(r30)
/* 8049F5A8  38 60 00 00 */	li r3, 0
/* 8049F5AC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8049F5B0  98 1E 04 66 */	stb r0, 0x466(r30)
lbl_8049F5B4:
/* 8049F5B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F5B8  4B BF B9 69 */	bl func_8009AF20
/* 8049F5BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049F5C0  7C 08 03 A6 */	mtlr r0
/* 8049F5C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8049F5C8  4E 80 00 20 */	blr 
