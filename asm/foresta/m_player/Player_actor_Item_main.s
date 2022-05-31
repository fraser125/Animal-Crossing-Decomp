lbl_804E3CF8:
/* 804E3CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3CFC  7C 08 02 A6 */	mflr r0
/* 804E3D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E3D04  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3D08  4B BB 71 CD */	bl func_8009AED4
/* 804E3D0C  7C 7D 1B 78 */	mr r29, r3
/* 804E3D10  7C 9E 23 78 */	mr r30, r4
/* 804E3D14  83 E3 0D 04 */	lwz r31, 0xd04(r3)
/* 804E3D18  2C 1F 00 00 */	cmpwi r31, 0
/* 804E3D1C  41 80 00 54 */	blt lbl_804E3D70
/* 804E3D20  2C 1F 00 18 */	cmpwi r31, 0x18
/* 804E3D24  40 80 00 4C */	bge lbl_804E3D70
/* 804E3D28  4B FF CB 51 */	bl Player_actor_Item_main_other_func1
/* 804E3D2C  2C 1F 00 00 */	cmpwi r31, 0
/* 804E3D30  40 82 00 14 */	bne lbl_804E3D44
/* 804E3D34  7F A3 EB 78 */	mr r3, r29
/* 804E3D38  38 80 00 00 */	li r4, 0
/* 804E3D3C  4B FF D0 79 */	bl Player_actor_Item_Set_Command_forUki
/* 804E3D40  48 00 00 30 */	b lbl_804E3D70
lbl_804E3D44:
/* 804E3D44  3C 60 80 65 */	lis r3, proc_7009@ha /* 0x80648174@ha */
/* 804E3D48  57 E0 10 3A */	slwi r0, r31, 2
/* 804E3D4C  38 63 81 74 */	addi r3, r3, proc_7009@l /* 0x80648174@l */
/* 804E3D50  7D 83 00 2E */	lwzx r12, r3, r0
/* 804E3D54  28 0C 00 00 */	cmplwi r12, 0
/* 804E3D58  41 82 00 18 */	beq lbl_804E3D70
/* 804E3D5C  7F A3 EB 78 */	mr r3, r29
/* 804E3D60  7F C4 F3 78 */	mr r4, r30
/* 804E3D64  7D 89 03 A6 */	mtctr r12
/* 804E3D68  4E 80 04 21 */	bctrl 
/* 804E3D6C  48 00 00 08 */	b lbl_804E3D74
lbl_804E3D70:
/* 804E3D70  38 60 00 00 */	li r3, 0
lbl_804E3D74:
/* 804E3D74  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3D78  4B BB 71 A9 */	bl func_8009AF20
/* 804E3D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E3D80  7C 08 03 A6 */	mtlr r0
/* 804E3D84  38 21 00 20 */	addi r1, r1, 0x20
/* 804E3D88  4E 80 00 20 */	blr 
