lbl_80476808:
/* 80476808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047680C  7C 08 02 A6 */	mflr r0
/* 80476810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476818  7C 7F 1B 78 */	mr r31, r3
/* 8047681C  4B F4 8E 8D */	bl func_803BF6A8
/* 80476820  4B F4 A4 DD */	bl mMsg_Check_MainDisappear
/* 80476824  2C 03 00 00 */	cmpwi r3, 0
/* 80476828  41 82 00 24 */	beq lbl_8047684C
/* 8047682C  38 00 00 00 */	li r0, 0
/* 80476830  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476834  4B F4 8E 75 */	bl func_803BF6A8
/* 80476838  4B F4 A4 D9 */	bl mMsg_Set_CancelNormalContinue
/* 8047683C  4B F4 8E 6D */	bl func_803BF6A8
/* 80476840  4B F4 A5 0D */	bl mMsg_Unset_LockContinue
/* 80476844  38 00 00 00 */	li r0, 0
/* 80476848  90 1F 04 F8 */	stw r0, 0x4f8(r31)
lbl_8047684C:
/* 8047684C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476854  7C 08 03 A6 */	mtlr r0
/* 80476858  38 21 00 10 */	addi r1, r1, 0x10
/* 8047685C  4E 80 00 20 */	blr 
