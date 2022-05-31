lbl_80490A30:
/* 80490A30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80490A34  7C 08 02 A6 */	mflr r0
/* 80490A38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80490A3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80490A40  4B C0 A4 7D */	bl func_8009AEBC
/* 80490A44  7C 7B 1B 78 */	mr r27, r3
/* 80490A48  7C 9C 23 78 */	mr r28, r4
/* 80490A4C  7C BD 2B 78 */	mr r29, r5
/* 80490A50  7C DE 33 78 */	mr r30, r6
/* 80490A54  3B E0 00 00 */	li r31, 0
/* 80490A58  3B 00 00 00 */	li r24, 0
/* 80490A5C  3A E0 00 00 */	li r23, 0
/* 80490A60  3B 40 00 00 */	li r26, 0
/* 80490A64  48 00 00 50 */	b lbl_80490AB4
lbl_80490A68:
/* 80490A68  7F 3B D2 14 */	add r25, r27, r26
/* 80490A6C  7F 23 CB 78 */	mr r3, r25
/* 80490A70  4B F3 AE 01 */	bl mNpc_CheckFreeAnimalMemory
/* 80490A74  2C 03 00 00 */	cmpwi r3, 0
/* 80490A78  40 82 00 34 */	bne lbl_80490AAC
/* 80490A7C  7F A3 EB 78 */	mr r3, r29
/* 80490A80  7F 24 CB 78 */	mr r4, r25
/* 80490A84  4B F4 F6 C1 */	bl mPr_CheckCmpPersonalID
/* 80490A88  2C 03 00 01 */	cmpwi r3, 1
/* 80490A8C  41 82 00 20 */	beq lbl_80490AAC
/* 80490A90  2C 1E 00 00 */	cmpwi r30, 0
/* 80490A94  41 82 00 14 */	beq lbl_80490AA8
/* 80490A98  88 19 00 31 */	lbz r0, 0x31(r25)
/* 80490A9C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80490AA0  28 00 00 01 */	cmplwi r0, 1
/* 80490AA4  40 82 00 08 */	bne lbl_80490AAC
lbl_80490AA8:
/* 80490AA8  3B 18 00 01 */	addi r24, r24, 1
lbl_80490AAC:
/* 80490AAC  3A F7 00 01 */	addi r23, r23, 1
/* 80490AB0  3B 5A 01 38 */	addi r26, r26, 0x138
lbl_80490AB4:
/* 80490AB4  7C 17 E0 00 */	cmpw r23, r28
/* 80490AB8  41 80 FF B0 */	blt lbl_80490A68
/* 80490ABC  2C 18 00 00 */	cmpwi r24, 0
/* 80490AC0  40 81 00 A8 */	ble lbl_80490B68
/* 80490AC4  4B BC C2 31 */	bl fqrand
/* 80490AC8  6F 03 80 00 */	xoris r3, r24, 0x8000
/* 80490ACC  3C 00 43 30 */	lis r0, 0x4330
/* 80490AD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80490AD4  3C 80 80 64 */	lis r4, lit_504@ha /* 0x80644C2C@ha */
/* 80490AD8  C8 44 4C 2C */	lfd f2, lit_504@l(r4)  /* 0x80644C2C@l */
/* 80490ADC  3B 00 00 00 */	li r24, 0
/* 80490AE0  90 01 00 08 */	stw r0, 8(r1)
/* 80490AE4  3B 40 00 00 */	li r26, 0
/* 80490AE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80490AEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80490AF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490AF4  FC 00 00 1E */	fctiwz f0, f0
/* 80490AF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80490AFC  82 E1 00 14 */	lwz r23, 0x14(r1)
/* 80490B00  48 00 00 60 */	b lbl_80490B60
lbl_80490B04:
/* 80490B04  7F 3B D2 14 */	add r25, r27, r26
/* 80490B08  7F 23 CB 78 */	mr r3, r25
/* 80490B0C  4B F3 AD 65 */	bl mNpc_CheckFreeAnimalMemory
/* 80490B10  2C 03 00 00 */	cmpwi r3, 0
/* 80490B14  40 82 00 44 */	bne lbl_80490B58
/* 80490B18  7F A3 EB 78 */	mr r3, r29
/* 80490B1C  7F 24 CB 78 */	mr r4, r25
/* 80490B20  4B F4 F6 25 */	bl mPr_CheckCmpPersonalID
/* 80490B24  2C 03 00 00 */	cmpwi r3, 0
/* 80490B28  40 82 00 30 */	bne lbl_80490B58
/* 80490B2C  2C 1E 00 00 */	cmpwi r30, 0
/* 80490B30  41 82 00 14 */	beq lbl_80490B44
/* 80490B34  88 19 00 31 */	lbz r0, 0x31(r25)
/* 80490B38  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80490B3C  28 00 00 01 */	cmplwi r0, 1
/* 80490B40  40 82 00 18 */	bne lbl_80490B58
lbl_80490B44:
/* 80490B44  2C 17 00 00 */	cmpwi r23, 0
/* 80490B48  40 82 00 0C */	bne lbl_80490B54
/* 80490B4C  7F 3F CB 78 */	mr r31, r25
/* 80490B50  48 00 00 18 */	b lbl_80490B68
lbl_80490B54:
/* 80490B54  3A F7 FF FF */	addi r23, r23, -1
lbl_80490B58:
/* 80490B58  3B 18 00 01 */	addi r24, r24, 1
/* 80490B5C  3B 5A 01 38 */	addi r26, r26, 0x138
lbl_80490B60:
/* 80490B60  7C 18 E0 00 */	cmpw r24, r28
/* 80490B64  41 80 FF A0 */	blt lbl_80490B04
lbl_80490B68:
/* 80490B68  7F E3 FB 78 */	mr r3, r31
/* 80490B6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80490B70  4B C0 A3 99 */	bl func_8009AF08
/* 80490B74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80490B78  7C 08 03 A6 */	mtlr r0
/* 80490B7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80490B80  4E 80 00 20 */	blr 
