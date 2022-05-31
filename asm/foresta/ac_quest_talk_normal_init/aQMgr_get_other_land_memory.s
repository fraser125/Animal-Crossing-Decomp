lbl_80491B38:
/* 80491B38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80491B3C  7C 08 02 A6 */	mflr r0
/* 80491B40  90 01 00 44 */	stw r0, 0x44(r1)
/* 80491B44  39 61 00 40 */	addi r11, r1, 0x40
/* 80491B48  4B C0 93 7D */	bl func_8009AEC4
/* 80491B4C  7C 9A 23 78 */	mr r26, r4
/* 80491B50  7C 79 1B 78 */	mr r25, r3
/* 80491B54  7C BB 2B 78 */	mr r27, r5
/* 80491B58  3B C0 00 00 */	li r30, 0
/* 80491B5C  7F 5F D3 78 */	mr r31, r26
/* 80491B60  3B A0 00 00 */	li r29, 0
/* 80491B64  3B 80 00 00 */	li r28, 0
/* 80491B68  48 00 00 24 */	b lbl_80491B8C
lbl_80491B6C:
/* 80491B6C  7F 43 D3 78 */	mr r3, r26
/* 80491B70  7F 24 CB 78 */	mr r4, r25
/* 80491B74  4B FF FF 1D */	bl aQMgr_check_other_land_memory
/* 80491B78  2C 03 00 01 */	cmpwi r3, 1
/* 80491B7C  40 82 00 08 */	bne lbl_80491B84
/* 80491B80  3B BD 00 01 */	addi r29, r29, 1
lbl_80491B84:
/* 80491B84  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80491B88  3B 9C 00 01 */	addi r28, r28, 1
lbl_80491B8C:
/* 80491B8C  7C 1C D8 00 */	cmpw r28, r27
/* 80491B90  41 80 FF DC */	blt lbl_80491B6C
/* 80491B94  2C 1D 00 00 */	cmpwi r29, 0
/* 80491B98  40 81 00 7C */	ble lbl_80491C14
/* 80491B9C  7F FA FB 78 */	mr r26, r31
/* 80491BA0  4B BC B1 55 */	bl fqrand
/* 80491BA4  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 80491BA8  3C 00 43 30 */	lis r0, 0x4330
/* 80491BAC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80491BB0  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 80491BB4  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 80491BB8  3B E0 00 00 */	li r31, 0
/* 80491BBC  90 01 00 08 */	stw r0, 8(r1)
/* 80491BC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80491BC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80491BC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80491BCC  FC 00 00 1E */	fctiwz f0, f0
/* 80491BD0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80491BD4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80491BD8  48 00 00 34 */	b lbl_80491C0C
lbl_80491BDC:
/* 80491BDC  7F 43 D3 78 */	mr r3, r26
/* 80491BE0  7F 24 CB 78 */	mr r4, r25
/* 80491BE4  4B FF FE AD */	bl aQMgr_check_other_land_memory
/* 80491BE8  2C 03 00 01 */	cmpwi r3, 1
/* 80491BEC  40 82 00 18 */	bne lbl_80491C04
/* 80491BF0  2C 1D 00 00 */	cmpwi r29, 0
/* 80491BF4  41 81 00 0C */	bgt lbl_80491C00
/* 80491BF8  7F 5E D3 78 */	mr r30, r26
/* 80491BFC  48 00 00 18 */	b lbl_80491C14
lbl_80491C00:
/* 80491C00  3B BD FF FF */	addi r29, r29, -1
lbl_80491C04:
/* 80491C04  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80491C08  3B FF 00 01 */	addi r31, r31, 1
lbl_80491C0C:
/* 80491C0C  7C 1F D8 00 */	cmpw r31, r27
/* 80491C10  41 80 FF CC */	blt lbl_80491BDC
lbl_80491C14:
/* 80491C14  7F C3 F3 78 */	mr r3, r30
/* 80491C18  39 61 00 40 */	addi r11, r1, 0x40
/* 80491C1C  4B C0 92 F5 */	bl func_8009AF10
/* 80491C20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80491C24  7C 08 03 A6 */	mtlr r0
/* 80491C28  38 21 00 40 */	addi r1, r1, 0x40
/* 80491C2C  4E 80 00 20 */	blr 
