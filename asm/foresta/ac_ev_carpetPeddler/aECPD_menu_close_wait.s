lbl_8051C174:
/* 8051C174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051C178  7C 08 02 A6 */	mflr r0
/* 8051C17C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051C180  39 61 00 20 */	addi r11, r1, 0x20
/* 8051C184  4B B7 ED 51 */	bl func_8009AED4
/* 8051C188  7C 7D 1B 78 */	mr r29, r3
/* 8051C18C  7C 9E 23 78 */	mr r30, r4
/* 8051C190  4B EA 35 19 */	bl func_803BF6A8
/* 8051C194  88 1E 1F 4E */	lbz r0, 0x1f4e(r30)
/* 8051C198  7C 7F 1B 78 */	mr r31, r3
/* 8051C19C  28 00 00 00 */	cmplwi r0, 0
/* 8051C1A0  40 82 00 68 */	bne lbl_8051C208
/* 8051C1A4  80 9E 1F 60 */	lwz r4, 0x1f60(r30)
/* 8051C1A8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8051C1AC  28 00 00 00 */	cmplwi r0, 0
/* 8051C1B0  40 82 00 38 */	bne lbl_8051C1E8
/* 8051C1B4  38 00 00 00 */	li r0, 0
/* 8051C1B8  38 80 04 90 */	li r4, 0x490
/* 8051C1BC  90 1D 09 AC */	stw r0, 0x9ac(r29)
/* 8051C1C0  4B EA 3E 05 */	bl mMsg_Set_continue_msg_num
/* 8051C1C4  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8051C1C8  7F A3 EB 78 */	mr r3, r29
/* 8051C1CC  7F C4 F3 78 */	mr r4, r30
/* 8051C1D0  38 A0 00 01 */	li r5, 1
/* 8051C1D4  7D 89 03 A6 */	mtctr r12
/* 8051C1D8  4E 80 04 21 */	bctrl 
/* 8051C1DC  7F E3 FB 78 */	mr r3, r31
/* 8051C1E0  4B EA 4B 6D */	bl mMsg_Unset_LockContinue
/* 8051C1E4  48 00 00 24 */	b lbl_8051C208
lbl_8051C1E8:
/* 8051C1E8  38 00 00 08 */	li r0, 8
/* 8051C1EC  7F A3 EB 78 */	mr r3, r29
/* 8051C1F0  90 1D 09 AC */	stw r0, 0x9ac(r29)
/* 8051C1F4  7F C4 F3 78 */	mr r4, r30
/* 8051C1F8  38 A0 00 02 */	li r5, 2
/* 8051C1FC  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8051C200  7D 89 03 A6 */	mtctr r12
/* 8051C204  4E 80 04 21 */	bctrl 
lbl_8051C208:
/* 8051C208  39 61 00 20 */	addi r11, r1, 0x20
/* 8051C20C  4B B7 ED 15 */	bl func_8009AF20
/* 8051C210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051C214  7C 08 03 A6 */	mtlr r0
/* 8051C218  38 21 00 20 */	addi r1, r1, 0x20
/* 8051C21C  4E 80 00 20 */	blr 
