lbl_80539CFC:
/* 80539CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80539D00  7C 08 02 A6 */	mflr r0
/* 80539D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80539D08  39 61 00 20 */	addi r11, r1, 0x20
/* 80539D0C  4B B6 11 C5 */	bl func_8009AED0
/* 80539D10  54 C0 A7 3E */	rlwinm r0, r6, 0x14, 0x1c, 0x1f
/* 80539D14  7C DF 33 78 */	mr r31, r6
/* 80539D18  2C 00 00 0E */	cmpwi r0, 0xe
/* 80539D1C  7C 7D 1B 78 */	mr r29, r3
/* 80539D20  7C BE 2B 78 */	mr r30, r5
/* 80539D24  54 DC 04 3E */	clrlwi r28, r6, 0x10
/* 80539D28  41 82 00 14 */	beq lbl_80539D3C
/* 80539D2C  40 80 01 D4 */	bge lbl_80539F00
/* 80539D30  2C 00 00 0D */	cmpwi r0, 0xd
/* 80539D34  40 80 00 34 */	bge lbl_80539D68
/* 80539D38  48 00 01 C8 */	b lbl_80539F00
lbl_80539D3C:
/* 80539D3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80539D40  7F C4 F3 78 */	mr r4, r30
/* 80539D44  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80539D48  7F E8 FB 78 */	mr r8, r31
/* 80539D4C  3C C5 00 02 */	addis r6, r5, 2
/* 80539D50  38 A0 08 00 */	li r5, 0x800
/* 80539D54  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80539D58  38 E0 00 01 */	li r7, 1
/* 80539D5C  38 C6 00 64 */	addi r6, r6, 0x64
/* 80539D60  4B FF FF 31 */	bl aNPC_get_overlay_area_proc_sub
/* 80539D64  48 00 01 9C */	b lbl_80539F00
lbl_80539D68:
/* 80539D68  7F E3 FB 78 */	mr r3, r31
/* 80539D6C  4B E9 4E 7D */	bl mNpc_GetSameEventNpc
/* 80539D70  28 03 00 00 */	cmplwi r3, 0
/* 80539D74  41 82 00 34 */	beq lbl_80539DA8
/* 80539D78  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80539D7C  7F A3 EB 78 */	mr r3, r29
/* 80539D80  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80539D84  7F C4 F3 78 */	mr r4, r30
/* 80539D88  3C A5 00 02 */	addis r5, r5, 2
/* 80539D8C  7F E8 FB 78 */	mr r8, r31
/* 80539D90  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80539D94  38 A0 28 00 */	li r5, 0x2800
/* 80539D98  38 E0 00 02 */	li r7, 2
/* 80539D9C  38 C6 00 94 */	addi r6, r6, 0x94
/* 80539DA0  4B FF FE F1 */	bl aNPC_get_overlay_area_proc_sub
/* 80539DA4  48 00 01 5C */	b lbl_80539F00
lbl_80539DA8:
/* 80539DA8  7F E3 FB 78 */	mr r3, r31
/* 80539DAC  4B E9 50 79 */	bl mNpc_GetSameMaskNpc
/* 80539DB0  28 03 00 00 */	cmplwi r3, 0
/* 80539DB4  41 82 00 34 */	beq lbl_80539DE8
/* 80539DB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80539DBC  7F A3 EB 78 */	mr r3, r29
/* 80539DC0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80539DC4  7F C4 F3 78 */	mr r4, r30
/* 80539DC8  3C A5 00 02 */	addis r5, r5, 2
/* 80539DCC  7F E8 FB 78 */	mr r8, r31
/* 80539DD0  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80539DD4  38 A0 30 00 */	li r5, 0x3000
/* 80539DD8  38 E0 00 03 */	li r7, 3
/* 80539DDC  38 C6 00 7C */	addi r6, r6, 0x7c
/* 80539DE0  4B FF FE B1 */	bl aNPC_get_overlay_area_proc_sub
/* 80539DE4  48 00 01 1C */	b lbl_80539F00
lbl_80539DE8:
/* 80539DE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D06B@ha */
/* 80539DEC  38 03 D0 6B */	addi r0, r3, 0xD06B /* 0x0000D06B@l */
/* 80539DF0  7C 1C 00 00 */	cmpw r28, r0
/* 80539DF4  41 82 00 B0 */	beq lbl_80539EA4
/* 80539DF8  40 80 00 60 */	bge lbl_80539E58
/* 80539DFC  38 03 D0 11 */	addi r0, r3, -12271
/* 80539E00  7C 1C 00 00 */	cmpw r28, r0
/* 80539E04  41 82 00 A0 */	beq lbl_80539EA4
/* 80539E08  40 80 00 30 */	bge lbl_80539E38
/* 80539E0C  38 03 D0 0D */	addi r0, r3, -12275
/* 80539E10  7C 1C 00 00 */	cmpw r28, r0
/* 80539E14  40 80 00 14 */	bge lbl_80539E28
/* 80539E18  38 03 D0 07 */	addi r0, r3, -12281
/* 80539E1C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E20  41 82 00 84 */	beq lbl_80539EA4
/* 80539E24  48 00 00 B0 */	b lbl_80539ED4
lbl_80539E28:
/* 80539E28  38 03 D0 0F */	addi r0, r3, -12273
/* 80539E2C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E30  40 80 00 A4 */	bge lbl_80539ED4
/* 80539E34  48 00 00 70 */	b lbl_80539EA4
lbl_80539E38:
/* 80539E38  38 03 D0 67 */	addi r0, r3, -12185
/* 80539E3C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E40  41 82 00 64 */	beq lbl_80539EA4
/* 80539E44  40 80 00 90 */	bge lbl_80539ED4
/* 80539E48  38 03 D0 64 */	addi r0, r3, -12188
/* 80539E4C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E50  41 82 00 54 */	beq lbl_80539EA4
/* 80539E54  48 00 00 80 */	b lbl_80539ED4
lbl_80539E58:
/* 80539E58  38 03 D0 75 */	addi r0, r3, -12171
/* 80539E5C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E60  41 82 00 44 */	beq lbl_80539EA4
/* 80539E64  40 80 00 30 */	bge lbl_80539E94
/* 80539E68  38 03 D0 72 */	addi r0, r3, -12174
/* 80539E6C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E70  41 82 00 34 */	beq lbl_80539EA4
/* 80539E74  40 80 00 60 */	bge lbl_80539ED4
/* 80539E78  38 03 D0 70 */	addi r0, r3, -12176
/* 80539E7C  7C 1C 00 00 */	cmpw r28, r0
/* 80539E80  40 80 00 54 */	bge lbl_80539ED4
/* 80539E84  38 03 D0 6E */	addi r0, r3, -12178
/* 80539E88  7C 1C 00 00 */	cmpw r28, r0
/* 80539E8C  40 80 00 18 */	bge lbl_80539EA4
/* 80539E90  48 00 00 44 */	b lbl_80539ED4
lbl_80539E94:
/* 80539E94  38 03 D0 77 */	addi r0, r3, -12169
/* 80539E98  7C 1C 00 00 */	cmpw r28, r0
/* 80539E9C  41 82 00 08 */	beq lbl_80539EA4
/* 80539EA0  48 00 00 34 */	b lbl_80539ED4
lbl_80539EA4:
/* 80539EA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80539EA8  7F A3 EB 78 */	mr r3, r29
/* 80539EAC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80539EB0  7F C4 F3 78 */	mr r4, r30
/* 80539EB4  3C A5 00 02 */	addis r5, r5, 2
/* 80539EB8  7F E8 FB 78 */	mr r8, r31
/* 80539EBC  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80539EC0  38 A0 30 00 */	li r5, 0x3000
/* 80539EC4  38 E0 00 03 */	li r7, 3
/* 80539EC8  38 C6 00 7C */	addi r6, r6, 0x7c
/* 80539ECC  4B FF FD C5 */	bl aNPC_get_overlay_area_proc_sub
/* 80539ED0  48 00 00 30 */	b lbl_80539F00
lbl_80539ED4:
/* 80539ED4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80539ED8  7F A3 EB 78 */	mr r3, r29
/* 80539EDC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80539EE0  7F C4 F3 78 */	mr r4, r30
/* 80539EE4  3C A5 00 02 */	addis r5, r5, 2
/* 80539EE8  7F E8 FB 78 */	mr r8, r31
/* 80539EEC  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80539EF0  38 A0 20 00 */	li r5, 0x2000
/* 80539EF4  38 E0 00 02 */	li r7, 2
/* 80539EF8  38 C6 00 6C */	addi r6, r6, 0x6c
/* 80539EFC  4B FF FD 95 */	bl aNPC_get_overlay_area_proc_sub
lbl_80539F00:
/* 80539F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80539F04  4B B6 10 19 */	bl func_8009AF1C
/* 80539F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80539F0C  7C 08 03 A6 */	mtlr r0
/* 80539F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80539F14  4E 80 00 20 */	blr 
