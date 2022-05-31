lbl_80428358:
/* 80428358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042835C  7C 08 02 A6 */	mflr r0
/* 80428360  90 01 00 24 */	stw r0, 0x24(r1)
/* 80428364  39 61 00 20 */	addi r11, r1, 0x20
/* 80428368  4B C7 2B 6D */	bl func_8009AED4
/* 8042836C  7C 7D 1B 78 */	mr r29, r3
/* 80428370  7C 9E 23 78 */	mr r30, r4
/* 80428374  4B F9 73 35 */	bl func_803BF6A8
/* 80428378  7C 7F 1B 78 */	mr r31, r3
/* 8042837C  4B F9 73 C5 */	bl mMsg_Check_main_wait
/* 80428380  2C 03 00 01 */	cmpwi r3, 1
/* 80428384  40 82 00 34 */	bne lbl_804283B8
/* 80428388  88 DD 02 83 */	lbz r6, 0x283(r29)
/* 8042838C  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 80428390  38 80 00 01 */	li r4, 1
/* 80428394  38 A0 00 03 */	li r5, 3
/* 80428398  4B FC 73 45 */	bl mSM_open_submenu
/* 8042839C  7F E3 FB 78 */	mr r3, r31
/* 804283A0  38 80 09 2B */	li r4, 0x92b
/* 804283A4  4B F9 85 F5 */	bl mMsg_ChangeMsgData
/* 804283A8  7F A3 EB 78 */	mr r3, r29
/* 804283AC  7F C4 F3 78 */	mr r4, r30
/* 804283B0  38 A0 00 0A */	li r5, 0xa
/* 804283B4  48 00 06 A1 */	bl aHNW_setupAction
lbl_804283B8:
/* 804283B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804283BC  4B C7 2B 65 */	bl func_8009AF20
/* 804283C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804283C4  7C 08 03 A6 */	mtlr r0
/* 804283C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804283CC  4E 80 00 20 */	blr 
