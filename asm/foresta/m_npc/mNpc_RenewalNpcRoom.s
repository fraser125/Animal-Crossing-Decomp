lbl_803D0034:
/* 803D0034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D0038  7C 08 02 A6 */	mflr r0
/* 803D003C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D0040  39 61 00 20 */	addi r11, r1, 0x20
/* 803D0044  4B CC AE 8D */	bl func_8009AED0
/* 803D0048  7C 7F 1B 78 */	mr r31, r3
/* 803D004C  4B FD 4C 81 */	bl mFI_GetFieldId
/* 803D0050  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D0054  38 80 00 00 */	li r4, 0
/* 803D0058  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 803D005C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D0060  80 06 00 14 */	lwz r0, 0x14(r6)
/* 803D0064  3C A6 00 02 */	addis r5, r6, 2
/* 803D0068  90 81 00 08 */	stw r4, 8(r1)
/* 803D006C  3B A0 00 00 */	li r29, 0
/* 803D0070  2C 00 00 30 */	cmpwi r0, 0x30
/* 803D0074  A0 85 65 1C */	lhz r4, 0x651c(r5)
/* 803D0078  3B 80 00 00 */	li r28, 0
/* 803D007C  40 82 00 54 */	bne lbl_803D00D0
/* 803D0080  3B A0 00 08 */	li r29, 8
/* 803D0084  3B 80 00 20 */	li r28, 0x20
/* 803D0088  48 00 53 B1 */	bl mNpc_GetIslandRoomFtrNum
/* 803D008C  7C 7E 1B 78 */	mr r30, r3
/* 803D0090  2C 1E 00 02 */	cmpwi r30, 2
/* 803D0094  41 80 00 90 */	blt lbl_803D0124
/* 803D0098  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D009C  38 61 00 0C */	addi r3, r1, 0xc
/* 803D00A0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803D00A4  38 81 00 08 */	addi r4, r1, 8
/* 803D00A8  3C A5 00 02 */	addis r5, r5, 2
/* 803D00AC  A0 A5 34 40 */	lhz r5, 0x3440(r5)
/* 803D00B0  48 00 44 C1 */	bl mNpc_GetIslandWallFloorIdx
/* 803D00B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D00B8  2C 1E 00 05 */	cmpwi r30, 5
/* 803D00BC  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 803D00C0  41 80 00 64 */	blt lbl_803D0124
/* 803D00C4  80 01 00 08 */	lwz r0, 8(r1)
/* 803D00C8  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803D00CC  48 00 00 58 */	b lbl_803D0124
lbl_803D00D0:
/* 803D00D0  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803D00D4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803D00D8  40 82 00 4C */	bne lbl_803D0124
/* 803D00DC  28 04 00 00 */	cmplwi r4, 0
/* 803D00E0  41 82 00 44 */	beq lbl_803D0124
/* 803D00E4  28 04 FF FF */	cmplwi r4, 0xffff
/* 803D00E8  41 82 00 3C */	beq lbl_803D0124
/* 803D00EC  3C 66 00 01 */	addis r3, r6, 1
/* 803D00F0  38 A0 00 0F */	li r5, 0xf
/* 803D00F4  38 63 74 38 */	addi r3, r3, 0x7438
/* 803D00F8  4B FF C5 E5 */	bl mNpc_SearchAnimalinfo
/* 803D00FC  2C 03 FF FF */	cmpwi r3, -1
/* 803D0100  40 82 00 08 */	bne lbl_803D0108
/* 803D0104  38 60 00 00 */	li r3, 0
lbl_803D0108:
/* 803D0108  1C 83 00 38 */	mulli r4, r3, 0x38
/* 803D010C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D0110  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803D0114  7C 60 22 14 */	add r3, r0, r4
/* 803D0118  3C 63 00 02 */	addis r3, r3, 2
/* 803D011C  8B A3 61 92 */	lbz r29, 0x6192(r3)
/* 803D0120  8B 83 61 93 */	lbz r28, 0x6193(r3)
lbl_803D0124:
/* 803D0124  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 803D0128  39 61 00 20 */	addi r11, r1, 0x20
/* 803D012C  53 A0 44 2E */	rlwimi r0, r29, 8, 0x10, 0x17
/* 803D0130  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D0134  4B CC AD E9 */	bl func_8009AF1C
/* 803D0138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D013C  7C 08 03 A6 */	mtlr r0
/* 803D0140  38 21 00 20 */	addi r1, r1, 0x20
/* 803D0144  4E 80 00 20 */	blr 
