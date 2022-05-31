lbl_80518D48:
/* 80518D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80518D4C  7C 08 02 A6 */	mflr r0
/* 80518D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80518D54  39 61 00 20 */	addi r11, r1, 0x20
/* 80518D58  4B B8 21 75 */	bl func_8009AECC
/* 80518D5C  7C 7B 1B 78 */	mr r27, r3
/* 80518D60  7C 9C 23 78 */	mr r28, r4
/* 80518D64  4B EA 69 45 */	bl func_803BF6A8
/* 80518D68  7C 7F 1B 78 */	mr r31, r3
/* 80518D6C  4B EA 69 F9 */	bl mMsg_Check_not_series_main_wait
/* 80518D70  2C 03 00 01 */	cmpwi r3, 1
/* 80518D74  40 82 01 0C */	bne lbl_80518E80
/* 80518D78  80 9C 1F 60 */	lwz r4, 0x1f60(r28)
/* 80518D7C  7F E3 FB 78 */	mr r3, r31
/* 80518D80  A3 C4 00 00 */	lhz r30, 0(r4)
/* 80518D84  B3 DB 09 A0 */	sth r30, 0x9a0(r27)
/* 80518D88  88 04 00 02 */	lbz r0, 2(r4)
/* 80518D8C  98 1B 09 A2 */	stb r0, 0x9a2(r27)
/* 80518D90  4B EA 7F 99 */	bl mMsg_Set_ForceNext
/* 80518D94  28 1E 00 00 */	cmplwi r30, 0
/* 80518D98  41 82 00 A4 */	beq lbl_80518E3C
/* 80518D9C  38 60 00 04 */	li r3, 4
/* 80518DA0  38 80 00 01 */	li r4, 1
/* 80518DA4  38 A0 00 03 */	li r5, 3
/* 80518DA8  4B E7 F6 91 */	bl mDemo_Set_OrderValue
/* 80518DAC  7F C3 F3 78 */	mr r3, r30
/* 80518DB0  4B FF F9 45 */	bl aEANG_item_check
/* 80518DB4  2C 03 00 02 */	cmpwi r3, 2
/* 80518DB8  41 82 00 78 */	beq lbl_80518E30
/* 80518DBC  40 80 00 14 */	bge lbl_80518DD0
/* 80518DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80518DC4  41 82 00 18 */	beq lbl_80518DDC
/* 80518DC8  40 80 00 28 */	bge lbl_80518DF0
/* 80518DCC  48 00 00 64 */	b lbl_80518E30
lbl_80518DD0:
/* 80518DD0  2C 03 00 04 */	cmpwi r3, 4
/* 80518DD4  40 80 00 5C */	bge lbl_80518E30
/* 80518DD8  48 00 00 2C */	b lbl_80518E04
lbl_80518DDC:
/* 80518DDC  7F C3 F3 78 */	mr r3, r30
/* 80518DE0  48 0A 84 C9 */	bl aTRC_clip_get_msgno
/* 80518DE4  3B A0 00 09 */	li r29, 9
/* 80518DE8  7C 7E 1B 78 */	mr r30, r3
/* 80518DEC  48 00 00 70 */	b lbl_80518E5C
lbl_80518DF0:
/* 80518DF0  7F C3 F3 78 */	mr r3, r30
/* 80518DF4  48 0A 84 B5 */	bl aTRC_clip_get_msgno
/* 80518DF8  3B A0 00 05 */	li r29, 5
/* 80518DFC  7C 7E 1B 78 */	mr r30, r3
/* 80518E00  48 00 00 5C */	b lbl_80518E5C
lbl_80518E04:
/* 80518E04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80518E08  88 9B 09 A2 */	lbz r4, 0x9a2(r27)
/* 80518E0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80518E10  A0 BB 09 A0 */	lhz r5, 0x9a0(r27)
/* 80518E14  3C 63 00 02 */	addis r3, r3, 2
/* 80518E18  3B C0 17 E5 */	li r30, 0x17e5
/* 80518E1C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80518E20  3B A0 00 06 */	li r29, 6
/* 80518E24  38 C0 00 00 */	li r6, 0
/* 80518E28  4B EC 80 01 */	bl mPr_SetPossessionItem
/* 80518E2C  48 00 00 30 */	b lbl_80518E5C
lbl_80518E30:
/* 80518E30  3B C0 10 F2 */	li r30, 0x10f2
/* 80518E34  3B A0 00 05 */	li r29, 5
/* 80518E38  48 00 00 24 */	b lbl_80518E5C
lbl_80518E3C:
/* 80518E3C  4B FF F8 81 */	bl now_top_check
/* 80518E40  2C 03 00 00 */	cmpwi r3, 0
/* 80518E44  38 00 10 F0 */	li r0, 0x10f0
/* 80518E48  41 82 00 08 */	beq lbl_80518E50
/* 80518E4C  38 00 11 1E */	li r0, 0x111e
lbl_80518E50:
/* 80518E50  7C 1E 03 78 */	mr r30, r0
/* 80518E54  3B A0 00 00 */	li r29, 0
/* 80518E58  48 0A 86 E5 */	bl aTRC_clip_set_topname
lbl_80518E5C:
/* 80518E5C  7F E3 FB 78 */	mr r3, r31
/* 80518E60  7F C4 F3 78 */	mr r4, r30
/* 80518E64  4B EA 71 61 */	bl mMsg_Set_continue_msg_num
/* 80518E68  81 9B 09 9C */	lwz r12, 0x99c(r27)
/* 80518E6C  7F 63 DB 78 */	mr r3, r27
/* 80518E70  7F 84 E3 78 */	mr r4, r28
/* 80518E74  7F A5 EB 78 */	mr r5, r29
/* 80518E78  7D 89 03 A6 */	mtctr r12
/* 80518E7C  4E 80 04 21 */	bctrl 
lbl_80518E80:
/* 80518E80  39 61 00 20 */	addi r11, r1, 0x20
/* 80518E84  4B B8 20 95 */	bl func_8009AF18
/* 80518E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80518E8C  7C 08 03 A6 */	mtlr r0
/* 80518E90  38 21 00 20 */	addi r1, r1, 0x20
/* 80518E94  4E 80 00 20 */	blr 
