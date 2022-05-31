lbl_8039FD3C:
/* 8039FD3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039FD40  7C 08 02 A6 */	mflr r0
/* 8039FD44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039FD48  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FD4C  4B CF B1 7D */	bl func_8009AEC8
/* 8039FD50  3C E0 80 65 */	lis r7, l_event_set_table@ha /* 0x80652910@ha */
/* 8039FD54  54 9C 10 3A */	slwi r28, r4, 2
/* 8039FD58  3B A7 29 10 */	addi r29, r7, l_event_set_table@l /* 0x80652910@l */
/* 8039FD5C  7C 7E 1B 78 */	mr r30, r3
/* 8039FD60  7C 7D E0 2E */	lwzx r3, r29, r28
/* 8039FD64  7C DA 33 79 */	or. r26, r6, r6
/* 8039FD68  7C BF 2B 78 */	mr r31, r5
/* 8039FD6C  88 03 00 01 */	lbz r0, 1(r3)
/* 8039FD70  41 80 00 DC */	blt lbl_8039FE4C
/* 8039FD74  7C 1A 00 00 */	cmpw r26, r0
/* 8039FD78  40 80 00 D4 */	bge lbl_8039FE4C
/* 8039FD7C  2C 04 00 00 */	cmpwi r4, 0
/* 8039FD80  41 80 00 CC */	blt lbl_8039FE4C
/* 8039FD84  2C 04 00 11 */	cmpwi r4, 0x11
/* 8039FD88  40 80 00 C4 */	bge lbl_8039FE4C
/* 8039FD8C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8039FD90  4B FF FF 65 */	bl mEvMN_CheckEventNpcList
/* 8039FD94  28 03 00 00 */	cmplwi r3, 0
/* 8039FD98  40 82 00 AC */	bne lbl_8039FE44
/* 8039FD9C  7F 9D E0 2E */	lwzx r28, r29, r28
/* 8039FDA0  28 1C 00 00 */	cmplwi r28, 0
/* 8039FDA4  41 82 00 A8 */	beq lbl_8039FE4C
/* 8039FDA8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8039FDAC  4B FF F7 71 */	bl mEvMN_GetDataBaseIdx
/* 8039FDB0  80 DC 00 08 */	lwz r6, 8(r28)
/* 8039FDB4  54 64 10 3A */	slwi r4, r3, 2
/* 8039FDB8  80 BC 00 04 */	lwz r5, 4(r28)
/* 8039FDBC  57 43 08 3C */	slwi r3, r26, 1
/* 8039FDC0  A0 06 00 00 */	lhz r0, 0(r6)
/* 8039FDC4  7C 85 20 2E */	lwzx r4, r5, r4
/* 8039FDC8  7C 00 D6 30 */	sraw r0, r0, r26
/* 8039FDCC  A3 7E 00 00 */	lhz r27, 0(r30)
/* 8039FDD0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039FDD4  80 84 00 00 */	lwz r4, 0(r4)
/* 8039FDD8  2C 00 00 01 */	cmpwi r0, 1
/* 8039FDDC  7F 84 1A 2E */	lhzx r28, r4, r3
/* 8039FDE0  40 82 00 40 */	bne lbl_8039FE20
/* 8039FDE4  A3 46 00 02 */	lhz r26, 2(r6)
/* 8039FDE8  7F 7D DB 78 */	mr r29, r27
/* 8039FDEC  28 1A 00 00 */	cmplwi r26, 0
/* 8039FDF0  41 82 00 38 */	beq lbl_8039FE28
/* 8039FDF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039FDF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039FDFC  1C 1F 09 88 */	mulli r0, r31, 0x988
/* 8039FE00  3C 63 00 01 */	addis r3, r3, 1
/* 8039FE04  7C 63 02 14 */	add r3, r3, r0
/* 8039FE08  88 63 74 45 */	lbz r3, 0x7445(r3)
/* 8039FE0C  48 03 21 5D */	bl mNpc_GetLooks2Sex
/* 8039FE10  2C 03 00 00 */	cmpwi r3, 0
/* 8039FE14  40 82 00 14 */	bne lbl_8039FE28
/* 8039FE18  3B 5A 00 01 */	addi r26, r26, 1
/* 8039FE1C  48 00 00 0C */	b lbl_8039FE28
lbl_8039FE20:
/* 8039FE20  7F 9D E3 78 */	mr r29, r28
/* 8039FE24  3B 40 00 00 */	li r26, 0
lbl_8039FE28:
/* 8039FE28  7F 83 E3 78 */	mr r3, r28
/* 8039FE2C  7F A4 EB 78 */	mr r4, r29
/* 8039FE30  7F 65 DB 78 */	mr r5, r27
/* 8039FE34  7F 46 D3 78 */	mr r6, r26
/* 8039FE38  48 02 EC 6D */	bl mNpc_RegistEventNpc
/* 8039FE3C  B3 9E 00 00 */	sth r28, 0(r30)
/* 8039FE40  48 00 00 0C */	b lbl_8039FE4C
lbl_8039FE44:
/* 8039FE44  A0 03 00 00 */	lhz r0, 0(r3)
/* 8039FE48  B0 1E 00 00 */	sth r0, 0(r30)
lbl_8039FE4C:
/* 8039FE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FE50  4B CF B0 C5 */	bl func_8009AF14
/* 8039FE54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039FE58  7C 08 03 A6 */	mtlr r0
/* 8039FE5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039FE60  4E 80 00 20 */	blr 
