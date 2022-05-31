lbl_804F0D7C:
/* 804F0D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F0D80  7C 08 02 A6 */	mflr r0
/* 804F0D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F0D88  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0D8C  4B BA A1 49 */	bl func_8009AED4
/* 804F0D90  3C A0 80 64 */	lis r5, lit_3046@ha /* 0x80646E54@ha */
/* 804F0D94  7C 7D 1B 78 */	mr r29, r3
/* 804F0D98  C0 25 6E 54 */	lfs f1, lit_3046@l(r5)  /* 0x80646E54@l */
/* 804F0D9C  7C 9E 23 78 */	mr r30, r4
/* 804F0DA0  38 7D 01 74 */	addi r3, r29, 0x174
/* 804F0DA4  4B FE 68 5D */	bl Player_actor_Check_AnimationFrame
/* 804F0DA8  2C 03 00 00 */	cmpwi r3, 0
/* 804F0DAC  41 82 00 94 */	beq lbl_804F0E40
/* 804F0DB0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 804F0DB4  A3 FE 00 0C */	lhz r31, 0xc(r30)
/* 804F0DB8  28 03 00 00 */	cmplwi r3, 0
/* 804F0DBC  41 82 00 4C */	beq lbl_804F0E08
/* 804F0DC0  A8 03 00 00 */	lha r0, 0(r3)
/* 804F0DC4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804F0DC8  41 82 00 14 */	beq lbl_804F0DDC
/* 804F0DCC  40 80 00 30 */	bge lbl_804F0DFC
/* 804F0DD0  2C 00 00 09 */	cmpwi r0, 9
/* 804F0DD4  41 82 00 18 */	beq lbl_804F0DEC
/* 804F0DD8  48 00 00 24 */	b lbl_804F0DFC
lbl_804F0DDC:
/* 804F0DDC  A8 03 01 F8 */	lha r0, 0x1f8(r3)
/* 804F0DE0  60 00 00 02 */	ori r0, r0, 2
/* 804F0DE4  B0 03 01 F8 */	sth r0, 0x1f8(r3)
/* 804F0DE8  48 00 00 58 */	b lbl_804F0E40
lbl_804F0DEC:
/* 804F0DEC  A8 03 02 08 */	lha r0, 0x208(r3)
/* 804F0DF0  60 00 00 08 */	ori r0, r0, 8
/* 804F0DF4  B0 03 02 08 */	sth r0, 0x208(r3)
/* 804F0DF8  48 00 00 48 */	b lbl_804F0E40
lbl_804F0DFC:
/* 804F0DFC  4B FE D5 21 */	bl Player_actor_CheckAndSet_UZAI_forNpc
/* 804F0E00  2C 03 00 00 */	cmpwi r3, 0
/* 804F0E04  40 82 00 3C */	bne lbl_804F0E40
lbl_804F0E08:
/* 804F0E08  28 1F 00 6A */	cmplwi r31, 0x6a
/* 804F0E0C  38 00 00 00 */	li r0, 0
/* 804F0E10  41 80 00 0C */	blt lbl_804F0E1C
/* 804F0E14  28 1F 00 6E */	cmplwi r31, 0x6e
/* 804F0E18  40 81 00 0C */	ble lbl_804F0E24
lbl_804F0E1C:
/* 804F0E1C  28 1F 00 6F */	cmplwi r31, 0x6f
/* 804F0E20  40 82 00 08 */	bne lbl_804F0E28
lbl_804F0E24:
/* 804F0E24  38 00 00 01 */	li r0, 1
lbl_804F0E28:
/* 804F0E28  2C 00 00 00 */	cmpwi r0, 0
/* 804F0E2C  41 82 00 14 */	beq lbl_804F0E40
/* 804F0E30  7F A3 EB 78 */	mr r3, r29
/* 804F0E34  7F C4 F3 78 */	mr r4, r30
/* 804F0E38  4B FE 97 19 */	bl Player_actor_Search_STONE_TC
/* 804F0E3C  2C 03 00 00 */	cmpwi r3, 0
lbl_804F0E40:
/* 804F0E40  39 61 00 20 */	addi r11, r1, 0x20
/* 804F0E44  4B BA A0 DD */	bl func_8009AF20
/* 804F0E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F0E4C  7C 08 03 A6 */	mtlr r0
/* 804F0E50  38 21 00 20 */	addi r1, r1, 0x20
/* 804F0E54  4E 80 00 20 */	blr 
