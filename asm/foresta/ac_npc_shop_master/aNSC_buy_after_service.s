lbl_8057A3A8:
/* 8057A3A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057A3AC  7C 08 02 A6 */	mflr r0
/* 8057A3B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057A3B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A3B8  4B B2 0B 1D */	bl func_8009AED4
/* 8057A3BC  7C 7D 1B 78 */	mr r29, r3
/* 8057A3C0  7C 9E 23 78 */	mr r30, r4
/* 8057A3C4  38 60 00 04 */	li r3, 4
/* 8057A3C8  38 80 00 09 */	li r4, 9
/* 8057A3CC  4B E1 E0 B1 */	bl mDemo_Get_OrderValue
/* 8057A3D0  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8057A3D4  4B E4 52 D5 */	bl func_803BF6A8
/* 8057A3D8  2C 1F 00 00 */	cmpwi r31, 0
/* 8057A3DC  41 82 00 30 */	beq lbl_8057A40C
/* 8057A3E0  4B E4 68 B9 */	bl mMsg_Check_MainNormalContinue
/* 8057A3E4  2C 03 00 01 */	cmpwi r3, 1
/* 8057A3E8  40 82 00 24 */	bne lbl_8057A40C
/* 8057A3EC  38 60 00 04 */	li r3, 4
/* 8057A3F0  38 80 00 09 */	li r4, 9
/* 8057A3F4  38 A0 00 00 */	li r5, 0
/* 8057A3F8  4B E1 E0 41 */	bl mDemo_Set_OrderValue
/* 8057A3FC  7F A3 EB 78 */	mr r3, r29
/* 8057A400  7F C4 F3 78 */	mr r4, r30
/* 8057A404  38 A0 00 17 */	li r5, 0x17
/* 8057A408  48 00 20 AD */	bl aNSC_setupAction
lbl_8057A40C:
/* 8057A40C  39 61 00 20 */	addi r11, r1, 0x20
/* 8057A410  4B B2 0B 11 */	bl func_8009AF20
/* 8057A414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057A418  7C 08 03 A6 */	mtlr r0
/* 8057A41C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057A420  4E 80 00 20 */	blr 
