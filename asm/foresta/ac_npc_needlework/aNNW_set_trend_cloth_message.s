lbl_80561D34:
/* 80561D34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80561D38  7C 08 02 A6 */	mflr r0
/* 80561D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80561D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80561D44  4B B3 91 8D */	bl func_8009AED0
/* 80561D48  4B E5 D9 61 */	bl func_803BF6A8
/* 80561D4C  7C 7F 1B 78 */	mr r31, r3
/* 80561D50  4B AF AF A5 */	bl fqrand
/* 80561D54  3C 60 80 65 */	lis r3, lit_808@ha /* 0x80649784@ha */
/* 80561D58  3B C0 00 00 */	li r30, 0
/* 80561D5C  C0 03 97 84 */	lfs f0, lit_808@l(r3)  /* 0x80649784@l */
/* 80561D60  3B 80 00 00 */	li r28, 0
/* 80561D64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80561D68  FC 00 00 1E */	fctiwz f0, f0
/* 80561D6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80561D70  83 A1 00 0C */	lwz r29, 0xc(r1)
lbl_80561D74:
/* 80561D74  7F 83 E3 78 */	mr r3, r28
/* 80561D78  4B FF FC 71 */	bl aNNW_trend_check_cloth
/* 80561D7C  7C 03 F0 00 */	cmpw r3, r30
/* 80561D80  40 81 00 0C */	ble lbl_80561D8C
/* 80561D84  7C 7E 1B 78 */	mr r30, r3
/* 80561D88  7F 9D E3 78 */	mr r29, r28
lbl_80561D8C:
/* 80561D8C  3B 9C 00 01 */	addi r28, r28, 1
/* 80561D90  2C 1C 00 04 */	cmpwi r28, 4
/* 80561D94  41 80 FF E0 */	blt lbl_80561D74
/* 80561D98  7F A3 EB 78 */	mr r3, r29
/* 80561D9C  38 80 00 00 */	li r4, 0
/* 80561DA0  4B FF FE F9 */	bl aNNW_set_trend_set_string
/* 80561DA4  2C 1E 00 00 */	cmpwi r30, 0
/* 80561DA8  40 82 00 14 */	bne lbl_80561DBC
/* 80561DAC  7F E3 FB 78 */	mr r3, r31
/* 80561DB0  38 80 2F DC */	li r4, 0x2fdc
/* 80561DB4  4B E5 E2 11 */	bl mMsg_Set_continue_msg_num
/* 80561DB8  48 00 00 40 */	b lbl_80561DF8
lbl_80561DBC:
/* 80561DBC  2C 1E 00 01 */	cmpwi r30, 1
/* 80561DC0  40 82 00 14 */	bne lbl_80561DD4
/* 80561DC4  7F E3 FB 78 */	mr r3, r31
/* 80561DC8  38 80 2F DB */	li r4, 0x2fdb
/* 80561DCC  4B E5 E1 F9 */	bl mMsg_Set_continue_msg_num
/* 80561DD0  48 00 00 28 */	b lbl_80561DF8
lbl_80561DD4:
/* 80561DD4  2C 1E 00 05 */	cmpwi r30, 5
/* 80561DD8  40 80 00 14 */	bge lbl_80561DEC
/* 80561DDC  7F E3 FB 78 */	mr r3, r31
/* 80561DE0  38 80 2F DA */	li r4, 0x2fda
/* 80561DE4  4B E5 E1 E1 */	bl mMsg_Set_continue_msg_num
/* 80561DE8  48 00 00 10 */	b lbl_80561DF8
lbl_80561DEC:
/* 80561DEC  7F E3 FB 78 */	mr r3, r31
/* 80561DF0  38 80 2F D9 */	li r4, 0x2fd9
/* 80561DF4  4B E5 E1 D1 */	bl mMsg_Set_continue_msg_num
lbl_80561DF8:
/* 80561DF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80561DFC  4B B3 91 21 */	bl func_8009AF1C
/* 80561E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80561E04  7C 08 03 A6 */	mtlr r0
/* 80561E08  38 21 00 20 */	addi r1, r1, 0x20
/* 80561E0C  4E 80 00 20 */	blr 
