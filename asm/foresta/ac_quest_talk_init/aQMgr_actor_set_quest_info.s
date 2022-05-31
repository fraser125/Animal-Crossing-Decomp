lbl_8048AD40:
/* 8048AD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048AD44  7C 08 02 A6 */	mflr r0
/* 8048AD48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048AD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048AD50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048AD54  3C A4 00 02 */	addis r5, r4, 2
/* 8048AD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048AD5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8048AD60  3B C3 01 C8 */	addi r30, r3, 0x1c8
/* 8048AD64  80 63 01 78 */	lwz r3, 0x178(r3)
/* 8048AD68  88 1E 00 00 */	lbz r0, 0(r30)
/* 8048AD6C  80 63 00 00 */	lwz r3, 0(r3)
/* 8048AD70  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8048AD74  83 E5 61 3C */	lwz r31, 0x613c(r5)
/* 8048AD78  2C 00 00 01 */	cmpwi r0, 1
/* 8048AD7C  80 83 01 7C */	lwz r4, 0x17c(r3)
/* 8048AD80  41 82 00 2C */	beq lbl_8048ADAC
/* 8048AD84  40 80 00 10 */	bge lbl_8048AD94
/* 8048AD88  2C 00 00 00 */	cmpwi r0, 0
/* 8048AD8C  40 80 00 14 */	bge lbl_8048ADA0
/* 8048AD90  48 00 00 30 */	b lbl_8048ADC0
lbl_8048AD94:
/* 8048AD94  2C 00 00 03 */	cmpwi r0, 3
/* 8048AD98  40 80 00 28 */	bge lbl_8048ADC0
/* 8048AD9C  48 00 00 1C */	b lbl_8048ADB8
lbl_8048ADA0:
/* 8048ADA0  7F C3 F3 78 */	mr r3, r30
/* 8048ADA4  4B FF FD 6D */	bl aQMgr_actor_set_delivery
/* 8048ADA8  48 00 00 18 */	b lbl_8048ADC0
lbl_8048ADAC:
/* 8048ADAC  7F C3 F3 78 */	mr r3, r30
/* 8048ADB0  4B FF FD CD */	bl aQMgr_actor_set_errand
/* 8048ADB4  48 00 00 0C */	b lbl_8048ADC0
lbl_8048ADB8:
/* 8048ADB8  7F C3 F3 78 */	mr r3, r30
/* 8048ADBC  4B FF FE E1 */	bl aQMgr_actor_set_contest
lbl_8048ADC0:
/* 8048ADC0  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8048ADC4  2C 04 FF FF */	cmpwi r4, -1
/* 8048ADC8  41 82 00 14 */	beq lbl_8048ADDC
/* 8048ADCC  A0 BE 00 18 */	lhz r5, 0x18(r30)
/* 8048ADD0  7F E3 FB 78 */	mr r3, r31
/* 8048ADD4  38 C0 00 02 */	li r6, 2
/* 8048ADD8  4B F5 60 51 */	bl mPr_SetPossessionItem
lbl_8048ADDC:
/* 8048ADDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ADE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048ADE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048ADE8  7C 08 03 A6 */	mtlr r0
/* 8048ADEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ADF0  4E 80 00 20 */	blr 
