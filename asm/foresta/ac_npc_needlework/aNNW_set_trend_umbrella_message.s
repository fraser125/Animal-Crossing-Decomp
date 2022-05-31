lbl_80561E10:
/* 80561E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80561E14  7C 08 02 A6 */	mflr r0
/* 80561E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80561E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80561E20  4B B3 90 B1 */	bl func_8009AED0
/* 80561E24  4B E5 D8 85 */	bl func_803BF6A8
/* 80561E28  7C 7F 1B 78 */	mr r31, r3
/* 80561E2C  4B AF AE C9 */	bl fqrand
/* 80561E30  3C 60 80 65 */	lis r3, lit_808@ha /* 0x80649784@ha */
/* 80561E34  3B C0 00 00 */	li r30, 0
/* 80561E38  C0 03 97 84 */	lfs f0, lit_808@l(r3)  /* 0x80649784@l */
/* 80561E3C  3B 80 00 04 */	li r28, 4
/* 80561E40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80561E44  FC 00 00 1E */	fctiwz f0, f0
/* 80561E48  D8 01 00 08 */	stfd f0, 8(r1)
/* 80561E4C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80561E50  3B A3 00 04 */	addi r29, r3, 4
lbl_80561E54:
/* 80561E54  7F 83 E3 78 */	mr r3, r28
/* 80561E58  4B FF FC B5 */	bl aNNW_trend_check_umbrella
/* 80561E5C  7C 03 F0 00 */	cmpw r3, r30
/* 80561E60  40 81 00 0C */	ble lbl_80561E6C
/* 80561E64  7C 7E 1B 78 */	mr r30, r3
/* 80561E68  7F 9D E3 78 */	mr r29, r28
lbl_80561E6C:
/* 80561E6C  3B 9C 00 01 */	addi r28, r28, 1
/* 80561E70  2C 1C 00 08 */	cmpwi r28, 8
/* 80561E74  41 80 FF E0 */	blt lbl_80561E54
/* 80561E78  7F A3 EB 78 */	mr r3, r29
/* 80561E7C  38 80 00 01 */	li r4, 1
/* 80561E80  4B FF FE 19 */	bl aNNW_set_trend_set_string
/* 80561E84  2C 1E 00 00 */	cmpwi r30, 0
/* 80561E88  40 82 00 14 */	bne lbl_80561E9C
/* 80561E8C  7F E3 FB 78 */	mr r3, r31
/* 80561E90  38 80 2F E0 */	li r4, 0x2fe0
/* 80561E94  4B E5 E1 31 */	bl mMsg_Set_continue_msg_num
/* 80561E98  48 00 00 40 */	b lbl_80561ED8
lbl_80561E9C:
/* 80561E9C  2C 1E 00 01 */	cmpwi r30, 1
/* 80561EA0  40 82 00 14 */	bne lbl_80561EB4
/* 80561EA4  7F E3 FB 78 */	mr r3, r31
/* 80561EA8  38 80 2F DF */	li r4, 0x2fdf
/* 80561EAC  4B E5 E1 19 */	bl mMsg_Set_continue_msg_num
/* 80561EB0  48 00 00 28 */	b lbl_80561ED8
lbl_80561EB4:
/* 80561EB4  2C 1E 00 05 */	cmpwi r30, 5
/* 80561EB8  40 80 00 14 */	bge lbl_80561ECC
/* 80561EBC  7F E3 FB 78 */	mr r3, r31
/* 80561EC0  38 80 2F DE */	li r4, 0x2fde
/* 80561EC4  4B E5 E1 01 */	bl mMsg_Set_continue_msg_num
/* 80561EC8  48 00 00 10 */	b lbl_80561ED8
lbl_80561ECC:
/* 80561ECC  7F E3 FB 78 */	mr r3, r31
/* 80561ED0  38 80 2F DD */	li r4, 0x2fdd
/* 80561ED4  4B E5 E0 F1 */	bl mMsg_Set_continue_msg_num
lbl_80561ED8:
/* 80561ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80561EDC  4B B3 90 41 */	bl func_8009AF1C
/* 80561EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80561EE4  7C 08 03 A6 */	mtlr r0
/* 80561EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80561EEC  4E 80 00 20 */	blr 
