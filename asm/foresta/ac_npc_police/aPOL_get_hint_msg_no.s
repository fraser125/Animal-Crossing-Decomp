lbl_8056AC74:
/* 8056AC74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056AC78  7C 08 02 A6 */	mflr r0
/* 8056AC7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056AC80  39 61 00 20 */	addi r11, r1, 0x20
/* 8056AC84  4B B3 02 51 */	bl func_8009AED4
/* 8056AC88  3C 60 80 6C */	lis r3, data_806BE748@ha /* 0x806BE748@ha */
/* 8056AC8C  3B A0 2C 2D */	li r29, 0x2c2d
/* 8056AC90  3B C3 E7 48 */	addi r30, r3, data_806BE748@l /* 0x806BE748@l */
/* 8056AC94  4B E2 FF A1 */	bl mEv_CheckFirstJob
/* 8056AC98  2C 03 00 00 */	cmpwi r3, 0
/* 8056AC9C  40 82 00 B4 */	bne lbl_8056AD50
/* 8056ACA0  4B E3 3F 81 */	bl mEv_get_special_event_state
/* 8056ACA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8056ACA8  41 82 00 14 */	beq lbl_8056ACBC
/* 8056ACAC  41 80 00 A0 */	blt lbl_8056AD4C
/* 8056ACB0  2C 1F 00 04 */	cmpwi r31, 4
/* 8056ACB4  40 80 00 98 */	bge lbl_8056AD4C
/* 8056ACB8  48 00 00 0C */	b lbl_8056ACC4
lbl_8056ACBC:
/* 8056ACBC  3B A0 2C 37 */	li r29, 0x2c37
/* 8056ACC0  48 00 00 90 */	b lbl_8056AD50
lbl_8056ACC4:
/* 8056ACC4  4B E3 13 D1 */	bl mEv_get_special_event_type
/* 8056ACC8  54 63 04 3F */	clrlwi. r3, r3, 0x10
/* 8056ACCC  41 82 00 84 */	beq lbl_8056AD50
/* 8056ACD0  2C 1F 00 03 */	cmpwi r31, 3
/* 8056ACD4  3B A3 FF B6 */	addi r29, r3, -74
/* 8056ACD8  41 82 00 14 */	beq lbl_8056ACEC
/* 8056ACDC  40 80 00 5C */	bge lbl_8056AD38
/* 8056ACE0  2C 1F 00 02 */	cmpwi r31, 2
/* 8056ACE4  40 80 00 44 */	bge lbl_8056AD28
/* 8056ACE8  48 00 00 50 */	b lbl_8056AD38
lbl_8056ACEC:
/* 8056ACEC  2C 03 00 4E */	cmpwi r3, 0x4e
/* 8056ACF0  40 82 00 14 */	bne lbl_8056AD04
/* 8056ACF4  57 A0 10 3A */	slwi r0, r29, 2
/* 8056ACF8  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 8056ACFC  7F A3 00 2E */	lwzx r29, r3, r0
/* 8056AD00  48 00 00 50 */	b lbl_8056AD50
lbl_8056AD04:
/* 8056AD04  4B FF FE 55 */	bl aPOL_set_npc_block_no_str
/* 8056AD08  2C 03 00 01 */	cmpwi r3, 1
/* 8056AD0C  40 82 00 14 */	bne lbl_8056AD20
/* 8056AD10  57 A0 10 3A */	slwi r0, r29, 2
/* 8056AD14  38 7E 00 C0 */	addi r3, r30, 0xc0
/* 8056AD18  7F A3 00 2E */	lwzx r29, r3, r0
/* 8056AD1C  48 00 00 34 */	b lbl_8056AD50
lbl_8056AD20:
/* 8056AD20  3B A0 2C 37 */	li r29, 0x2c37
/* 8056AD24  48 00 00 2C */	b lbl_8056AD50
lbl_8056AD28:
/* 8056AD28  57 A0 10 3A */	slwi r0, r29, 2
/* 8056AD2C  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8056AD30  7F A3 00 2E */	lwzx r29, r3, r0
/* 8056AD34  48 00 00 1C */	b lbl_8056AD50
lbl_8056AD38:
/* 8056AD38  4B FF FE BD */	bl aPOL_set_event_day_str
/* 8056AD3C  57 A0 10 3A */	slwi r0, r29, 2
/* 8056AD40  38 7E 00 F0 */	addi r3, r30, 0xf0
/* 8056AD44  7F A3 00 2E */	lwzx r29, r3, r0
/* 8056AD48  48 00 00 08 */	b lbl_8056AD50
lbl_8056AD4C:
/* 8056AD4C  3B A0 2C 37 */	li r29, 0x2c37
lbl_8056AD50:
/* 8056AD50  7F A3 EB 78 */	mr r3, r29
/* 8056AD54  39 61 00 20 */	addi r11, r1, 0x20
/* 8056AD58  4B B3 01 C9 */	bl func_8009AF20
/* 8056AD5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056AD60  7C 08 03 A6 */	mtlr r0
/* 8056AD64  38 21 00 20 */	addi r1, r1, 0x20
/* 8056AD68  4E 80 00 20 */	blr 
