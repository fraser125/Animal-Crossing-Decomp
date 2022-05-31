lbl_8037A08C:
/* 8037A08C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037A090  7C 08 02 A6 */	mflr r0
/* 8037A094  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037A098  39 61 00 30 */	addi r11, r1, 0x30
/* 8037A09C  4B D2 0E 25 */	bl func_8009AEC0
/* 8037A0A0  7C 7A 1B 78 */	mr r26, r3
/* 8037A0A4  7C 98 23 78 */	mr r24, r4
/* 8037A0A8  38 60 00 01 */	li r3, 1
/* 8037A0AC  48 02 3A B9 */	bl mEv_check_status_edge
/* 8037A0B0  3B A0 00 00 */	li r29, 0
/* 8037A0B4  7C 79 1B 78 */	mr r25, r3
/* 8037A0B8  48 02 AB D9 */	bl mFI_CheckFieldData
/* 8037A0BC  2C 03 00 00 */	cmpwi r3, 0
/* 8037A0C0  41 82 00 14 */	beq lbl_8037A0D4
/* 8037A0C4  48 02 AC 09 */	bl mFI_GetFieldId
/* 8037A0C8  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8037A0CC  40 82 00 08 */	bne lbl_8037A0D4
/* 8037A0D0  3B A0 00 01 */	li r29, 1
lbl_8037A0D4:
/* 8037A0D4  3C 80 80 65 */	lis r4, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 8037A0D8  3C 60 80 65 */	lis r3, ev_chk_987@ha /* 0x8064F69C@ha */
/* 8037A0DC  38 04 F5 DC */	addi r0, r4, mbgm_event_data@l /* 0x8064F5DC@l */
/* 8037A0E0  7F 5B D3 78 */	mr r27, r26
/* 8037A0E4  7C 1A 03 78 */	mr r26, r0
/* 8037A0E8  7F 3C CB 78 */	mr r28, r25
/* 8037A0EC  3B C3 F6 9C */	addi r30, r3, ev_chk_987@l /* 0x8064F69C@l */
/* 8037A0F0  3B 20 00 00 */	li r25, 0
/* 8037A0F4  3B E0 00 00 */	li r31, 0
lbl_8037A0F8:
/* 8037A0F8  7F 63 DB 78 */	mr r3, r27
/* 8037A0FC  4B FF F7 9D */	bl mBGMFieldSchedEv_Info_old_copy
/* 8037A100  80 1B 00 00 */	lwz r0, 0(r27)
/* 8037A104  2C 1D 00 00 */	cmpwi r29, 0
/* 8037A108  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8037A10C  90 1B 00 00 */	stw r0, 0(r27)
/* 8037A110  41 82 00 10 */	beq lbl_8037A120
/* 8037A114  80 1B 00 00 */	lwz r0, 0(r27)
/* 8037A118  60 00 00 04 */	ori r0, r0, 4
/* 8037A11C  90 1B 00 00 */	stw r0, 0(r27)
lbl_8037A120:
/* 8037A120  7D 9E F8 2E */	lwzx r12, r30, r31
/* 8037A124  7F 63 DB 78 */	mr r3, r27
/* 8037A128  7F 44 D3 78 */	mr r4, r26
/* 8037A12C  7F 05 C3 78 */	mr r5, r24
/* 8037A130  7F 86 E3 78 */	mr r6, r28
/* 8037A134  7D 89 03 A6 */	mtctr r12
/* 8037A138  4E 80 04 21 */	bctrl 
/* 8037A13C  7F 63 DB 78 */	mr r3, r27
/* 8037A140  7F 04 C3 78 */	mr r4, r24
/* 8037A144  7F 45 D3 78 */	mr r5, r26
/* 8037A148  4B FF FE F1 */	bl mBGMFieldSchedEv_Info_attr_now_set
/* 8037A14C  3B 39 00 01 */	addi r25, r25, 1
/* 8037A150  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8037A154  2C 19 00 18 */	cmpwi r25, 0x18
/* 8037A158  3B 5A 00 08 */	addi r26, r26, 8
/* 8037A15C  3B FF 00 04 */	addi r31, r31, 4
/* 8037A160  41 80 FF 98 */	blt lbl_8037A0F8
/* 8037A164  39 61 00 30 */	addi r11, r1, 0x30
/* 8037A168  4B D2 0D A5 */	bl func_8009AF0C
/* 8037A16C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037A170  7C 08 03 A6 */	mtlr r0
/* 8037A174  38 21 00 30 */	addi r1, r1, 0x30
/* 8037A178  4E 80 00 20 */	blr 
