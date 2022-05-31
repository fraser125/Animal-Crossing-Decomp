lbl_803CD274:
/* 803CD274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CD278  7C 08 02 A6 */	mflr r0
/* 803CD27C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CD280  39 61 00 30 */	addi r11, r1, 0x30
/* 803CD284  4B CC DC 49 */	bl func_8009AECC
/* 803CD288  7C 7E 1B 78 */	mr r30, r3
/* 803CD28C  38 61 00 08 */	addi r3, r1, 8
/* 803CD290  7F C4 F3 78 */	mr r4, r30
/* 803CD294  3B A0 00 00 */	li r29, 0
/* 803CD298  4B FE F7 CD */	bl mMl_get_npcinfo_from_mail_name
/* 803CD29C  2C 03 00 01 */	cmpwi r3, 1
/* 803CD2A0  40 82 01 94 */	bne lbl_803CD434
/* 803CD2A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CD2A8  38 61 00 08 */	addi r3, r1, 8
/* 803CD2AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CD2B0  3F E4 00 01 */	addis r31, r4, 1
/* 803CD2B4  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803CD2B8  4B FF F4 D1 */	bl mNpc_SearchAnimalPersonalID
/* 803CD2BC  7C 7C 1B 78 */	mr r28, r3
/* 803CD2C0  2C 1C FF FF */	cmpwi r28, -1
/* 803CD2C4  41 82 01 70 */	beq lbl_803CD434
/* 803CD2C8  1C 1C 09 88 */	mulli r0, r28, 0x988
/* 803CD2CC  38 7E 00 16 */	addi r3, r30, 0x16
/* 803CD2D0  38 A0 00 07 */	li r5, 7
/* 803CD2D4  7F 7F 02 14 */	add r27, r31, r0
/* 803CD2D8  38 9B 00 10 */	addi r4, r27, 0x10
/* 803CD2DC  4B FF EA 9D */	bl mNpc_GetAnimalMemoryIdx
/* 803CD2E0  7C 7D 1B 78 */	mr r29, r3
/* 803CD2E4  2C 1D FF FF */	cmpwi r29, -1
/* 803CD2E8  40 82 00 34 */	bne lbl_803CD31C
/* 803CD2EC  7F E3 FB 78 */	mr r3, r31
/* 803CD2F0  38 9B 00 10 */	addi r4, r27, 0x10
/* 803CD2F4  38 A0 00 07 */	li r5, 7
/* 803CD2F8  4B FF E7 D1 */	bl mNpc_ForceGetFreeAnimalMemoryIdx
/* 803CD2FC  7C 7D 1B 79 */	or. r29, r3, r3
/* 803CD300  41 80 00 2C */	blt lbl_803CD32C
/* 803CD304  1C 7D 01 38 */	mulli r3, r29, 0x138
/* 803CD308  38 9E 00 16 */	addi r4, r30, 0x16
/* 803CD30C  38 63 00 10 */	addi r3, r3, 0x10
/* 803CD310  7C 7B 1A 14 */	add r3, r27, r3
/* 803CD314  48 01 2E 0D */	bl mPr_CopyPersonalID
/* 803CD318  48 00 00 14 */	b lbl_803CD32C
lbl_803CD31C:
/* 803CD31C  A0 BE 00 2C */	lhz r5, 0x2c(r30)
/* 803CD320  7F 63 DB 78 */	mr r3, r27
/* 803CD324  38 9E 00 16 */	addi r4, r30, 0x16
/* 803CD328  4B FF FE 3D */	bl mNpc_SetPresentCloth
lbl_803CD32C:
/* 803CD32C  1C 9D 01 38 */	mulli r4, r29, 0x138
/* 803CD330  38 60 00 01 */	li r3, 1
/* 803CD334  3B E4 00 10 */	addi r31, r4, 0x10
/* 803CD338  7F FB FA 14 */	add r31, r27, r31
/* 803CD33C  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 803CD340  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 803CD344  3B BF 00 32 */	addi r29, r31, 0x32
/* 803CD348  98 1F 00 31 */	stb r0, 0x31(r31)
/* 803CD34C  7F A3 EB 78 */	mr r3, r29
/* 803CD350  4B FF E2 F9 */	bl mNpc_ClearAnimalMail
/* 803CD354  7F A3 EB 78 */	mr r3, r29
/* 803CD358  7F C4 F3 78 */	mr r4, r30
/* 803CD35C  4B FF F8 D9 */	bl mNpc_Mail2AnimalMail
/* 803CD360  7F 63 DB 78 */	mr r3, r27
/* 803CD364  7F E4 FB 78 */	mr r4, r31
/* 803CD368  38 BE 00 4A */	addi r5, r30, 0x4a
/* 803CD36C  4B FF FD 99 */	bl mNpc_SetRemailCond
/* 803CD370  7C 7D 1B 78 */	mr r29, r3
/* 803CD374  4B FC D8 C1 */	bl mEv_CheckFirstJob
/* 803CD378  2C 03 00 01 */	cmpwi r3, 1
/* 803CD37C  40 82 00 4C */	bne lbl_803CD3C8
/* 803CD380  48 01 67 E9 */	bl mQst_GetFirstJobData
/* 803CD384  88 03 00 00 */	lbz r0, 0(r3)
/* 803CD388  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 803CD38C  28 00 00 06 */	cmplwi r0, 6
/* 803CD390  41 82 00 0C */	beq lbl_803CD39C
/* 803CD394  28 00 00 0A */	cmplwi r0, 0xa
/* 803CD398  40 82 00 98 */	bne lbl_803CD430
lbl_803CD39C:
/* 803CD39C  88 A3 00 01 */	lbz r5, 1(r3)
/* 803CD3A0  54 A0 EF 3F */	rlwinm. r0, r5, 0x1d, 0x1c, 0x1f
/* 803CD3A4  41 82 00 8C */	beq lbl_803CD430
/* 803CD3A8  38 00 00 03 */	li r0, 3
/* 803CD3AC  38 80 00 00 */	li r4, 0
/* 803CD3B0  50 05 1E 78 */	rlwimi r5, r0, 3, 0x19, 0x1c
/* 803CD3B4  98 A3 00 01 */	stb r5, 1(r3)
/* 803CD3B8  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 803CD3BC  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 803CD3C0  98 1F 00 31 */	stb r0, 0x31(r31)
/* 803CD3C4  48 00 00 6C */	b lbl_803CD430
lbl_803CD3C8:
/* 803CD3C8  4B FE 67 41 */	bl mLd_PlayerManKindCheck
/* 803CD3CC  2C 03 00 00 */	cmpwi r3, 0
/* 803CD3D0  40 82 00 38 */	bne lbl_803CD408
/* 803CD3D4  38 60 00 06 */	li r3, 6
/* 803CD3D8  48 01 61 8D */	bl mQst_GetOccuredContestIdx
/* 803CD3DC  7C 03 E0 00 */	cmpw r3, r28
/* 803CD3E0  40 82 00 28 */	bne lbl_803CD408
/* 803CD3E4  A0 DE 00 2C */	lhz r6, 0x2c(r30)
/* 803CD3E8  38 7B 08 A8 */	addi r3, r27, 0x8a8
/* 803CD3EC  38 9E 00 16 */	addi r4, r30, 0x16
/* 803CD3F0  38 BE 00 4A */	addi r5, r30, 0x4a
/* 803CD3F4  48 01 66 C5 */	bl mQst_SetReceiveLetter
/* 803CD3F8  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 803CD3FC  38 60 00 00 */	li r3, 0
/* 803CD400  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 803CD404  98 1F 00 31 */	stb r0, 0x31(r31)
lbl_803CD408:
/* 803CD408  2C 1D 00 00 */	cmpwi r29, 0
/* 803CD40C  38 80 00 03 */	li r4, 3
/* 803CD410  40 82 00 08 */	bne lbl_803CD418
/* 803CD414  38 80 FF FE */	li r4, -2
lbl_803CD418:
/* 803CD418  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 803CD41C  28 00 00 00 */	cmplwi r0, 0
/* 803CD420  41 82 00 08 */	beq lbl_803CD428
/* 803CD424  38 84 00 03 */	addi r4, r4, 3
lbl_803CD428:
/* 803CD428  7F E3 FB 78 */	mr r3, r31
/* 803CD42C  4B FF E4 01 */	bl mNpc_AddFriendship
lbl_803CD430:
/* 803CD430  3B A0 00 01 */	li r29, 1
lbl_803CD434:
/* 803CD434  7F A3 EB 78 */	mr r3, r29
/* 803CD438  39 61 00 30 */	addi r11, r1, 0x30
/* 803CD43C  4B CC DA DD */	bl func_8009AF18
/* 803CD440  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CD444  7C 08 03 A6 */	mtlr r0
/* 803CD448  38 21 00 30 */	addi r1, r1, 0x30
/* 803CD44C  4E 80 00 20 */	blr 
