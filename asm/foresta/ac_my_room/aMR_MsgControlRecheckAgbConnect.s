lbl_80475C2C:
/* 80475C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475C30  7C 08 02 A6 */	mflr r0
/* 80475C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475C3C  7C 7F 1B 78 */	mr r31, r3
/* 80475C40  4B F4 9A 69 */	bl func_803BF6A8
/* 80475C44  4B F4 B0 55 */	bl mMsg_Check_MainNormalContinue
/* 80475C48  2C 03 00 00 */	cmpwi r3, 0
/* 80475C4C  41 82 00 7C */	beq lbl_80475CC8
/* 80475C50  4B F4 9A 59 */	bl func_803BF6A8
/* 80475C54  4B F4 A3 79 */	bl mMsg_Get_msg_num
/* 80475C58  2C 03 3D D2 */	cmpwi r3, 0x3dd2
/* 80475C5C  40 82 00 6C */	bne lbl_80475CC8
/* 80475C60  4B F4 9A 49 */	bl func_803BF6A8
/* 80475C64  4B F4 B0 DD */	bl mMsg_Set_LockContinue
/* 80475C68  4B BD 3B 95 */	bl mGcgba_ConnectEnabled
/* 80475C6C  2C 03 00 09 */	cmpwi r3, 9
/* 80475C70  41 82 00 4C */	beq lbl_80475CBC
/* 80475C74  40 80 00 20 */	bge lbl_80475C94
/* 80475C78  2C 03 00 01 */	cmpwi r3, 1
/* 80475C7C  41 82 00 08 */	beq lbl_80475C84
/* 80475C80  48 00 00 14 */	b lbl_80475C94
lbl_80475C84:
/* 80475C84  4B BD 3B 39 */	bl mGcgba_InitVar
/* 80475C88  38 00 00 3F */	li r0, 0x3f
/* 80475C8C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475C90  48 00 00 2C */	b lbl_80475CBC
lbl_80475C94:
/* 80475C94  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80475C98  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80475C9C  40 81 00 20 */	ble lbl_80475CBC
/* 80475CA0  38 00 00 3C */	li r0, 0x3c
/* 80475CA4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475CA8  4B F4 9A 01 */	bl func_803BF6A8
/* 80475CAC  38 80 3D CF */	li r4, 0x3dcf
/* 80475CB0  4B F4 A3 15 */	bl mMsg_Set_continue_msg_num
/* 80475CB4  4B F4 99 F5 */	bl func_803BF6A8
/* 80475CB8  4B F4 B0 95 */	bl mMsg_Unset_LockContinue
lbl_80475CBC:
/* 80475CBC  A8 7F 05 B8 */	lha r3, 0x5b8(r31)
/* 80475CC0  38 03 00 01 */	addi r0, r3, 1
/* 80475CC4  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
lbl_80475CC8:
/* 80475CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475CD0  7C 08 03 A6 */	mtlr r0
/* 80475CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80475CD8  4E 80 00 20 */	blr 
