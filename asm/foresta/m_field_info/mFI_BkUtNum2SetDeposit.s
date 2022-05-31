lbl_803A8E54:
/* 803A8E54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8E58  7C 08 02 A6 */	mflr r0
/* 803A8E5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8E60  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8E64  4B CF 20 6D */	bl func_8009AED0
/* 803A8E68  7C BC 2B 78 */	mr r28, r5
/* 803A8E6C  7C DD 33 78 */	mr r29, r6
/* 803A8E70  7C FE 3B 78 */	mr r30, r7
/* 803A8E74  3B E0 00 00 */	li r31, 0
/* 803A8E78  4B FF FD B9 */	bl mFI_GetDepositP
/* 803A8E7C  28 03 00 00 */	cmplwi r3, 0
/* 803A8E80  41 82 00 18 */	beq lbl_803A8E98
/* 803A8E84  7F 84 E3 78 */	mr r4, r28
/* 803A8E88  7F A5 EB 78 */	mr r5, r29
/* 803A8E8C  7F C6 F3 78 */	mr r6, r30
/* 803A8E90  4B FF FF 0D */	bl mFI_SetDeposit
/* 803A8E94  7C 7F 1B 78 */	mr r31, r3
lbl_803A8E98:
/* 803A8E98  7F E3 FB 78 */	mr r3, r31
/* 803A8E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8EA0  4B CF 20 7D */	bl func_8009AF1C
/* 803A8EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8EA8  7C 08 03 A6 */	mtlr r0
/* 803A8EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8EB0  4E 80 00 20 */	blr 
