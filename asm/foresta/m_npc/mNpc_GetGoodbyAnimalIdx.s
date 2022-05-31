lbl_803D0B04:
/* 803D0B04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D0B08  7C 08 02 A6 */	mflr r0
/* 803D0B0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D0B10  39 61 00 40 */	addi r11, r1, 0x40
/* 803D0B14  4B CC A3 A9 */	bl func_8009AEBC
/* 803D0B18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D0B1C  7C 79 1B 78 */	mr r25, r3
/* 803D0B20  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 803D0B24  3B A0 00 00 */	li r29, 0
/* 803D0B28  3C 7F 00 01 */	addis r3, r31, 1
/* 803D0B2C  3B 80 00 00 */	li r28, 0
/* 803D0B30  38 63 74 38 */	addi r3, r3, 0x7438
/* 803D0B34  3A E0 00 00 */	li r23, 0
/* 803D0B38  7C 7E 1B 78 */	mr r30, r3
/* 803D0B3C  3B 60 FF FF */	li r27, -1
/* 803D0B40  3B 40 00 00 */	li r26, 0
lbl_803D0B44:
/* 803D0B44  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 803D0B48  7C 1A 00 00 */	cmpw r26, r0
/* 803D0B4C  41 82 01 A4 */	beq lbl_803D0CF0
/* 803D0B50  2C 19 00 00 */	cmpwi r25, 0
/* 803D0B54  41 80 00 14 */	blt lbl_803D0B68
/* 803D0B58  2C 19 00 0F */	cmpwi r25, 0xf
/* 803D0B5C  40 80 00 0C */	bge lbl_803D0B68
/* 803D0B60  7C 1A C8 00 */	cmpw r26, r25
/* 803D0B64  40 82 00 0C */	bne lbl_803D0B70
lbl_803D0B68:
/* 803D0B68  2C 19 FF FF */	cmpwi r25, -1
/* 803D0B6C  40 82 01 84 */	bne lbl_803D0CF0
lbl_803D0B70:
/* 803D0B70  7F C3 F3 78 */	mr r3, r30
/* 803D0B74  4B FF BA 49 */	bl mNpc_CheckFreeAnimalInfo
/* 803D0B78  2C 03 00 00 */	cmpwi r3, 0
/* 803D0B7C  40 82 01 74 */	bne lbl_803D0CF0
/* 803D0B80  28 1D 00 00 */	cmplwi r29, 0
/* 803D0B84  41 82 01 54 */	beq lbl_803D0CD8
/* 803D0B88  7F C3 F3 78 */	mr r3, r30
/* 803D0B8C  4B FF A9 D5 */	bl mNpc_CheckRemoveExp
/* 803D0B90  2C 03 00 00 */	cmpwi r3, 0
/* 803D0B94  40 82 00 94 */	bne lbl_803D0C28
/* 803D0B98  7F A3 EB 78 */	mr r3, r29
/* 803D0B9C  4B FF A9 C5 */	bl mNpc_CheckRemoveExp
/* 803D0BA0  2C 03 00 00 */	cmpwi r3, 0
/* 803D0BA4  41 82 00 20 */	beq lbl_803D0BC4
/* 803D0BA8  38 00 00 01 */	li r0, 1
/* 803D0BAC  7F DD F3 78 */	mr r29, r30
/* 803D0BB0  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0BB4  7F 5B D3 78 */	mr r27, r26
/* 803D0BB8  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0BBC  3A E0 00 01 */	li r23, 1
/* 803D0BC0  48 00 01 30 */	b lbl_803D0CF0
lbl_803D0BC4:
/* 803D0BC4  7F C3 F3 78 */	mr r3, r30
/* 803D0BC8  7F A4 EB 78 */	mr r4, r29
/* 803D0BCC  4B FF FE 3D */	bl mNpc_CheckGoodbyAnimalMemoryNum
/* 803D0BD0  2C 03 00 00 */	cmpwi r3, 0
/* 803D0BD4  41 82 01 1C */	beq lbl_803D0CF0
/* 803D0BD8  40 80 00 10 */	bge lbl_803D0BE8
/* 803D0BDC  2C 03 FF FF */	cmpwi r3, -1
/* 803D0BE0  40 80 00 14 */	bge lbl_803D0BF4
/* 803D0BE4  48 00 01 0C */	b lbl_803D0CF0
lbl_803D0BE8:
/* 803D0BE8  2C 03 00 02 */	cmpwi r3, 2
/* 803D0BEC  40 80 01 04 */	bge lbl_803D0CF0
/* 803D0BF0  48 00 00 1C */	b lbl_803D0C0C
lbl_803D0BF4:
/* 803D0BF4  38 00 00 01 */	li r0, 1
/* 803D0BF8  3A F7 00 01 */	addi r23, r23, 1
/* 803D0BFC  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0C00  7F 80 03 78 */	or r0, r28, r0
/* 803D0C04  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0C08  48 00 00 E8 */	b lbl_803D0CF0
lbl_803D0C0C:
/* 803D0C0C  38 00 00 01 */	li r0, 1
/* 803D0C10  7F DD F3 78 */	mr r29, r30
/* 803D0C14  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0C18  7F 5B D3 78 */	mr r27, r26
/* 803D0C1C  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0C20  3A E0 00 01 */	li r23, 1
/* 803D0C24  48 00 00 CC */	b lbl_803D0CF0
lbl_803D0C28:
/* 803D0C28  7F A3 EB 78 */	mr r3, r29
/* 803D0C2C  4B FF A9 35 */	bl mNpc_CheckRemoveExp
/* 803D0C30  2C 03 00 00 */	cmpwi r3, 0
/* 803D0C34  41 82 00 BC */	beq lbl_803D0CF0
/* 803D0C38  7F C3 F3 78 */	mr r3, r30
/* 803D0C3C  4B FF A9 31 */	bl mNpc_GetRemoveTime
/* 803D0C40  7C 78 1B 78 */	mr r24, r3
/* 803D0C44  7F A3 EB 78 */	mr r3, r29
/* 803D0C48  4B FF A9 25 */	bl mNpc_GetRemoveTime
/* 803D0C4C  7C 03 C0 00 */	cmpw r3, r24
/* 803D0C50  40 81 00 20 */	ble lbl_803D0C70
/* 803D0C54  38 00 00 01 */	li r0, 1
/* 803D0C58  7F DD F3 78 */	mr r29, r30
/* 803D0C5C  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0C60  7F 5B D3 78 */	mr r27, r26
/* 803D0C64  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0C68  3A E0 00 01 */	li r23, 1
/* 803D0C6C  48 00 00 84 */	b lbl_803D0CF0
lbl_803D0C70:
/* 803D0C70  40 82 00 80 */	bne lbl_803D0CF0
/* 803D0C74  7F C3 F3 78 */	mr r3, r30
/* 803D0C78  7F A4 EB 78 */	mr r4, r29
/* 803D0C7C  4B FF FD 8D */	bl mNpc_CheckGoodbyAnimalMemoryNum
/* 803D0C80  2C 03 00 00 */	cmpwi r3, 0
/* 803D0C84  41 82 00 6C */	beq lbl_803D0CF0
/* 803D0C88  40 80 00 10 */	bge lbl_803D0C98
/* 803D0C8C  2C 03 FF FF */	cmpwi r3, -1
/* 803D0C90  40 80 00 14 */	bge lbl_803D0CA4
/* 803D0C94  48 00 00 5C */	b lbl_803D0CF0
lbl_803D0C98:
/* 803D0C98  2C 03 00 02 */	cmpwi r3, 2
/* 803D0C9C  40 80 00 54 */	bge lbl_803D0CF0
/* 803D0CA0  48 00 00 1C */	b lbl_803D0CBC
lbl_803D0CA4:
/* 803D0CA4  38 00 00 01 */	li r0, 1
/* 803D0CA8  3A F7 00 01 */	addi r23, r23, 1
/* 803D0CAC  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0CB0  7F 80 03 78 */	or r0, r28, r0
/* 803D0CB4  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0CB8  48 00 00 38 */	b lbl_803D0CF0
lbl_803D0CBC:
/* 803D0CBC  38 00 00 01 */	li r0, 1
/* 803D0CC0  7F DD F3 78 */	mr r29, r30
/* 803D0CC4  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0CC8  7F 5B D3 78 */	mr r27, r26
/* 803D0CCC  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0CD0  3A E0 00 01 */	li r23, 1
/* 803D0CD4  48 00 00 1C */	b lbl_803D0CF0
lbl_803D0CD8:
/* 803D0CD8  38 00 00 01 */	li r0, 1
/* 803D0CDC  7F DD F3 78 */	mr r29, r30
/* 803D0CE0  7C 00 D0 30 */	slw r0, r0, r26
/* 803D0CE4  7F 5B D3 78 */	mr r27, r26
/* 803D0CE8  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 803D0CEC  3A E0 00 01 */	li r23, 1
lbl_803D0CF0:
/* 803D0CF0  3B 5A 00 01 */	addi r26, r26, 1
/* 803D0CF4  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D0CF8  2C 1A 00 0F */	cmpwi r26, 0xf
/* 803D0CFC  41 80 FE 48 */	blt lbl_803D0B44
/* 803D0D00  2C 17 00 01 */	cmpwi r23, 1
/* 803D0D04  40 81 00 74 */	ble lbl_803D0D78
/* 803D0D08  4B C8 BF ED */	bl fqrand
/* 803D0D0C  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 803D0D10  3C 60 43 30 */	lis r3, 0x4330
/* 803D0D14  90 01 00 0C */	stw r0, 0xc(r1)
/* 803D0D18  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D0D1C  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D0D20  38 00 00 0F */	li r0, 0xf
/* 803D0D24  90 61 00 08 */	stw r3, 8(r1)
/* 803D0D28  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 803D0D2C  38 80 00 00 */	li r4, 0
/* 803D0D30  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D0D34  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D0D38  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D0D3C  FC 00 00 1E */	fctiwz f0, f0
/* 803D0D40  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D0D44  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D0D48  7C 09 03 A6 */	mtctr r0
lbl_803D0D4C:
/* 803D0D4C  7C 60 26 30 */	sraw r0, r3, r4
/* 803D0D50  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D0D54  2C 00 00 01 */	cmpwi r0, 1
/* 803D0D58  40 82 00 18 */	bne lbl_803D0D70
/* 803D0D5C  2C 05 00 00 */	cmpwi r5, 0
/* 803D0D60  40 82 00 0C */	bne lbl_803D0D6C
/* 803D0D64  7C 9B 23 78 */	mr r27, r4
/* 803D0D68  48 00 00 10 */	b lbl_803D0D78
lbl_803D0D6C:
/* 803D0D6C  38 A5 FF FF */	addi r5, r5, -1
lbl_803D0D70:
/* 803D0D70  38 84 00 01 */	addi r4, r4, 1
/* 803D0D74  42 00 FF D8 */	bdnz lbl_803D0D4C
lbl_803D0D78:
/* 803D0D78  7F 63 DB 78 */	mr r3, r27
/* 803D0D7C  39 61 00 40 */	addi r11, r1, 0x40
/* 803D0D80  4B CC A1 89 */	bl func_8009AF08
/* 803D0D84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D0D88  7C 08 03 A6 */	mtlr r0
/* 803D0D8C  38 21 00 40 */	addi r1, r1, 0x40
/* 803D0D90  4E 80 00 20 */	blr 
