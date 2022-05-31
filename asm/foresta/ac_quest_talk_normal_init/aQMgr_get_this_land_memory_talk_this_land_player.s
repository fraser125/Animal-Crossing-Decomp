lbl_80491EE0:
/* 80491EE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80491EE4  7C 08 02 A6 */	mflr r0
/* 80491EE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80491EEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80491EF0  4B C0 8F D5 */	bl func_8009AEC4
/* 80491EF4  7C 9A 23 78 */	mr r26, r4
/* 80491EF8  7C 79 1B 78 */	mr r25, r3
/* 80491EFC  7C BB 2B 78 */	mr r27, r5
/* 80491F00  3B C0 00 00 */	li r30, 0
/* 80491F04  7F 5F D3 78 */	mr r31, r26
/* 80491F08  3B A0 00 00 */	li r29, 0
/* 80491F0C  3B 80 00 00 */	li r28, 0
/* 80491F10  48 00 00 24 */	b lbl_80491F34
lbl_80491F14:
/* 80491F14  7F 43 D3 78 */	mr r3, r26
/* 80491F18  7F 24 CB 78 */	mr r4, r25
/* 80491F1C  4B FF FE ED */	bl aQMgr_check_this_land_memory_talk_this_land_player
/* 80491F20  2C 03 00 01 */	cmpwi r3, 1
/* 80491F24  40 82 00 08 */	bne lbl_80491F2C
/* 80491F28  3B BD 00 01 */	addi r29, r29, 1
lbl_80491F2C:
/* 80491F2C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80491F30  3B 9C 00 01 */	addi r28, r28, 1
lbl_80491F34:
/* 80491F34  7C 1C D8 00 */	cmpw r28, r27
/* 80491F38  41 80 FF DC */	blt lbl_80491F14
/* 80491F3C  2C 1D 00 00 */	cmpwi r29, 0
/* 80491F40  40 81 00 7C */	ble lbl_80491FBC
/* 80491F44  4B BC AD B1 */	bl fqrand
/* 80491F48  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 80491F4C  3C 00 43 30 */	lis r0, 0x4330
/* 80491F50  90 61 00 0C */	stw r3, 0xc(r1)
/* 80491F54  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 80491F58  7F FA FB 78 */	mr r26, r31
/* 80491F5C  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 80491F60  90 01 00 08 */	stw r0, 8(r1)
/* 80491F64  3B E0 00 00 */	li r31, 0
/* 80491F68  C8 01 00 08 */	lfd f0, 8(r1)
/* 80491F6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80491F70  EC 00 00 72 */	fmuls f0, f0, f1
/* 80491F74  FC 00 00 1E */	fctiwz f0, f0
/* 80491F78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80491F7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80491F80  48 00 00 34 */	b lbl_80491FB4
lbl_80491F84:
/* 80491F84  7F 43 D3 78 */	mr r3, r26
/* 80491F88  7F 24 CB 78 */	mr r4, r25
/* 80491F8C  4B FF FE 7D */	bl aQMgr_check_this_land_memory_talk_this_land_player
/* 80491F90  2C 03 00 01 */	cmpwi r3, 1
/* 80491F94  40 82 00 18 */	bne lbl_80491FAC
/* 80491F98  2C 1D 00 00 */	cmpwi r29, 0
/* 80491F9C  41 81 00 0C */	bgt lbl_80491FA8
/* 80491FA0  7F 5E D3 78 */	mr r30, r26
/* 80491FA4  48 00 00 18 */	b lbl_80491FBC
lbl_80491FA8:
/* 80491FA8  3B BD FF FF */	addi r29, r29, -1
lbl_80491FAC:
/* 80491FAC  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80491FB0  3B FF 00 01 */	addi r31, r31, 1
lbl_80491FB4:
/* 80491FB4  7C 1F D8 00 */	cmpw r31, r27
/* 80491FB8  41 80 FF CC */	blt lbl_80491F84
lbl_80491FBC:
/* 80491FBC  7F C3 F3 78 */	mr r3, r30
/* 80491FC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80491FC4  4B C0 8F 4D */	bl func_8009AF10
/* 80491FC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80491FCC  7C 08 03 A6 */	mtlr r0
/* 80491FD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80491FD4  4E 80 00 20 */	blr 
