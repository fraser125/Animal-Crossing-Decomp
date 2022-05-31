lbl_8051C098:
/* 8051C098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C09C  7C 08 02 A6 */	mflr r0
/* 8051C0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C0A8  7C 9F 23 78 */	mr r31, r4
/* 8051C0AC  38 80 00 09 */	li r4, 9
/* 8051C0B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C0B4  7C 7E 1B 78 */	mr r30, r3
/* 8051C0B8  38 60 00 04 */	li r3, 4
/* 8051C0BC  4B E7 C3 C1 */	bl mDemo_Get_OrderValue
/* 8051C0C0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051C0C4  41 82 00 3C */	beq lbl_8051C100
/* 8051C0C8  4B EA 35 E1 */	bl func_803BF6A8
/* 8051C0CC  4B EA 4B CD */	bl mMsg_Check_MainNormalContinue
/* 8051C0D0  2C 03 00 01 */	cmpwi r3, 1
/* 8051C0D4  40 82 00 2C */	bne lbl_8051C100
/* 8051C0D8  38 60 00 04 */	li r3, 4
/* 8051C0DC  38 80 00 09 */	li r4, 9
/* 8051C0E0  38 A0 00 00 */	li r5, 0
/* 8051C0E4  4B E7 C3 55 */	bl mDemo_Set_OrderValue
/* 8051C0E8  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C0EC  7F C3 F3 78 */	mr r3, r30
/* 8051C0F0  7F E4 FB 78 */	mr r4, r31
/* 8051C0F4  38 A0 00 06 */	li r5, 6
/* 8051C0F8  7D 89 03 A6 */	mtctr r12
/* 8051C0FC  4E 80 04 21 */	bctrl 
lbl_8051C100:
/* 8051C100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C108  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C10C  7C 08 03 A6 */	mtlr r0
/* 8051C110  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C114  4E 80 00 20 */	blr 
