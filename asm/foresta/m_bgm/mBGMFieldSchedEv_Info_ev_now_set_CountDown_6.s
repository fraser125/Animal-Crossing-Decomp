lbl_80379DA8:
/* 80379DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80379DAC  7C 08 02 A6 */	mflr r0
/* 80379DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80379DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80379DB8  4B D2 11 1D */	bl func_8009AED4
/* 80379DBC  3C C0 81 13 */	lis r6, data_811351C0@ha /* 0x811351C0@ha */
/* 80379DC0  3C 80 04 00 */	lis r4, 0x0400 /* 0x03FFFFFF@ha */
/* 80379DC4  38 06 51 C0 */	addi r0, r6, data_811351C0@l /* 0x811351C0@l */
/* 80379DC8  3C C0 00 42 */	lis r6, 0x0042 /* 0x00421000@ha */
/* 80379DCC  7C 7E 1B 78 */	mr r30, r3
/* 80379DD0  7C BD 2B 78 */	mr r29, r5
/* 80379DD4  7C 03 03 78 */	mr r3, r0
/* 80379DD8  38 A6 10 00 */	addi r5, r6, 0x1000 /* 0x00421000@l */
/* 80379DDC  38 C4 FF FF */	addi r6, r4, 0xFFFF /* 0x03FFFFFF@l */
/* 80379DE0  3B E0 00 00 */	li r31, 0
/* 80379DE4  3C 80 00 42 */	lis r4, 0x42
/* 80379DE8  4B FF EC 4D */	bl mBGMClock_range_time_check
/* 80379DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80379DF0  41 82 00 B4 */	beq lbl_80379EA4
/* 80379DF4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379DF8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80379DFC  41 82 00 4C */	beq lbl_80379E48
/* 80379E00  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379E04  3C A0 04 00 */	lis r5, 0x0400 /* 0x03FFFFFF@ha */
/* 80379E08  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379E0C  3C 80 00 42 */	lis r4, 0x42
/* 80379E10  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x03FFFFFF@l */
/* 80379E14  4B FF EB CD */	bl mBGMClock_over_time_check
/* 80379E18  2C 03 00 00 */	cmpwi r3, 0
/* 80379E1C  41 82 00 2C */	beq lbl_80379E48
/* 80379E20  3C 60 80 65 */	lis r3, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 80379E24  7F A4 EB 78 */	mr r4, r29
/* 80379E28  38 63 F5 DC */	addi r3, r3, mbgm_event_data@l /* 0x8064F5DC@l */
/* 80379E2C  38 63 00 88 */	addi r3, r3, 0x88
/* 80379E30  4B FF F9 35 */	bl mBGMFieldSchedEv_bl_attr_evdata_get
/* 80379E34  2C 03 00 00 */	cmpwi r3, 0
/* 80379E38  41 82 00 10 */	beq lbl_80379E48
/* 80379E3C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379E40  60 00 00 20 */	ori r0, r0, 0x20
/* 80379E44  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379E48:
/* 80379E48  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379E4C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80379E50  41 82 00 2C */	beq lbl_80379E7C
/* 80379E54  3C 60 80 65 */	lis r3, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 80379E58  7F A4 EB 78 */	mr r4, r29
/* 80379E5C  38 63 F5 DC */	addi r3, r3, mbgm_event_data@l /* 0x8064F5DC@l */
/* 80379E60  38 63 00 88 */	addi r3, r3, 0x88
/* 80379E64  4B FF F9 01 */	bl mBGMFieldSchedEv_bl_attr_evdata_get
/* 80379E68  2C 03 00 00 */	cmpwi r3, 0
/* 80379E6C  40 82 00 10 */	bne lbl_80379E7C
/* 80379E70  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379E74  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80379E78  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379E7C:
/* 80379E7C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379E80  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80379E84  40 82 00 2C */	bne lbl_80379EB0
/* 80379E88  38 60 00 40 */	li r3, 0x40
/* 80379E8C  38 80 00 01 */	li r4, 1
/* 80379E90  48 02 3C 71 */	bl mEv_check_status
/* 80379E94  2C 03 00 00 */	cmpwi r3, 0
/* 80379E98  41 82 00 18 */	beq lbl_80379EB0
/* 80379E9C  3B E0 00 01 */	li r31, 1
/* 80379EA0  48 00 00 10 */	b lbl_80379EB0
lbl_80379EA4:
/* 80379EA4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379EA8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80379EAC  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379EB0:
/* 80379EB0  2C 1F 00 00 */	cmpwi r31, 0
/* 80379EB4  41 82 00 14 */	beq lbl_80379EC8
/* 80379EB8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379EBC  60 00 00 01 */	ori r0, r0, 1
/* 80379EC0  90 1E 00 00 */	stw r0, 0(r30)
/* 80379EC4  48 00 00 10 */	b lbl_80379ED4
lbl_80379EC8:
/* 80379EC8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379ECC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379ED0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379ED4:
/* 80379ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80379ED8  4B D2 10 49 */	bl func_8009AF20
/* 80379EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80379EE0  7C 08 03 A6 */	mtlr r0
/* 80379EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80379EE8  4E 80 00 20 */	blr 
