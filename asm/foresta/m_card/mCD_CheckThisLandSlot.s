lbl_803FB280:
/* 803FB280  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FB284  7C 08 02 A6 */	mflr r0
/* 803FB288  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FB28C  39 61 00 30 */	addi r11, r1, 0x30
/* 803FB290  4B C9 FC 31 */	bl func_8009AEC0
/* 803FB294  7C DB 33 79 */	or. r27, r6, r6
/* 803FB298  7C 78 1B 78 */	mr r24, r3
/* 803FB29C  7C 99 23 78 */	mr r25, r4
/* 803FB2A0  7C BA 2B 78 */	mr r26, r5
/* 803FB2A4  3B A0 FF FF */	li r29, -1
/* 803FB2A8  41 82 00 D4 */	beq lbl_803FB37C
/* 803FB2AC  3C 60 80 66 */	lis r3, l_mCD_land_file_name@ha /* 0x8065E688@ha */
/* 803FB2B0  3B 80 00 00 */	li r28, 0
/* 803FB2B4  3B C3 E6 88 */	addi r30, r3, l_mCD_land_file_name@l /* 0x8065E688@l */
/* 803FB2B8  3F E0 00 01 */	lis r31, 1
lbl_803FB2BC:
/* 803FB2BC  38 00 FF FD */	li r0, -3
/* 803FB2C0  38 7C 00 01 */	addi r3, r28, 1
/* 803FB2C4  90 18 00 00 */	stw r0, 0(r24)
/* 803FB2C8  4B FF F1 49 */	bl mCD_get_offset
/* 803FB2CC  7C 66 1B 78 */	mr r6, r3
/* 803FB2D0  7F 63 DB 78 */	mr r3, r27
/* 803FB2D4  7F C4 F3 78 */	mr r4, r30
/* 803FB2D8  7F 47 D3 78 */	mr r7, r26
/* 803FB2DC  7F 08 C3 78 */	mr r8, r24
/* 803FB2E0  38 BF A0 00 */	addi r5, r31, -24576
/* 803FB2E4  4B FF D8 35 */	bl mCD_read_fg
/* 803FB2E8  2C 03 00 01 */	cmpwi r3, 1
/* 803FB2EC  40 82 00 84 */	bne lbl_803FB370
/* 803FB2F0  3C 9B 00 01 */	addis r4, r27, 1
/* 803FB2F4  7F 63 DB 78 */	mr r3, r27
/* 803FB2F8  A0 84 91 2A */	lhz r4, -0x6ed6(r4)
/* 803FB2FC  4B FB 12 91 */	bl mFRm_CheckSaveData_common
/* 803FB300  2C 03 00 01 */	cmpwi r3, 1
/* 803FB304  40 82 00 60 */	bne lbl_803FB364
/* 803FB308  3C 7B 00 01 */	addis r3, r27, 1
/* 803FB30C  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 803FB310  38 63 91 20 */	addi r3, r3, -28384
/* 803FB314  4B FB 88 25 */	bl mLd_CheckThisLand
/* 803FB318  2C 03 00 01 */	cmpwi r3, 1
/* 803FB31C  40 82 00 14 */	bne lbl_803FB330
/* 803FB320  38 00 00 00 */	li r0, 0
/* 803FB324  3B A0 00 01 */	li r29, 1
/* 803FB328  90 19 00 00 */	stw r0, 0(r25)
/* 803FB32C  48 00 00 50 */	b lbl_803FB37C
lbl_803FB330:
/* 803FB330  3C 7B 00 01 */	addis r3, r27, 1
/* 803FB334  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 803FB338  4B FB 84 BD */	bl mLd_CheckId
/* 803FB33C  2C 03 00 01 */	cmpwi r3, 1
/* 803FB340  40 82 00 14 */	bne lbl_803FB354
/* 803FB344  38 00 00 0E */	li r0, 0xe
/* 803FB348  3B A0 00 00 */	li r29, 0
/* 803FB34C  90 19 00 00 */	stw r0, 0(r25)
/* 803FB350  48 00 00 2C */	b lbl_803FB37C
lbl_803FB354:
/* 803FB354  38 00 00 0D */	li r0, 0xd
/* 803FB358  3B A0 00 00 */	li r29, 0
/* 803FB35C  90 19 00 00 */	stw r0, 0(r25)
/* 803FB360  48 00 00 10 */	b lbl_803FB370
lbl_803FB364:
/* 803FB364  38 00 00 0D */	li r0, 0xd
/* 803FB368  3B A0 00 00 */	li r29, 0
/* 803FB36C  90 19 00 00 */	stw r0, 0(r25)
lbl_803FB370:
/* 803FB370  3B 9C 00 01 */	addi r28, r28, 1
/* 803FB374  2C 1C 00 02 */	cmpwi r28, 2
/* 803FB378  41 80 FF 44 */	blt lbl_803FB2BC
lbl_803FB37C:
/* 803FB37C  7F A3 EB 78 */	mr r3, r29
/* 803FB380  39 61 00 30 */	addi r11, r1, 0x30
/* 803FB384  4B C9 FB 89 */	bl func_8009AF0C
/* 803FB388  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FB38C  7C 08 03 A6 */	mtlr r0
/* 803FB390  38 21 00 30 */	addi r1, r1, 0x30
/* 803FB394  4E 80 00 20 */	blr 
