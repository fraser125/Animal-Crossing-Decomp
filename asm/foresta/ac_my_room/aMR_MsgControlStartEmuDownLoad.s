lbl_80475B30:
/* 80475B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475B34  7C 08 02 A6 */	mflr r0
/* 80475B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475B40  7C 7F 1B 78 */	mr r31, r3
/* 80475B44  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80475B48  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80475B4C  4B BD 3D 69 */	bl mGcgba_Boot
/* 80475B50  2C 03 00 09 */	cmpwi r3, 9
/* 80475B54  41 82 00 90 */	beq lbl_80475BE4
/* 80475B58  40 80 00 50 */	bge lbl_80475BA8
/* 80475B5C  2C 03 00 01 */	cmpwi r3, 1
/* 80475B60  41 82 00 08 */	beq lbl_80475B68
/* 80475B64  48 00 00 44 */	b lbl_80475BA8
lbl_80475B68:
/* 80475B68  38 60 00 47 */	li r3, 0x47
/* 80475B6C  48 1B 83 B9 */	bl sAdo_SysLevStop
/* 80475B70  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80475B74  48 1B 7C 81 */	bl famicom_gba_removeImage
/* 80475B78  4B BD 3C 45 */	bl mGcgba_InitVar
/* 80475B7C  4B BD 3C 71 */	bl mGcgba_EndComm
/* 80475B80  38 00 00 3C */	li r0, 0x3c
/* 80475B84  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475B88  4B F4 9B 21 */	bl func_803BF6A8
/* 80475B8C  38 80 3D D3 */	li r4, 0x3dd3
/* 80475B90  4B F4 A4 35 */	bl mMsg_Set_continue_msg_num
/* 80475B94  4B F4 9B 15 */	bl func_803BF6A8
/* 80475B98  4B F4 B1 B5 */	bl mMsg_Unset_LockContinue
/* 80475B9C  4B F4 9B 0D */	bl func_803BF6A8
/* 80475BA0  4B F4 B1 89 */	bl mMsg_Set_ForceNext
/* 80475BA4  48 00 00 40 */	b lbl_80475BE4
lbl_80475BA8:
/* 80475BA8  38 60 00 47 */	li r3, 0x47
/* 80475BAC  48 1B 83 79 */	bl sAdo_SysLevStop
/* 80475BB0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80475BB4  48 1B 7C 41 */	bl famicom_gba_removeImage
/* 80475BB8  4B BD 3C 05 */	bl mGcgba_InitVar
/* 80475BBC  4B BD 3C 31 */	bl mGcgba_EndComm
/* 80475BC0  38 00 00 3C */	li r0, 0x3c
/* 80475BC4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475BC8  4B F4 9A E1 */	bl func_803BF6A8
/* 80475BCC  38 80 3D D4 */	li r4, 0x3dd4
/* 80475BD0  4B F4 A3 F5 */	bl mMsg_Set_continue_msg_num
/* 80475BD4  4B F4 9A D5 */	bl func_803BF6A8
/* 80475BD8  4B F4 B1 75 */	bl mMsg_Unset_LockContinue
/* 80475BDC  4B F4 9A CD */	bl func_803BF6A8
/* 80475BE0  4B F4 B1 49 */	bl mMsg_Set_ForceNext
lbl_80475BE4:
/* 80475BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475BEC  7C 08 03 A6 */	mtlr r0
/* 80475BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80475BF4  4E 80 00 20 */	blr 
