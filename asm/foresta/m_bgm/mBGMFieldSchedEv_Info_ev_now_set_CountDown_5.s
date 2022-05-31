lbl_80379C64:
/* 80379C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80379C68  7C 08 02 A6 */	mflr r0
/* 80379C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80379C70  39 61 00 20 */	addi r11, r1, 0x20
/* 80379C74  4B D2 12 61 */	bl func_8009AED4
/* 80379C78  3C C0 81 13 */	lis r6, data_811351C0@ha /* 0x811351C0@ha */
/* 80379C7C  3C 80 04 00 */	lis r4, 0x0400 /* 0x03FFFFFF@ha */
/* 80379C80  38 06 51 C0 */	addi r0, r6, data_811351C0@l /* 0x811351C0@l */
/* 80379C84  3C C0 00 42 */	lis r6, 0x0042 /* 0x00421000@ha */
/* 80379C88  7C 7E 1B 78 */	mr r30, r3
/* 80379C8C  7C BD 2B 78 */	mr r29, r5
/* 80379C90  7C 03 03 78 */	mr r3, r0
/* 80379C94  38 A6 10 00 */	addi r5, r6, 0x1000 /* 0x00421000@l */
/* 80379C98  38 C4 FF FF */	addi r6, r4, 0xFFFF /* 0x03FFFFFF@l */
/* 80379C9C  3B E0 00 00 */	li r31, 0
/* 80379CA0  3C 80 00 42 */	lis r4, 0x42
/* 80379CA4  4B FF ED 91 */	bl mBGMClock_range_time_check
/* 80379CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80379CAC  41 82 00 B4 */	beq lbl_80379D60
/* 80379CB0  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379CB4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80379CB8  41 82 00 4C */	beq lbl_80379D04
/* 80379CBC  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379CC0  3C A0 04 00 */	lis r5, 0x0400 /* 0x03FFFFFF@ha */
/* 80379CC4  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379CC8  3C 80 00 42 */	lis r4, 0x42
/* 80379CCC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x03FFFFFF@l */
/* 80379CD0  4B FF ED 11 */	bl mBGMClock_over_time_check
/* 80379CD4  2C 03 00 00 */	cmpwi r3, 0
/* 80379CD8  41 82 00 2C */	beq lbl_80379D04
/* 80379CDC  3C 60 80 65 */	lis r3, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 80379CE0  7F A4 EB 78 */	mr r4, r29
/* 80379CE4  38 63 F5 DC */	addi r3, r3, mbgm_event_data@l /* 0x8064F5DC@l */
/* 80379CE8  38 63 00 80 */	addi r3, r3, 0x80
/* 80379CEC  4B FF FA 79 */	bl mBGMFieldSchedEv_bl_attr_evdata_get
/* 80379CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80379CF4  41 82 00 10 */	beq lbl_80379D04
/* 80379CF8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379CFC  60 00 00 20 */	ori r0, r0, 0x20
/* 80379D00  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379D04:
/* 80379D04  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379D08  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80379D0C  41 82 00 2C */	beq lbl_80379D38
/* 80379D10  3C 60 80 65 */	lis r3, mbgm_event_data@ha /* 0x8064F5DC@ha */
/* 80379D14  7F A4 EB 78 */	mr r4, r29
/* 80379D18  38 63 F5 DC */	addi r3, r3, mbgm_event_data@l /* 0x8064F5DC@l */
/* 80379D1C  38 63 00 80 */	addi r3, r3, 0x80
/* 80379D20  4B FF FA 45 */	bl mBGMFieldSchedEv_bl_attr_evdata_get
/* 80379D24  2C 03 00 00 */	cmpwi r3, 0
/* 80379D28  40 82 00 10 */	bne lbl_80379D38
/* 80379D2C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379D30  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80379D34  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379D38:
/* 80379D38  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379D3C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80379D40  41 82 00 2C */	beq lbl_80379D6C
/* 80379D44  38 60 00 40 */	li r3, 0x40
/* 80379D48  38 80 00 01 */	li r4, 1
/* 80379D4C  48 02 3D B5 */	bl mEv_check_status
/* 80379D50  2C 03 00 00 */	cmpwi r3, 0
/* 80379D54  41 82 00 18 */	beq lbl_80379D6C
/* 80379D58  3B E0 00 01 */	li r31, 1
/* 80379D5C  48 00 00 10 */	b lbl_80379D6C
lbl_80379D60:
/* 80379D60  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379D64  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80379D68  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379D6C:
/* 80379D6C  2C 1F 00 00 */	cmpwi r31, 0
/* 80379D70  41 82 00 14 */	beq lbl_80379D84
/* 80379D74  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379D78  60 00 00 01 */	ori r0, r0, 1
/* 80379D7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80379D80  48 00 00 10 */	b lbl_80379D90
lbl_80379D84:
/* 80379D84  80 1E 00 00 */	lwz r0, 0(r30)
/* 80379D88  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379D8C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80379D90:
/* 80379D90  39 61 00 20 */	addi r11, r1, 0x20
/* 80379D94  4B D2 11 8D */	bl func_8009AF20
/* 80379D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80379D9C  7C 08 03 A6 */	mtlr r0
/* 80379DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80379DA4  4E 80 00 20 */	blr 
