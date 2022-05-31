lbl_80429E20:
/* 80429E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80429E24  7C 08 02 A6 */	mflr r0
/* 80429E28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80429E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80429E30  4B C7 10 A5 */	bl func_8009AED4
/* 80429E34  7C 7D 1B 78 */	mr r29, r3
/* 80429E38  7C 9E 23 78 */	mr r30, r4
/* 80429E3C  38 60 00 01 */	li r3, 1
/* 80429E40  38 80 00 07 */	li r4, 7
/* 80429E44  4B F7 3F 89 */	bl mEv_get_save_area
/* 80429E48  7C 7F 1B 78 */	mr r31, r3
/* 80429E4C  7F A3 EB 78 */	mr r3, r29
/* 80429E50  7F C4 F3 78 */	mr r4, r30
/* 80429E54  4B FF FD 95 */	bl aHN0_normal_wait_init
/* 80429E58  88 7D 09 A8 */	lbz r3, 0x9a8(r29)
/* 80429E5C  38 9D 09 9E */	addi r4, r29, 0x99e
/* 80429E60  4B FF FA 75 */	bl aHTMD_next_position
/* 80429E64  98 7D 09 A8 */	stb r3, 0x9a8(r29)
/* 80429E68  38 00 00 00 */	li r0, 0
/* 80429E6C  B0 1D 09 9C */	sth r0, 0x99c(r29)
/* 80429E70  88 1D 09 A2 */	lbz r0, 0x9a2(r29)
/* 80429E74  2C 00 00 18 */	cmpwi r0, 0x18
/* 80429E78  41 82 00 70 */	beq lbl_80429EE8
/* 80429E7C  40 80 00 10 */	bge lbl_80429E8C
/* 80429E80  2C 00 00 0A */	cmpwi r0, 0xa
/* 80429E84  41 82 00 14 */	beq lbl_80429E98
/* 80429E88  48 00 00 84 */	b lbl_80429F0C
lbl_80429E8C:
/* 80429E8C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80429E90  41 82 00 30 */	beq lbl_80429EC0
/* 80429E94  48 00 00 78 */	b lbl_80429F0C
lbl_80429E98:
/* 80429E98  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80429E9C  38 80 00 10 */	li r4, 0x10
/* 80429EA0  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80429EA4  3C 63 FF FF */	addis r3, r3, 0xffff
/* 80429EA8  38 03 2F A8 */	addi r0, r3, 0x2fa8
/* 80429EAC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80429EB0  7C 80 00 30 */	slw r0, r4, r0
/* 80429EB4  7C A0 03 78 */	or r0, r5, r0
/* 80429EB8  B0 1F 00 04 */	sth r0, 4(r31)
/* 80429EBC  48 00 00 50 */	b lbl_80429F0C
lbl_80429EC0:
/* 80429EC0  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80429EC4  38 80 00 04 */	li r4, 4
/* 80429EC8  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80429ECC  3C 63 FF FF */	addis r3, r3, 0xffff
/* 80429ED0  38 03 2F A8 */	addi r0, r3, 0x2fa8
/* 80429ED4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80429ED8  7C 80 00 30 */	slw r0, r4, r0
/* 80429EDC  7C A0 03 78 */	or r0, r5, r0
/* 80429EE0  B0 1F 00 04 */	sth r0, 4(r31)
/* 80429EE4  48 00 00 28 */	b lbl_80429F0C
lbl_80429EE8:
/* 80429EE8  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80429EEC  38 80 00 01 */	li r4, 1
/* 80429EF0  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80429EF4  3C 63 FF FF */	addis r3, r3, 0xffff
/* 80429EF8  38 03 2F A8 */	addi r0, r3, 0x2fa8
/* 80429EFC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80429F00  7C 80 00 30 */	slw r0, r4, r0
/* 80429F04  7C A0 03 78 */	or r0, r5, r0
/* 80429F08  B0 1F 00 04 */	sth r0, 4(r31)
lbl_80429F0C:
/* 80429F0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80429F10  4B C7 10 11 */	bl func_8009AF20
/* 80429F14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80429F18  7C 08 03 A6 */	mtlr r0
/* 80429F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80429F20  4E 80 00 20 */	blr 
