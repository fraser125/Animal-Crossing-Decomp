lbl_80512AFC:
/* 80512AFC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80512B00  7C 08 02 A6 */	mflr r0
/* 80512B04  90 01 00 74 */	stw r0, 0x74(r1)
/* 80512B08  39 61 00 70 */	addi r11, r1, 0x70
/* 80512B0C  4B B8 83 95 */	bl func_8009AEA0
/* 80512B10  7C 78 1B 78 */	mr r24, r3
/* 80512B14  3C 60 80 6A */	lis r3, check_fg@ha /* 0x8069FB6C@ha */
/* 80512B18  7F 19 C3 78 */	mr r25, r24
/* 80512B1C  3B E1 00 08 */	addi r31, r1, 8
/* 80512B20  3B C3 FB 6C */	addi r30, r3, check_fg@l /* 0x8069FB6C@l */
/* 80512B24  3A E0 00 00 */	li r23, 0
/* 80512B28  3A C0 00 00 */	li r22, 0
lbl_80512B2C:
/* 80512B2C  38 61 00 08 */	addi r3, r1, 8
/* 80512B30  38 80 00 14 */	li r4, 0x14
/* 80512B34  4B B4 A5 35 */	bl bzero
/* 80512B38  7F 38 CB 78 */	mr r24, r25
/* 80512B3C  3A 40 00 00 */	li r18, 0
/* 80512B40  3B 60 00 00 */	li r27, 0
/* 80512B44  3A 80 00 00 */	li r20, 0
lbl_80512B48:
/* 80512B48  7E 38 B2 14 */	add r17, r24, r22
/* 80512B4C  3A 00 00 00 */	li r16, 0
lbl_80512B50:
/* 80512B50  3A 60 00 00 */	li r19, 0
/* 80512B54  3A A0 00 00 */	li r21, 0
lbl_80512B58:
/* 80512B58  7D 9E A8 2E */	lwzx r12, r30, r21
/* 80512B5C  A0 71 00 00 */	lhz r3, 0(r17)
/* 80512B60  7D 89 03 A6 */	mtctr r12
/* 80512B64  4E 80 04 21 */	bctrl 
/* 80512B68  2C 03 00 01 */	cmpwi r3, 1
/* 80512B6C  40 82 00 18 */	bne lbl_80512B84
/* 80512B70  7C 7F A8 2E */	lwzx r3, r31, r21
/* 80512B74  3A 52 00 01 */	addi r18, r18, 1
/* 80512B78  38 03 00 01 */	addi r0, r3, 1
/* 80512B7C  7C 1F A9 2E */	stwx r0, r31, r21
/* 80512B80  48 00 00 14 */	b lbl_80512B94
lbl_80512B84:
/* 80512B84  3A 73 00 01 */	addi r19, r19, 1
/* 80512B88  3A B5 00 04 */	addi r21, r21, 4
/* 80512B8C  2C 13 00 05 */	cmpwi r19, 5
/* 80512B90  41 80 FF C8 */	blt lbl_80512B58
lbl_80512B94:
/* 80512B94  3A 10 00 01 */	addi r16, r16, 1
/* 80512B98  3A 31 00 02 */	addi r17, r17, 2
/* 80512B9C  2C 10 00 10 */	cmpwi r16, 0x10
/* 80512BA0  41 80 FF B0 */	blt lbl_80512B50
/* 80512BA4  3A 94 00 01 */	addi r20, r20, 1
/* 80512BA8  3B 18 02 00 */	addi r24, r24, 0x200
/* 80512BAC  2C 14 00 02 */	cmpwi r20, 2
/* 80512BB0  41 80 FF 98 */	blt lbl_80512B48
/* 80512BB4  2C 12 00 03 */	cmpwi r18, 3
/* 80512BB8  40 81 01 AC */	ble lbl_80512D64
/* 80512BBC  3C 60 80 6A */	lis r3, check_fg@ha /* 0x8069FB6C@ha */
/* 80512BC0  3B 12 FF FD */	addi r24, r18, -3
/* 80512BC4  3B A1 00 08 */	addi r29, r1, 8
/* 80512BC8  3B 40 00 00 */	li r26, 0
/* 80512BCC  3A 83 FB 6C */	addi r20, r3, check_fg@l /* 0x8069FB6C@l */
/* 80512BD0  3A A0 00 00 */	li r21, 0
lbl_80512BD4:
/* 80512BD4  7C 1D A8 2E */	lwzx r0, r29, r21
/* 80512BD8  7F 3C CB 78 */	mr r28, r25
/* 80512BDC  7C 18 00 00 */	cmpw r24, r0
/* 80512BE0  41 80 00 84 */	blt lbl_80512C64
/* 80512BE4  3A 60 00 00 */	li r19, 0
lbl_80512BE8:
/* 80512BE8  7E 5C B2 14 */	add r18, r28, r22
/* 80512BEC  3A 20 00 00 */	li r17, 0
lbl_80512BF0:
/* 80512BF0  7D 94 A8 2E */	lwzx r12, r20, r21
/* 80512BF4  A0 72 00 00 */	lhz r3, 0(r18)
/* 80512BF8  7D 89 03 A6 */	mtctr r12
/* 80512BFC  4E 80 04 21 */	bctrl 
/* 80512C00  2C 03 00 01 */	cmpwi r3, 1
/* 80512C04  40 82 00 0C */	bne lbl_80512C10
/* 80512C08  7E 43 93 78 */	mr r3, r18
/* 80512C0C  4B FF D5 4D */	bl mAGrw_KillTree
lbl_80512C10:
/* 80512C10  3A 31 00 01 */	addi r17, r17, 1
/* 80512C14  3A 52 00 02 */	addi r18, r18, 2
/* 80512C18  2C 11 00 10 */	cmpwi r17, 0x10
/* 80512C1C  41 80 FF D4 */	blt lbl_80512BF0
/* 80512C20  3A 73 00 01 */	addi r19, r19, 1
/* 80512C24  3B 9C 02 00 */	addi r28, r28, 0x200
/* 80512C28  2C 13 00 02 */	cmpwi r19, 2
/* 80512C2C  41 80 FF BC */	blt lbl_80512BE8
/* 80512C30  7C 7D A8 2E */	lwzx r3, r29, r21
/* 80512C34  38 00 00 01 */	li r0, 1
/* 80512C38  7C 04 D0 30 */	slw r4, r0, r26
/* 80512C3C  38 00 00 00 */	li r0, 0
/* 80512C40  7F 03 C0 51 */	subf. r24, r3, r24
/* 80512C44  7C 1D A9 2E */	stwx r0, r29, r21
/* 80512C48  7F 60 23 78 */	or r0, r27, r4
/* 80512C4C  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80512C50  41 82 00 14 */	beq lbl_80512C64
/* 80512C54  3B 5A 00 01 */	addi r26, r26, 1
/* 80512C58  3A B5 00 04 */	addi r21, r21, 4
/* 80512C5C  2C 1A 00 05 */	cmpwi r26, 5
/* 80512C60  41 80 FF 74 */	blt lbl_80512BD4
lbl_80512C64:
/* 80512C64  57 7D 06 3E */	clrlwi r29, r27, 0x18
/* 80512C68  3B 40 00 00 */	li r26, 0
/* 80512C6C  3A A0 00 00 */	li r21, 0
/* 80512C70  48 00 00 EC */	b lbl_80512D5C
lbl_80512C74:
/* 80512C74  7F A0 D6 30 */	sraw r0, r29, r26
/* 80512C78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80512C7C  40 82 00 D0 */	bne lbl_80512D4C
/* 80512C80  3B 81 00 08 */	addi r28, r1, 8
/* 80512C84  7C 1C A8 2E */	lwzx r0, r28, r21
/* 80512C88  2C 00 00 00 */	cmpwi r0, 0
/* 80512C8C  40 81 00 C0 */	ble lbl_80512D4C
/* 80512C90  7F 3B CB 78 */	mr r27, r25
/* 80512C94  4B B4 A0 61 */	bl fqrand
/* 80512C98  7C 9C A8 2E */	lwzx r4, r28, r21
/* 80512C9C  3C 00 43 30 */	lis r0, 0x4330
/* 80512CA0  3C A0 80 65 */	lis r5, lit_1185@ha /* 0x80648FBC@ha */
/* 80512CA4  3C 60 80 6A */	lis r3, check_fg@ha /* 0x8069FB6C@ha */
/* 80512CA8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80512CAC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80512CB0  C8 45 8F BC */	lfd f2, lit_1185@l(r5)  /* 0x80648FBC@l */
/* 80512CB4  3A 83 FB 6C */	addi r20, r3, check_fg@l /* 0x8069FB6C@l */
/* 80512CB8  90 81 00 24 */	stw r4, 0x24(r1)
/* 80512CBC  3A 60 00 00 */	li r19, 0
/* 80512CC0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80512CC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80512CC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80512CCC  FC 00 00 1E */	fctiwz f0, f0
/* 80512CD0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80512CD4  82 01 00 2C */	lwz r16, 0x2c(r1)
/* 80512CD8  48 00 00 58 */	b lbl_80512D30
lbl_80512CDC:
/* 80512CDC  7E 5B B2 14 */	add r18, r27, r22
/* 80512CE0  3A 20 00 00 */	li r17, 0
lbl_80512CE4:
/* 80512CE4  7D 94 A8 2E */	lwzx r12, r20, r21
/* 80512CE8  A0 72 00 00 */	lhz r3, 0(r18)
/* 80512CEC  7D 89 03 A6 */	mtctr r12
/* 80512CF0  4E 80 04 21 */	bctrl 
/* 80512CF4  2C 03 00 01 */	cmpwi r3, 1
/* 80512CF8  40 82 00 20 */	bne lbl_80512D18
/* 80512CFC  2C 10 00 00 */	cmpwi r16, 0
/* 80512D00  40 82 00 14 */	bne lbl_80512D14
/* 80512D04  7E 43 93 78 */	mr r3, r18
/* 80512D08  4B FF D4 51 */	bl mAGrw_KillTree
/* 80512D0C  3A 60 00 02 */	li r19, 2
/* 80512D10  48 00 00 18 */	b lbl_80512D28
lbl_80512D14:
/* 80512D14  3A 10 FF FF */	addi r16, r16, -1
lbl_80512D18:
/* 80512D18  3A 31 00 01 */	addi r17, r17, 1
/* 80512D1C  3A 52 00 02 */	addi r18, r18, 2
/* 80512D20  2C 11 00 10 */	cmpwi r17, 0x10
/* 80512D24  41 80 FF C0 */	blt lbl_80512CE4
lbl_80512D28:
/* 80512D28  3B 7B 02 00 */	addi r27, r27, 0x200
/* 80512D2C  3A 73 00 01 */	addi r19, r19, 1
lbl_80512D30:
/* 80512D30  2C 13 00 02 */	cmpwi r19, 2
/* 80512D34  41 80 FF A8 */	blt lbl_80512CDC
/* 80512D38  7C 7C A8 2E */	lwzx r3, r28, r21
/* 80512D3C  3B 18 FF FF */	addi r24, r24, -1
/* 80512D40  38 03 FF FF */	addi r0, r3, -1
/* 80512D44  7C 1C A9 2E */	stwx r0, r28, r21
/* 80512D48  48 00 00 0C */	b lbl_80512D54
lbl_80512D4C:
/* 80512D4C  3B 5A 00 01 */	addi r26, r26, 1
/* 80512D50  3A B5 00 04 */	addi r21, r21, 4
lbl_80512D54:
/* 80512D54  2C 1A 00 05 */	cmpwi r26, 5
/* 80512D58  40 80 00 0C */	bge lbl_80512D64
lbl_80512D5C:
/* 80512D5C  2C 18 00 00 */	cmpwi r24, 0
/* 80512D60  41 81 FF 14 */	bgt lbl_80512C74
lbl_80512D64:
/* 80512D64  3A F7 00 01 */	addi r23, r23, 1
/* 80512D68  3A D6 00 20 */	addi r22, r22, 0x20
/* 80512D6C  2C 17 00 10 */	cmpwi r23, 0x10
/* 80512D70  41 80 FD BC */	blt lbl_80512B2C
/* 80512D74  39 61 00 70 */	addi r11, r1, 0x70
/* 80512D78  4B B8 81 75 */	bl func_8009AEEC
/* 80512D7C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80512D80  7C 08 03 A6 */	mtlr r0
/* 80512D84  38 21 00 70 */	addi r1, r1, 0x70
/* 80512D88  4E 80 00 20 */	blr 
