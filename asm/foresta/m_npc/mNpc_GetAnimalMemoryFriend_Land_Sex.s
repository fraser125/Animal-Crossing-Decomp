lbl_803CC1AC:
/* 803CC1AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CC1B0  7C 08 02 A6 */	mflr r0
/* 803CC1B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CC1B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803CC1BC  4B CC ED 11 */	bl func_8009AECC
/* 803CC1C0  38 00 00 00 */	li r0, 0
/* 803CC1C4  7C 7B 1B 78 */	mr r27, r3
/* 803CC1C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CC1CC  7C 9C 23 78 */	mr r28, r4
/* 803CC1D0  7C BD 2B 78 */	mr r29, r5
/* 803CC1D4  3B E0 FF FF */	li r31, -1
/* 803CC1D8  98 01 00 08 */	stb r0, 8(r1)
/* 803CC1DC  3B C0 00 00 */	li r30, 0
/* 803CC1E0  48 00 00 68 */	b lbl_803CC248
lbl_803CC1E4:
/* 803CC1E4  7F 63 DB 78 */	mr r3, r27
/* 803CC1E8  4B FF F6 89 */	bl mNpc_CheckFreeAnimalMemory
/* 803CC1EC  2C 03 00 00 */	cmpwi r3, 0
/* 803CC1F0  40 82 00 50 */	bne lbl_803CC240
/* 803CC1F4  7F 63 DB 78 */	mr r3, r27
/* 803CC1F8  48 01 44 B1 */	bl mPr_GetPrivateIdx
/* 803CC1FC  2C 03 FF FF */	cmpwi r3, -1
/* 803CC200  41 82 00 40 */	beq lbl_803CC240
/* 803CC204  1C 83 24 40 */	mulli r4, r3, 0x2440
/* 803CC208  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CC20C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803CC210  7C 60 22 14 */	add r3, r0, r4
/* 803CC214  88 03 00 34 */	lbz r0, 0x34(r3)
/* 803CC218  7C 00 07 74 */	extsb r0, r0
/* 803CC21C  7C 00 E8 00 */	cmpw r0, r29
/* 803CC220  40 82 00 20 */	bne lbl_803CC240
/* 803CC224  7F 64 DB 78 */	mr r4, r27
/* 803CC228  38 61 00 0C */	addi r3, r1, 0xc
/* 803CC22C  38 A1 00 08 */	addi r5, r1, 8
/* 803CC230  4B FF FE 01 */	bl mNpc_SelectBestFriend
/* 803CC234  2C 03 00 01 */	cmpwi r3, 1
/* 803CC238  40 82 00 08 */	bne lbl_803CC240
/* 803CC23C  7F DF F3 78 */	mr r31, r30
lbl_803CC240:
/* 803CC240  3B 7B 01 38 */	addi r27, r27, 0x138
/* 803CC244  3B DE 00 01 */	addi r30, r30, 1
lbl_803CC248:
/* 803CC248  7C 1E E0 00 */	cmpw r30, r28
/* 803CC24C  41 80 FF 98 */	blt lbl_803CC1E4
/* 803CC250  7F E3 FB 78 */	mr r3, r31
/* 803CC254  39 61 00 30 */	addi r11, r1, 0x30
/* 803CC258  4B CC EC C1 */	bl func_8009AF18
/* 803CC25C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CC260  7C 08 03 A6 */	mtlr r0
/* 803CC264  38 21 00 30 */	addi r1, r1, 0x30
/* 803CC268  4E 80 00 20 */	blr 
