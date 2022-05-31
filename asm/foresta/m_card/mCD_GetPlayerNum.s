lbl_80400240:
/* 80400240  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80400244  7C 08 02 A6 */	mflr r0
/* 80400248  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040024C  39 61 00 40 */	addi r11, r1, 0x40
/* 80400250  4B C9 AC 71 */	bl func_8009AEC0
/* 80400254  3C 60 81 19 */	lis r3, l_memMgr@ha /* 0x81197638@ha */
/* 80400258  3C 80 81 1A */	lis r4, l_mcd_card_private_table@ha /* 0x81198814@ha */
/* 8040025C  38 63 76 38 */	addi r3, r3, l_memMgr@l /* 0x81197638@l */
/* 80400260  3B 20 FF FF */	li r25, -1
/* 80400264  38 04 88 14 */	addi r0, r4, l_mcd_card_private_table@l /* 0x81198814@l */
/* 80400268  3B A0 00 00 */	li r29, 0
/* 8040026C  7C 7F 1B 78 */	mr r31, r3
/* 80400270  7C 1E 03 78 */	mr r30, r0
/* 80400274  4B FF A2 59 */	bl mCD_ClearMemMgr_com2
/* 80400278  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A000@ha */
/* 8040027C  38 63 A0 00 */	addi r3, r3, 0xA000 /* 0x0000A000@l */
/* 80400280  4B FF 75 75 */	bl mCD_malloc_32
/* 80400284  3C 80 81 19 */	lis r4, l_memMgr@ha /* 0x81197638@ha */
/* 80400288  28 03 00 00 */	cmplwi r3, 0
/* 8040028C  38 84 76 38 */	addi r4, r4, l_memMgr@l /* 0x81197638@l */
/* 80400290  90 64 00 0C */	stw r3, 0xc(r4)
/* 80400294  41 82 01 C8 */	beq lbl_8040045C
/* 80400298  7F E3 FB 78 */	mr r3, r31
/* 8040029C  4B FF B4 1D */	bl mCD_get_this_land_slot_no
/* 804002A0  2C 03 00 01 */	cmpwi r3, 1
/* 804002A4  40 82 01 B8 */	bne lbl_8040045C
/* 804002A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 804002AC  2C 00 FF FF */	cmpwi r0, -1
/* 804002B0  41 82 01 AC */	beq lbl_8040045C
/* 804002B4  7F C3 F3 78 */	mr r3, r30
/* 804002B8  38 80 00 13 */	li r4, 0x13
/* 804002BC  4B FF A2 D5 */	bl mCD_ClearCardPrivateTable_com
/* 804002C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 804002C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A000@ha */
/* 804002C8  38 63 A0 00 */	addi r3, r3, 0xA000 /* 0x0000A000@l */
/* 804002CC  7C 00 00 F8 */	nor r0, r0, r0
/* 804002D0  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 804002D4  1C 9B 00 94 */	mulli r4, r27, 0x94
/* 804002D8  3B 44 00 54 */	addi r26, r4, 0x54
/* 804002DC  7F 5F D2 14 */	add r26, r31, r26
/* 804002E0  4B FF 75 15 */	bl mCD_malloc_32
/* 804002E4  90 7A 00 7C */	stw r3, 0x7c(r26)
/* 804002E8  80 1A 00 7C */	lwz r0, 0x7c(r26)
/* 804002EC  28 00 00 00 */	cmplwi r0, 0
/* 804002F0  41 82 01 68 */	beq lbl_80400458
/* 804002F4  7F 65 DB 78 */	mr r5, r27
/* 804002F8  38 7A 00 74 */	addi r3, r26, 0x74
/* 804002FC  38 80 20 00 */	li r4, 0x2000
/* 80400300  4B FF 75 A1 */	bl mCD_check_card
/* 80400304  2C 03 00 01 */	cmpwi r3, 1
/* 80400308  40 82 01 50 */	bne lbl_80400458
/* 8040030C  80 9A 00 7C */	lwz r4, 0x7c(r26)
/* 80400310  7F 63 DB 78 */	mr r3, r27
/* 80400314  38 A0 00 00 */	li r5, 0
/* 80400318  4B C9 03 E5 */	bl CARDMount
/* 8040031C  90 7A 00 74 */	stw r3, 0x74(r26)
/* 80400320  80 1A 00 74 */	lwz r0, 0x74(r26)
/* 80400324  2C 00 00 00 */	cmpwi r0, 0
/* 80400328  41 82 00 0C */	beq lbl_80400334
/* 8040032C  2C 00 FF FA */	cmpwi r0, -6
/* 80400330  40 82 01 18 */	bne lbl_80400448
lbl_80400334:
/* 80400334  7F 63 DB 78 */	mr r3, r27
/* 80400338  4B C8 FA 41 */	bl CARDCheck
/* 8040033C  90 7A 00 74 */	stw r3, 0x74(r26)
/* 80400340  80 1A 00 74 */	lwz r0, 0x74(r26)
/* 80400344  2C 00 00 00 */	cmpwi r0, 0
/* 80400348  40 82 00 F4 */	bne lbl_8040043C
/* 8040034C  3B 00 00 00 */	li r24, 0
/* 80400350  3F 80 00 01 */	lis r28, 0x0001 /* 0x0000A000@ha */
lbl_80400354:
/* 80400354  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80400358  38 9C A0 00 */	addi r4, r28, 0xA000 /* 0x0000A000@l */
/* 8040035C  4B C5 CD 0D */	bl bzero
/* 80400360  7F 63 DB 78 */	mr r3, r27
/* 80400364  7F 04 C3 78 */	mr r4, r24
/* 80400368  7F 45 D3 78 */	mr r5, r26
/* 8040036C  4B C9 22 8D */	bl CARDGetStatus
/* 80400370  90 7A 00 74 */	stw r3, 0x74(r26)
/* 80400374  80 1A 00 74 */	lwz r0, 0x74(r26)
/* 80400378  2C 00 00 00 */	cmpwi r0, 0
/* 8040037C  40 82 00 B4 */	bne lbl_80400430
/* 80400380  7F 43 D3 78 */	mr r3, r26
/* 80400384  4B FF A9 85 */	bl mCD_CheckPassportFileStatus
/* 80400388  2C 03 00 01 */	cmpwi r3, 1
/* 8040038C  40 82 00 A4 */	bne lbl_80400430
/* 80400390  7F 63 DB 78 */	mr r3, r27
/* 80400394  7F 44 D3 78 */	mr r4, r26
/* 80400398  38 A1 00 08 */	addi r5, r1, 8
/* 8040039C  4B C9 11 09 */	bl CARDOpen
/* 804003A0  90 7A 00 74 */	stw r3, 0x74(r26)
/* 804003A4  80 1A 00 74 */	lwz r0, 0x74(r26)
/* 804003A8  2C 00 00 00 */	cmpwi r0, 0
/* 804003AC  40 82 00 84 */	bne lbl_80400430
/* 804003B0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 804003B4  38 61 00 08 */	addi r3, r1, 8
/* 804003B8  38 A0 60 00 */	li r5, 0x6000
/* 804003BC  38 C0 00 00 */	li r6, 0
/* 804003C0  4B C9 1A 81 */	bl CARDRead
/* 804003C4  90 7A 00 74 */	stw r3, 0x74(r26)
/* 804003C8  80 1A 00 74 */	lwz r0, 0x74(r26)
/* 804003CC  2C 00 00 00 */	cmpwi r0, 0
/* 804003D0  40 82 00 58 */	bne lbl_80400428
/* 804003D4  83 3F 00 0C */	lwz r25, 0xc(r31)
/* 804003D8  38 80 2E 20 */	li r4, 0x2e20
/* 804003DC  38 79 30 40 */	addi r3, r25, 0x3040
/* 804003E0  4B FA C1 1D */	bl mFRm_ReturnCheckSum
/* 804003E4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804003E8  38 79 30 60 */	addi r3, r25, 0x3060
/* 804003EC  40 82 00 3C */	bne lbl_80400428
/* 804003F0  4B FD FC 55 */	bl mPr_NullCheckPersonalID
/* 804003F4  2C 03 00 00 */	cmpwi r3, 0
/* 804003F8  40 82 00 30 */	bne lbl_80400428
/* 804003FC  7F C3 F3 78 */	mr r3, r30
/* 80400400  7F 45 D3 78 */	mr r5, r26
/* 80400404  38 99 30 60 */	addi r4, r25, 0x3060
/* 80400408  4B FF A2 15 */	bl mCD_SetCardPrivateTable
/* 8040040C  3B BD 00 01 */	addi r29, r29, 1
/* 80400410  3B DE 00 34 */	addi r30, r30, 0x34
/* 80400414  28 1D 00 13 */	cmplwi r29, 0x13
/* 80400418  41 80 00 10 */	blt lbl_80400428
/* 8040041C  38 61 00 08 */	addi r3, r1, 8
/* 80400420  4B C9 11 FD */	bl CARDClose
/* 80400424  48 00 00 18 */	b lbl_8040043C
lbl_80400428:
/* 80400428  38 61 00 08 */	addi r3, r1, 8
/* 8040042C  4B C9 11 F1 */	bl CARDClose
lbl_80400430:
/* 80400430  3B 18 00 01 */	addi r24, r24, 1
/* 80400434  2C 18 00 7F */	cmpwi r24, 0x7f
/* 80400438  41 80 FF 1C */	blt lbl_80400354
lbl_8040043C:
/* 8040043C  7F 63 DB 78 */	mr r3, r27
/* 80400440  4B C9 03 A1 */	bl CARDUnmount
/* 80400444  48 00 00 14 */	b lbl_80400458
lbl_80400448:
/* 80400448  2C 00 FF F3 */	cmpwi r0, -13
/* 8040044C  40 82 00 0C */	bne lbl_80400458
/* 80400450  7F 63 DB 78 */	mr r3, r27
/* 80400454  4B C9 03 8D */	bl CARDUnmount
lbl_80400458:
/* 80400458  7F B9 EB 78 */	mr r25, r29
lbl_8040045C:
/* 8040045C  7F E3 FB 78 */	mr r3, r31
/* 80400460  4B FF A0 6D */	bl mCD_ClearMemMgr_com2
/* 80400464  7F 23 CB 78 */	mr r3, r25
/* 80400468  39 61 00 40 */	addi r11, r1, 0x40
/* 8040046C  4B C9 AA A1 */	bl func_8009AF0C
/* 80400470  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80400474  7C 08 03 A6 */	mtlr r0
/* 80400478  38 21 00 40 */	addi r1, r1, 0x40
/* 8040047C  4E 80 00 20 */	blr 