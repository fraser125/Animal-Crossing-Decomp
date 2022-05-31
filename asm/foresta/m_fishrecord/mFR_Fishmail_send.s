lbl_803AC2E8:
/* 803AC2E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AC2EC  7C 08 02 A6 */	mflr r0
/* 803AC2F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AC2F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC2F8  4B CE EB D1 */	bl func_8009AEC8
/* 803AC2FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AC300  38 60 01 2A */	li r3, 0x12a
/* 803AC304  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AC308  3F 64 00 02 */	addis r27, r4, 2
/* 803AC30C  3B 7B 61 20 */	addi r27, r27, 0x6120
/* 803AC310  48 01 01 4D */	bl zelda_malloc
/* 803AC314  7C 7A 1B 79 */	or. r26, r3, r3
/* 803AC318  41 82 00 B0 */	beq lbl_803AC3C8
/* 803AC31C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AC320  3B A0 00 00 */	li r29, 0
/* 803AC324  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AC328  3B E0 00 00 */	li r31, 0
lbl_803AC32C:
/* 803AC32C  7C 7E FA 14 */	add r3, r30, r31
/* 803AC330  3F 83 00 02 */	addis r28, r3, 2
/* 803AC334  80 1C 3E 84 */	lwz r0, 0x3e84(r28)
/* 803AC338  3B 9C 3E 68 */	addi r28, r28, 0x3e68
/* 803AC33C  2C 00 00 00 */	cmpwi r0, 0
/* 803AC340  40 81 00 70 */	ble lbl_803AC3B0
/* 803AC344  7F 83 E3 78 */	mr r3, r28
/* 803AC348  48 03 43 61 */	bl mPr_GetPrivateIdx
/* 803AC34C  2C 03 FF FF */	cmpwi r3, -1
/* 803AC350  41 82 00 60 */	beq lbl_803AC3B0
/* 803AC354  7F 64 DB 78 */	mr r4, r27
/* 803AC358  38 7C 00 14 */	addi r3, r28, 0x14
/* 803AC35C  48 05 A5 B9 */	bl lbRTC_IsOverTime
/* 803AC360  2C 03 00 01 */	cmpwi r3, 1
/* 803AC364  40 82 00 4C */	bne lbl_803AC3B0
/* 803AC368  7F 83 E3 78 */	mr r3, r28
/* 803AC36C  7F 44 D3 78 */	mr r4, r26
/* 803AC370  4B FF FE A9 */	bl mFR_GetFishPresentMail
/* 803AC374  7F 83 E3 78 */	mr r3, r28
/* 803AC378  7F 44 D3 78 */	mr r4, r26
/* 803AC37C  4B FF FD C9 */	bl mFR_Fishmail_send_post
/* 803AC380  2C 03 00 00 */	cmpwi r3, 0
/* 803AC384  41 82 00 10 */	beq lbl_803AC394
/* 803AC388  7F 83 E3 78 */	mr r3, r28
/* 803AC38C  4B FF F2 25 */	bl func_803AB5B0
/* 803AC390  48 00 00 20 */	b lbl_803AC3B0
lbl_803AC394:
/* 803AC394  7F 83 E3 78 */	mr r3, r28
/* 803AC398  7F 44 D3 78 */	mr r4, r26
/* 803AC39C  4B FF FE 31 */	bl mFR_Fishmail_send_postoffice
/* 803AC3A0  2C 03 00 00 */	cmpwi r3, 0
/* 803AC3A4  41 82 00 0C */	beq lbl_803AC3B0
/* 803AC3A8  7F 83 E3 78 */	mr r3, r28
/* 803AC3AC  4B FF F2 05 */	bl func_803AB5B0
lbl_803AC3B0:
/* 803AC3B0  3B BD 00 01 */	addi r29, r29, 1
/* 803AC3B4  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AC3B8  2C 1D 00 05 */	cmpwi r29, 5
/* 803AC3BC  41 80 FF 70 */	blt lbl_803AC32C
/* 803AC3C0  7F 43 D3 78 */	mr r3, r26
/* 803AC3C4  48 01 00 F1 */	bl zelda_free
lbl_803AC3C8:
/* 803AC3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803AC3CC  4B CE EB 49 */	bl func_8009AF14
/* 803AC3D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AC3D4  7C 08 03 A6 */	mtlr r0
/* 803AC3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803AC3DC  4E 80 00 20 */	blr 
