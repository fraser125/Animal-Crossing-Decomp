lbl_804759A0:
/* 804759A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804759A4  7C 08 02 A6 */	mflr r0
/* 804759A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804759AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804759B0  7C 7F 1B 78 */	mr r31, r3
/* 804759B4  4B F4 9C F5 */	bl func_803BF6A8
/* 804759B8  4B F4 B3 45 */	bl mMsg_Check_MainDisappear
/* 804759BC  2C 03 00 00 */	cmpwi r3, 0
/* 804759C0  40 82 00 14 */	bne lbl_804759D4
/* 804759C4  4B F4 9C E5 */	bl func_803BF6A8
/* 804759C8  4B F4 B3 25 */	bl mMsg_Check_MainHide
/* 804759CC  2C 03 00 00 */	cmpwi r3, 0
/* 804759D0  41 82 00 10 */	beq lbl_804759E0
lbl_804759D4:
/* 804759D4  38 00 00 00 */	li r0, 0
/* 804759D8  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804759DC  90 1F 04 84 */	stw r0, 0x484(r31)
lbl_804759E0:
/* 804759E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804759E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804759E8  7C 08 03 A6 */	mtlr r0
/* 804759EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804759F0  4E 80 00 20 */	blr 
