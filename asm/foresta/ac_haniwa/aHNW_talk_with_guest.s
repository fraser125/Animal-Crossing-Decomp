lbl_80428274:
/* 80428274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428278  7C 08 02 A6 */	mflr r0
/* 8042827C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80428280  39 61 00 20 */	addi r11, r1, 0x20
/* 80428284  4B C7 2C 4D */	bl func_8009AED0
/* 80428288  7C 7C 1B 78 */	mr r28, r3
/* 8042828C  7C 9D 23 78 */	mr r29, r4
/* 80428290  38 60 00 04 */	li r3, 4
/* 80428294  38 80 00 00 */	li r4, 0
/* 80428298  4B F7 01 E5 */	bl mDemo_Get_OrderValue
/* 8042829C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804282A0  41 82 00 A0 */	beq lbl_80428340
/* 804282A4  4B F9 74 05 */	bl func_803BF6A8
/* 804282A8  7C 7F 1B 78 */	mr r31, r3
/* 804282AC  4B F9 89 ED */	bl mMsg_Check_MainNormalContinue
/* 804282B0  2C 03 00 01 */	cmpwi r3, 1
/* 804282B4  40 82 00 8C */	bne lbl_80428340
/* 804282B8  3B C0 FF FF */	li r30, -1
/* 804282BC  4B F5 B2 85 */	bl func_80383540
/* 804282C0  4B F5 B8 AD */	bl mChoice_Get_ChoseNum
/* 804282C4  2C 03 00 01 */	cmpwi r3, 1
/* 804282C8  41 82 00 40 */	beq lbl_80428308
/* 804282CC  40 80 00 4C */	bge lbl_80428318
/* 804282D0  2C 03 00 00 */	cmpwi r3, 0
/* 804282D4  40 80 00 08 */	bge lbl_804282DC
/* 804282D8  48 00 00 40 */	b lbl_80428318
lbl_804282DC:
/* 804282DC  7F 83 E3 78 */	mr r3, r28
/* 804282E0  4B FF F5 E1 */	bl aHNW_check_keep_item
/* 804282E4  2C 03 00 00 */	cmpwi r3, 0
/* 804282E8  40 82 00 18 */	bne lbl_80428300
/* 804282EC  7F E3 FB 78 */	mr r3, r31
/* 804282F0  38 80 09 2C */	li r4, 0x92c
/* 804282F4  4B F9 7C D1 */	bl mMsg_Set_continue_msg_num
/* 804282F8  3B C0 00 05 */	li r30, 5
/* 804282FC  48 00 00 1C */	b lbl_80428318
lbl_80428300:
/* 80428300  3B C0 00 09 */	li r30, 9
/* 80428304  48 00 00 14 */	b lbl_80428318
lbl_80428308:
/* 80428308  7F E3 FB 78 */	mr r3, r31
/* 8042830C  38 80 09 2A */	li r4, 0x92a
/* 80428310  4B F9 7C B5 */	bl mMsg_Set_continue_msg_num
/* 80428314  3B C0 00 05 */	li r30, 5
lbl_80428318:
/* 80428318  2C 1E FF FF */	cmpwi r30, -1
/* 8042831C  41 82 00 24 */	beq lbl_80428340
/* 80428320  38 60 00 04 */	li r3, 4
/* 80428324  38 80 00 00 */	li r4, 0
/* 80428328  38 A0 00 00 */	li r5, 0
/* 8042832C  4B F7 01 0D */	bl mDemo_Set_OrderValue
/* 80428330  7F 83 E3 78 */	mr r3, r28
/* 80428334  7F A4 EB 78 */	mr r4, r29
/* 80428338  7F C5 F3 78 */	mr r5, r30
/* 8042833C  48 00 07 19 */	bl aHNW_setupAction
lbl_80428340:
/* 80428340  39 61 00 20 */	addi r11, r1, 0x20
/* 80428344  4B C7 2B D9 */	bl func_8009AF1C
/* 80428348  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042834C  7C 08 03 A6 */	mtlr r0
/* 80428350  38 21 00 20 */	addi r1, r1, 0x20
/* 80428354  4E 80 00 20 */	blr 
