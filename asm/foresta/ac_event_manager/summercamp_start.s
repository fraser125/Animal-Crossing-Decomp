lbl_80421930:
/* 80421930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421934  7C 08 02 A6 */	mflr r0
/* 80421938  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042193C  39 61 00 20 */	addi r11, r1, 0x20
/* 80421940  4B C7 95 91 */	bl func_8009AED0
/* 80421944  7C 9D 23 78 */	mr r29, r4
/* 80421948  7C 7C 1B 78 */	mr r28, r3
/* 8042194C  80 64 00 00 */	lwz r3, 0(r4)
/* 80421950  4B F7 C2 9D */	bl mEv_check_keep
/* 80421954  2C 03 00 00 */	cmpwi r3, 0
/* 80421958  40 82 00 14 */	bne lbl_8042196C
/* 8042195C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80421960  4B F7 C2 25 */	bl mEv_set_keep
/* 80421964  3B C0 00 01 */	li r30, 1
/* 80421968  48 00 00 08 */	b lbl_80421970
lbl_8042196C:
/* 8042196C  3B C0 00 02 */	li r30, 2
lbl_80421970:
/* 80421970  2C 1E 00 00 */	cmpwi r30, 0
/* 80421974  41 82 00 98 */	beq lbl_80421A0C
/* 80421978  38 60 00 18 */	li r3, 0x18
/* 8042197C  38 80 00 00 */	li r4, 0
/* 80421980  4B F7 C4 4D */	bl mEv_get_save_area
/* 80421984  7C 7F 1B 79 */	or. r31, r3, r3
/* 80421988  40 82 00 30 */	bne lbl_804219B8
/* 8042198C  38 60 00 18 */	li r3, 0x18
/* 80421990  38 80 00 00 */	li r4, 0
/* 80421994  4B F7 C2 91 */	bl mEv_reserve_save_area
/* 80421998  7C 7F 1B 79 */	or. r31, r3, r3
/* 8042199C  41 82 00 1C */	beq lbl_804219B8
/* 804219A0  4B FB 11 5D */	bl mNpc_DecideMaskNpc_summercamp
/* 804219A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804219A8  38 00 00 00 */	li r0, 0
/* 804219AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804219B0  3C 63 00 02 */	addis r3, r3, 2
/* 804219B4  98 03 61 46 */	stb r0, 0x6146(r3)
lbl_804219B8:
/* 804219B8  28 1F 00 00 */	cmplwi r31, 0
/* 804219BC  41 82 00 3C */	beq lbl_804219F8
/* 804219C0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804219C4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804219C8  2C 00 00 0E */	cmpwi r0, 0xe
/* 804219CC  40 82 00 2C */	bne lbl_804219F8
/* 804219D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D08F@ha */
/* 804219D4  38 63 D0 8F */	addi r3, r3, 0xD08F /* 0x0000D08F@l */
/* 804219D8  4B FA D4 4D */	bl mNpc_GetSameMaskNpc
/* 804219DC  28 03 00 00 */	cmplwi r3, 0
/* 804219E0  40 82 00 18 */	bne lbl_804219F8
/* 804219E4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D08F@ha */
/* 804219E8  A0 9F 00 00 */	lhz r4, 0(r31)
/* 804219EC  38 63 D0 8F */	addi r3, r3, 0xD08F /* 0x0000D08F@l */
/* 804219F0  38 A0 00 00 */	li r5, 0
/* 804219F4  4B FB 11 C5 */	bl mNpc_RegistMaskNpc_summercamp
lbl_804219F8:
/* 804219F8  7F 83 E3 78 */	mr r3, r28
/* 804219FC  7F A4 EB 78 */	mr r4, r29
/* 80421A00  38 A0 58 49 */	li r5, 0x5849
/* 80421A04  38 C0 00 51 */	li r6, 0x51
/* 80421A08  4B FF A2 D5 */	bl make_FG_somewhere_lot4sale
lbl_80421A0C:
/* 80421A0C  7F C3 F3 78 */	mr r3, r30
/* 80421A10  39 61 00 20 */	addi r11, r1, 0x20
/* 80421A14  4B C7 95 09 */	bl func_8009AF1C
/* 80421A18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421A1C  7C 08 03 A6 */	mtlr r0
/* 80421A20  38 21 00 20 */	addi r1, r1, 0x20
/* 80421A24  4E 80 00 20 */	blr 
