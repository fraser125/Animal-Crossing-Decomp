lbl_80475D68:
/* 80475D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475D6C  7C 08 02 A6 */	mflr r0
/* 80475D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475D78  93 C1 00 08 */	stw r30, 8(r1)
/* 80475D7C  7C 7E 1B 78 */	mr r30, r3
/* 80475D80  4B F0 D7 C1 */	bl func_80383540
/* 80475D84  4B F0 DD E9 */	bl mChoice_Get_ChoseNum
/* 80475D88  7C 7F 1B 78 */	mr r31, r3
/* 80475D8C  2C 1F FF FF */	cmpwi r31, -1
/* 80475D90  41 82 00 AC */	beq lbl_80475E3C
/* 80475D94  4B F0 D7 AD */	bl func_80383540
/* 80475D98  4B F0 E7 51 */	bl mChoice_no_b_close_set
/* 80475D9C  2C 1F 00 01 */	cmpwi r31, 1
/* 80475DA0  41 82 00 24 */	beq lbl_80475DC4
/* 80475DA4  40 80 00 74 */	bge lbl_80475E18
/* 80475DA8  2C 1F 00 00 */	cmpwi r31, 0
/* 80475DAC  40 80 00 08 */	bge lbl_80475DB4
/* 80475DB0  48 00 00 68 */	b lbl_80475E18
lbl_80475DB4:
/* 80475DB4  7F C3 F3 78 */	mr r3, r30
/* 80475DB8  38 80 00 01 */	li r4, 1
/* 80475DBC  4B FF E5 35 */	bl aMR_SetEmulatorStartMessage
/* 80475DC0  48 00 00 7C */	b lbl_80475E3C
lbl_80475DC4:
/* 80475DC4  80 1E 04 8C */	lwz r0, 0x48c(r30)
/* 80475DC8  2C 00 00 FF */	cmpwi r0, 0xff
/* 80475DCC  41 82 00 2C */	beq lbl_80475DF8
/* 80475DD0  38 00 00 3B */	li r0, 0x3b
/* 80475DD4  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475DD8  4B F4 98 D1 */	bl func_803BF6A8
/* 80475DDC  38 80 3D CE */	li r4, 0x3dce
/* 80475DE0  4B F4 A1 E5 */	bl mMsg_Set_continue_msg_num
/* 80475DE4  4B F4 98 C5 */	bl func_803BF6A8
/* 80475DE8  4B F4 AF 65 */	bl mMsg_Unset_LockContinue
/* 80475DEC  4B F4 98 BD */	bl func_803BF6A8
/* 80475DF0  4B F4 AF 39 */	bl mMsg_Set_ForceNext
/* 80475DF4  48 00 00 48 */	b lbl_80475E3C
lbl_80475DF8:
/* 80475DF8  38 00 00 3C */	li r0, 0x3c
/* 80475DFC  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475E00  4B F4 98 A9 */	bl func_803BF6A8
/* 80475E04  38 80 3B 57 */	li r4, 0x3b57
/* 80475E08  4B F4 A1 BD */	bl mMsg_Set_continue_msg_num
/* 80475E0C  4B F4 98 9D */	bl func_803BF6A8
/* 80475E10  4B F4 AF 19 */	bl mMsg_Set_ForceNext
/* 80475E14  48 00 00 28 */	b lbl_80475E3C
lbl_80475E18:
/* 80475E18  38 00 00 00 */	li r0, 0
/* 80475E1C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475E20  90 1E 04 84 */	stw r0, 0x484(r30)
/* 80475E24  4B F4 98 85 */	bl func_803BF6A8
/* 80475E28  4B F4 AE E9 */	bl mMsg_Set_CancelNormalContinue
/* 80475E2C  4B F4 98 7D */	bl func_803BF6A8
/* 80475E30  4B F4 AF 1D */	bl mMsg_Unset_LockContinue
/* 80475E34  4B F4 98 75 */	bl func_803BF6A8
/* 80475E38  4B F4 AE F1 */	bl mMsg_Set_ForceNext
lbl_80475E3C:
/* 80475E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475E44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80475E48  7C 08 03 A6 */	mtlr r0
/* 80475E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80475E50  4E 80 00 20 */	blr 
