lbl_803E9674:
/* 803E9674  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 803E9678  7C 08 02 A6 */	mflr r0
/* 803E967C  90 01 01 64 */	stw r0, 0x164(r1)
/* 803E9680  39 61 01 60 */	addi r11, r1, 0x160
/* 803E9684  4B CB 18 39 */	bl func_8009AEBC
/* 803E9688  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E968C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9690  3F 43 00 02 */	addis r26, r3, 2
/* 803E9694  88 1A 04 66 */	lbz r0, 0x466(r26)
/* 803E9698  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 803E969C  41 82 01 24 */	beq lbl_803E97C0
/* 803E96A0  3C 60 20 00 */	lis r3, 0x2000
/* 803E96A4  4B FB 13 75 */	bl mEv_CheckEvent
/* 803E96A8  2C 03 00 00 */	cmpwi r3, 0
/* 803E96AC  40 82 01 14 */	bne lbl_803E97C0
/* 803E96B0  48 00 03 31 */	bl mSP_GetRealShopLevel
/* 803E96B4  3C A0 80 66 */	lis r5, chirashi_idx_appoday@ha /* 0x8065D7D0@ha */
/* 803E96B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E96BC  54 7C 10 3A */	slwi r28, r3, 2
/* 803E96C0  3B 20 00 00 */	li r25, 0
/* 803E96C4  3B A5 D7 D0 */	addi r29, r5, chirashi_idx_appoday@l /* 0x8065D7D0@l */
/* 803E96C8  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 803E96CC  3B 00 00 00 */	li r24, 0
lbl_803E96D0:
/* 803E96D0  7F 23 CB 78 */	mr r3, r25
/* 803E96D4  4B FC 9F 05 */	bl mHS_get_pl_no
/* 803E96D8  7F 7E C2 14 */	add r27, r30, r24
/* 803E96DC  54 77 07 BE */	clrlwi r23, r3, 0x1e
/* 803E96E0  3C 7B 00 01 */	addis r3, r27, 1
/* 803E96E4  38 80 00 0A */	li r4, 0xa
/* 803E96E8  38 63 B7 18 */	addi r3, r3, -18664
/* 803E96EC  4B FD 31 B9 */	bl mMl_chk_mail_free_space
/* 803E96F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E96F4  41 80 00 AC */	blt lbl_803E97A0
/* 803E96F8  3C 7B 00 01 */	addis r3, r27, 1
/* 803E96FC  A0 03 9C FA */	lhz r0, -0x6306(r3)
/* 803E9700  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E9704  41 82 00 9C */	beq lbl_803E97A0
/* 803E9708  7E E3 BB 78 */	mr r3, r23
/* 803E970C  4B FB 50 AD */	bl mEv_ArbeitPlayer
/* 803E9710  2C 03 00 00 */	cmpwi r3, 0
/* 803E9714  40 82 00 8C */	bne lbl_803E97A0
/* 803E9718  38 61 00 0C */	addi r3, r1, 0xc
/* 803E971C  4B FD 2F E5 */	bl mMl_clear_mail
/* 803E9720  7C FD E0 2E */	lwzx r7, r29, r28
/* 803E9724  38 61 00 3E */	addi r3, r1, 0x3e
/* 803E9728  38 81 00 08 */	addi r4, r1, 8
/* 803E972C  38 A1 01 16 */	addi r5, r1, 0x116
/* 803E9730  38 C1 00 56 */	addi r6, r1, 0x56
/* 803E9734  4B FC 90 01 */	bl mHandbill_Load_HandbillFromRom
/* 803E9738  80 A1 00 08 */	lwz r5, 8(r1)
/* 803E973C  38 60 00 00 */	li r3, 0
/* 803E9740  38 80 00 02 */	li r4, 2
/* 803E9744  38 00 00 37 */	li r0, 0x37
/* 803E9748  98 61 00 3A */	stb r3, 0x3a(r1)
/* 803E974C  7F 23 CB 78 */	mr r3, r25
/* 803E9750  98 A1 00 3B */	stb r5, 0x3b(r1)
/* 803E9754  98 81 00 3C */	stb r4, 0x3c(r1)
/* 803E9758  98 01 00 3D */	stb r0, 0x3d(r1)
/* 803E975C  4B FC 9E 7D */	bl mHS_get_pl_no
/* 803E9760  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803E9764  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9768  1C A0 24 40 */	mulli r5, r0, 0x2440
/* 803E976C  38 61 00 0C */	addi r3, r1, 0xc
/* 803E9770  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E9774  7C 80 2A 14 */	add r4, r0, r5
/* 803E9778  38 84 00 20 */	addi r4, r4, 0x20
/* 803E977C  4B FF 69 A5 */	bl mPr_CopyPersonalID
/* 803E9780  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803E9784  38 00 00 00 */	li r0, 0
/* 803E9788  98 01 00 20 */	stb r0, 0x20(r1)
/* 803E978C  38 81 00 0C */	addi r4, r1, 0xc
/* 803E9790  3C 63 00 01 */	addis r3, r3, 1
/* 803E9794  38 63 B7 18 */	addi r3, r3, -18664
/* 803E9798  7C 7B 1A 14 */	add r3, r27, r3
/* 803E979C  4B FD 31 D9 */	bl mMl_copy_mail
lbl_803E97A0:
/* 803E97A0  3B 39 00 01 */	addi r25, r25, 1
/* 803E97A4  3B 18 26 B0 */	addi r24, r24, 0x26b0
/* 803E97A8  2C 19 00 04 */	cmpwi r25, 4
/* 803E97AC  41 80 FF 24 */	blt lbl_803E96D0
/* 803E97B0  88 1A 04 66 */	lbz r0, 0x466(r26)
/* 803E97B4  38 60 00 00 */	li r3, 0
/* 803E97B8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 803E97BC  98 1A 04 66 */	stb r0, 0x466(r26)
lbl_803E97C0:
/* 803E97C0  39 61 01 60 */	addi r11, r1, 0x160
/* 803E97C4  4B CB 17 45 */	bl func_8009AF08
/* 803E97C8  80 01 01 64 */	lwz r0, 0x164(r1)
/* 803E97CC  7C 08 03 A6 */	mtlr r0
/* 803E97D0  38 21 01 60 */	addi r1, r1, 0x160
/* 803E97D4  4E 80 00 20 */	blr 
