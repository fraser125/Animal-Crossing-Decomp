lbl_8056D228:
/* 8056D228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056D22C  7C 08 02 A6 */	mflr r0
/* 8056D230  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056D234  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D238  4B B2 DC 99 */	bl func_8009AED0
/* 8056D23C  7C 7C 1B 78 */	mr r28, r3
/* 8056D240  7C 9D 23 78 */	mr r29, r4
/* 8056D244  4B E5 24 65 */	bl func_803BF6A8
/* 8056D248  88 9C 07 44 */	lbz r4, 0x744(r28)
/* 8056D24C  7C 7F 1B 78 */	mr r31, r3
/* 8056D250  3B C4 2D E0 */	addi r30, r4, 0x2de0
/* 8056D254  4B E5 2D 79 */	bl mMsg_Get_msg_num
/* 8056D258  7C 1E 18 00 */	cmpw r30, r3
/* 8056D25C  40 82 00 2C */	bne lbl_8056D288
/* 8056D260  7F E3 FB 78 */	mr r3, r31
/* 8056D264  4B E5 3A 35 */	bl mMsg_Check_MainNormalContinue
/* 8056D268  2C 03 00 01 */	cmpwi r3, 1
/* 8056D26C  40 82 00 1C */	bne lbl_8056D288
/* 8056D270  81 9C 09 A0 */	lwz r12, 0x9a0(r28)
/* 8056D274  7F 83 E3 78 */	mr r3, r28
/* 8056D278  7F A4 EB 78 */	mr r4, r29
/* 8056D27C  38 A0 00 19 */	li r5, 0x19
/* 8056D280  7D 89 03 A6 */	mtctr r12
/* 8056D284  4E 80 04 21 */	bctrl 
lbl_8056D288:
/* 8056D288  39 61 00 20 */	addi r11, r1, 0x20
/* 8056D28C  4B B2 DC 91 */	bl func_8009AF1C
/* 8056D290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056D294  7C 08 03 A6 */	mtlr r0
/* 8056D298  38 21 00 20 */	addi r1, r1, 0x20
/* 8056D29C  4E 80 00 20 */	blr 
