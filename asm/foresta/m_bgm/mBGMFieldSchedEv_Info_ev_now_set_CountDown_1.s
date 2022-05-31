lbl_80379A64:
/* 80379A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379A68  7C 08 02 A6 */	mflr r0
/* 80379A6C  38 80 00 01 */	li r4, 1
/* 80379A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379A78  7C 7F 1B 78 */	mr r31, r3
/* 80379A7C  38 60 00 40 */	li r3, 0x40
/* 80379A80  48 02 40 81 */	bl mEv_check_status
/* 80379A84  2C 03 00 00 */	cmpwi r3, 0
/* 80379A88  41 82 00 3C */	beq lbl_80379AC4
/* 80379A8C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80379A90  3C A0 03 3F */	lis r5, 0x033F /* 0x033F7000@ha */
/* 80379A94  3C C0 04 00 */	lis r6, 0x0400 /* 0x03FFFFFF@ha */
/* 80379A98  38 85 70 00 */	addi r4, r5, 0x7000 /* 0x033F7000@l */
/* 80379A9C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379AA0  38 A5 77 80 */	addi r5, r5, 0x7780
/* 80379AA4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x03FFFFFF@l */
/* 80379AA8  4B FF EF 8D */	bl mBGMClock_range_time_check
/* 80379AAC  2C 03 00 00 */	cmpwi r3, 0
/* 80379AB0  41 82 00 14 */	beq lbl_80379AC4
/* 80379AB4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379AB8  60 00 00 01 */	ori r0, r0, 1
/* 80379ABC  90 1F 00 00 */	stw r0, 0(r31)
/* 80379AC0  48 00 00 10 */	b lbl_80379AD0
lbl_80379AC4:
/* 80379AC4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80379AC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80379ACC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80379AD0:
/* 80379AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379AD8  7C 08 03 A6 */	mtlr r0
/* 80379ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80379AE0  4E 80 00 20 */	blr 
