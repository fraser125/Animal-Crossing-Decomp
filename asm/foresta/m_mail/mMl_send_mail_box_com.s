lbl_803BCD48:
/* 803BCD48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BCD4C  7C 08 02 A6 */	mflr r0
/* 803BCD50  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BCD54  39 61 00 40 */	addi r11, r1, 0x40
/* 803BCD58  4B CD E1 5D */	bl func_8009AEB4
/* 803BCD5C  8B 81 00 4B */	lbz r28, 0x4b(r1)
/* 803BCD60  7C 75 1B 78 */	mr r21, r3
/* 803BCD64  7C B6 2B 78 */	mr r22, r5
/* 803BCD68  7C D7 33 78 */	mr r23, r6
/* 803BCD6C  7C F8 3B 78 */	mr r24, r7
/* 803BCD70  7D 19 43 78 */	mr r25, r8
/* 803BCD74  7D 3A 4B 78 */	mr r26, r9
/* 803BCD78  7D 5B 53 78 */	mr r27, r10
/* 803BCD7C  7C 83 23 78 */	mr r3, r4
/* 803BCD80  3B A0 00 00 */	li r29, 0
/* 803BCD84  4B FF 68 35 */	bl mHS_get_arrange_idx
/* 803BCD88  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803BCD8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803BCD90  7E A3 AB 78 */	mr r3, r21
/* 803BCD94  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803BCD98  7C 80 2A 14 */	add r4, r0, r5
/* 803BCD9C  3F C4 00 01 */	addis r30, r4, 1
/* 803BCDA0  3B DE 9C E8 */	addi r30, r30, -25368
/* 803BCDA4  7F C4 F3 78 */	mr r4, r30
/* 803BCDA8  48 02 33 9D */	bl mPr_CheckCmpPersonalID
/* 803BCDAC  2C 03 00 01 */	cmpwi r3, 1
/* 803BCDB0  40 82 00 58 */	bne lbl_803BCE08
/* 803BCDB4  38 7E 1A 30 */	addi r3, r30, 0x1a30
/* 803BCDB8  38 80 00 0A */	li r4, 0xa
/* 803BCDBC  4B FF FA E9 */	bl mMl_chk_mail_free_space
/* 803BCDC0  7C 7F 1B 78 */	mr r31, r3
/* 803BCDC4  2C 1F FF FF */	cmpwi r31, -1
/* 803BCDC8  41 82 00 40 */	beq lbl_803BCE08
/* 803BCDCC  7E C3 B3 78 */	mr r3, r22
/* 803BCDD0  7E A4 AB 78 */	mr r4, r21
/* 803BCDD4  7E E5 BB 78 */	mr r5, r23
/* 803BCDD8  7F 06 C3 78 */	mr r6, r24
/* 803BCDDC  7F 47 D3 78 */	mr r7, r26
/* 803BCDE0  7F 28 CB 78 */	mr r8, r25
/* 803BCDE4  7F 69 DB 78 */	mr r9, r27
/* 803BCDE8  7F 8A E3 78 */	mr r10, r28
/* 803BCDEC  4B FF FE 8D */	bl mMl_get_mail_to_player_com
/* 803BCDF0  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803BCDF4  7E C4 B3 78 */	mr r4, r22
/* 803BCDF8  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 803BCDFC  7C 7E 1A 14 */	add r3, r30, r3
/* 803BCE00  4B FF FB 75 */	bl mMl_copy_mail
/* 803BCE04  3B A0 00 01 */	li r29, 1
lbl_803BCE08:
/* 803BCE08  7F A3 EB 78 */	mr r3, r29
/* 803BCE0C  39 61 00 40 */	addi r11, r1, 0x40
/* 803BCE10  4B CD E0 F1 */	bl func_8009AF00
/* 803BCE14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BCE18  7C 08 03 A6 */	mtlr r0
/* 803BCE1C  38 21 00 40 */	addi r1, r1, 0x40
/* 803BCE20  4E 80 00 20 */	blr 
