lbl_8051C118:
/* 8051C118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C11C  7C 08 02 A6 */	mflr r0
/* 8051C120  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C128  7C 9F 23 78 */	mr r31, r4
/* 8051C12C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C130  7C 7E 1B 78 */	mr r30, r3
/* 8051C134  4B EA 35 75 */	bl func_803BF6A8
/* 8051C138  4B EA 36 09 */	bl mMsg_Check_main_wait
/* 8051C13C  2C 03 00 01 */	cmpwi r3, 1
/* 8051C140  40 82 00 1C */	bne lbl_8051C15C
/* 8051C144  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C148  7F C3 F3 78 */	mr r3, r30
/* 8051C14C  7F E4 FB 78 */	mr r4, r31
/* 8051C150  38 A0 00 07 */	li r5, 7
/* 8051C154  7D 89 03 A6 */	mtctr r12
/* 8051C158  4E 80 04 21 */	bctrl 
lbl_8051C15C:
/* 8051C15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C164  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C168  7C 08 03 A6 */	mtlr r0
/* 8051C16C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C170  4E 80 00 20 */	blr 
