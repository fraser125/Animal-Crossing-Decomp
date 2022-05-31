lbl_80379950:
/* 80379950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80379954  7C 08 02 A6 */	mflr r0
/* 80379958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037995C  39 61 00 20 */	addi r11, r1, 0x20
/* 80379960  4B D2 15 75 */	bl func_8009AED4
/* 80379964  80 03 00 00 */	lwz r0, 0(r3)
/* 80379968  7C 7E 1B 78 */	mr r30, r3
/* 8037996C  7C BD 2B 78 */	mr r29, r5
/* 80379970  3B E0 00 00 */	li r31, 0
/* 80379974  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80379978  41 82 00 4C */	beq lbl_803799C4
/* 8037997C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379980  3C 80 03 3F */	lis r4, 0x033F /* 0x033F7EC0@ha */
/* 80379984  3C A0 04 00 */	lis r5, 0x0400 /* 0x03FFFFFF@ha */
/* 80379988  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037998C  38 84 7E C0 */	addi r4, r4, 0x7EC0 /* 0x033F7EC0@l */
/* 80379990  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x03FFFFFF@l */
/* 80379994  4B FF F0 4D */	bl mBGMClock_over_time_check
/* 80379998  2C 03 00 00 */	cmpwi r3, 0
/* 8037999C  41 82 00 28 */	beq lbl_803799C4
/* 803799A0  3C 60 80 65 */	lis r3, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 803799A4  7F A4 EB 78 */	mr r4, r29
/* 803799A8  38 63 F5 DC */	addi r3, r3, mbgm_event_data@l /* 0x8064F5DC@l */
/* 803799AC  4B FF FD B9 */	bl mBGMFieldSchedEv_bl_attr_evdata_get
/* 803799B0  2C 03 00 02 */	cmpwi r3, 2
/* 803799B4  40 82 00 10 */	bne lbl_803799C4
/* 803799B8  80 1E 00 00 */	lwz r0, 0(r30)
/* 803799BC  60 00 00 10 */	ori r0, r0, 0x10
/* 803799C0  90 1E 00 00 */	stw r0, 0(r30)
lbl_803799C4:
/* 803799C4  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 803799C8  3C 80 03 3F */	lis r4, 0x033F /* 0x033F7EC0@ha */
/* 803799CC  3C A0 04 00 */	lis r5, 0x0400 /* 0x03FFFFFF@ha */
/* 803799D0  38 C5 FF FF */	addi r6, r5, 0xFFFF /* 0x03FFFFFF@l */
/* 803799D4  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 803799D8  38 84 7E C0 */	addi r4, r4, 0x7EC0 /* 0x033F7EC0@l */
/* 803799DC  3C A0 00 42 */	lis r5, 0x42
/* 803799E0  4B FF F0 55 */	bl mBGMClock_range_time_check
/* 803799E4  2C 03 00 00 */	cmpwi r3, 0
/* 803799E8  41 82 00 34 */	beq lbl_80379A1C
/* 803799EC  80 1E 00 00 */	lwz r0, 0(r30)
/* 803799F0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 803799F4  41 82 00 20 */	beq lbl_80379A14
/* 803799F8  38 60 00 40 */	li r3, 0x40
/* 803799FC  38 80 00 08 */	li r4, 8
/* 80379A00  48 02 41 01 */	bl mEv_check_status
/* 80379A04  2C 03 00 00 */	cmpwi r3, 0
/* 80379A08  41 82 00 20 */	beq lbl_80379A28
/* 80379A0C  3B E0 00 01 */	li r31, 1
/* 80379A10  48 00 00 18 */	b lbl_80379A28
lbl_80379A14:
/* 80379A14  3B E0 00 01 */	li r31, 1
/* 80379A18  48 00 00 10 */	b lbl_80379A28
lbl_80379A1C:
/* 80379A1C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379A20  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80379A24  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379A28:
/* 80379A28  2C 1F 00 00 */	cmpwi r31, 0
/* 80379A2C  41 82 00 14 */	beq lbl_80379A40
/* 80379A30  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379A34  60 00 00 01 */	ori r0, r0, 1
/* 80379A38  90 1E 00 00 */	stw r0, 0(r30)
/* 80379A3C  48 00 00 10 */	b lbl_80379A4C
lbl_80379A40:
/* 80379A40  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379A44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379A48  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379A4C:
/* 80379A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80379A50  4B D2 14 D1 */	bl func_8009AF20
/* 80379A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80379A58  7C 08 03 A6 */	mtlr r0
/* 80379A5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80379A60  4E 80 00 20 */	blr 
