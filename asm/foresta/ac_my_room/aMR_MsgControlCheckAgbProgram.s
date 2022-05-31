lbl_804759F8:
/* 804759F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804759FC  7C 08 02 A6 */	mflr r0
/* 80475A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475A08  7C 7F 1B 78 */	mr r31, r3
/* 80475A0C  4B BD 44 69 */	bl mGcgba_IsEditor
/* 80475A10  2C 03 FF FF */	cmpwi r3, -1
/* 80475A14  41 82 00 30 */	beq lbl_80475A44
/* 80475A18  41 80 00 34 */	blt lbl_80475A4C
/* 80475A1C  2C 03 00 02 */	cmpwi r3, 2
/* 80475A20  40 80 00 2C */	bge lbl_80475A4C
/* 80475A24  38 00 00 3E */	li r0, 0x3e
/* 80475A28  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475A2C  4B F4 9C 7D */	bl func_803BF6A8
/* 80475A30  38 80 3D D0 */	li r4, 0x3dd0
/* 80475A34  4B F4 A5 91 */	bl mMsg_Set_continue_msg_num
/* 80475A38  4B F4 9C 71 */	bl func_803BF6A8
/* 80475A3C  4B F4 B3 11 */	bl mMsg_Unset_LockContinue
/* 80475A40  48 00 00 0C */	b lbl_80475A4C
lbl_80475A44:
/* 80475A44  38 00 00 3F */	li r0, 0x3f
/* 80475A48  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_80475A4C:
/* 80475A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475A54  7C 08 03 A6 */	mtlr r0
/* 80475A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80475A5C  4E 80 00 20 */	blr 
