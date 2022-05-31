lbl_804758E8:
/* 804758E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804758EC  7C 08 02 A6 */	mflr r0
/* 804758F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804758F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804758F8  7C 7F 1B 78 */	mr r31, r3
/* 804758FC  4B F4 9D AD */	bl func_803BF6A8
/* 80475900  4B F4 B3 99 */	bl mMsg_Check_MainNormalContinue
/* 80475904  2C 03 00 00 */	cmpwi r3, 0
/* 80475908  41 82 00 80 */	beq lbl_80475988
/* 8047590C  4B F4 9D 9D */	bl func_803BF6A8
/* 80475910  4B F4 A6 BD */	bl mMsg_Get_msg_num
/* 80475914  2C 03 3D CE */	cmpwi r3, 0x3dce
/* 80475918  40 82 00 70 */	bne lbl_80475988
/* 8047591C  4B F4 9D 8D */	bl func_803BF6A8
/* 80475920  4B F4 B4 21 */	bl mMsg_Set_LockContinue
/* 80475924  4B BD 3E D9 */	bl mGcgba_ConnectEnabled
/* 80475928  2C 03 00 09 */	cmpwi r3, 9
/* 8047592C  41 82 00 50 */	beq lbl_8047597C
/* 80475930  40 80 00 20 */	bge lbl_80475950
/* 80475934  2C 03 00 01 */	cmpwi r3, 1
/* 80475938  41 82 00 08 */	beq lbl_80475940
/* 8047593C  48 00 00 14 */	b lbl_80475950
lbl_80475940:
/* 80475940  4B BD 3E 7D */	bl mGcgba_InitVar
/* 80475944  38 00 00 3F */	li r0, 0x3f
/* 80475948  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047594C  48 00 00 30 */	b lbl_8047597C
lbl_80475950:
/* 80475950  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80475954  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80475958  40 81 00 24 */	ble lbl_8047597C
/* 8047595C  38 00 00 3C */	li r0, 0x3c
/* 80475960  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475964  4B F4 9D 45 */	bl func_803BF6A8
/* 80475968  38 80 3D CF */	li r4, 0x3dcf
/* 8047596C  4B F4 A6 59 */	bl mMsg_Set_continue_msg_num
/* 80475970  4B F4 9D 39 */	bl func_803BF6A8
/* 80475974  4B F4 B3 D9 */	bl mMsg_Unset_LockContinue
/* 80475978  4B BD 3E 75 */	bl mGcgba_EndComm
lbl_8047597C:
/* 8047597C  A8 7F 05 B8 */	lha r3, 0x5b8(r31)
/* 80475980  38 03 00 01 */	addi r0, r3, 1
/* 80475984  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
lbl_80475988:
/* 80475988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047598C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475990  7C 08 03 A6 */	mtlr r0
/* 80475994  38 21 00 10 */	addi r1, r1, 0x10
/* 80475998  4E 80 00 20 */	blr 
