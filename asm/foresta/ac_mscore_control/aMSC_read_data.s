lbl_80515FB4:
/* 80515FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515FB8  7C 08 02 A6 */	mflr r0
/* 80515FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515FC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80515FC8  7C 7E 1B 78 */	mr r30, r3
/* 80515FCC  4B EA 96 DD */	bl func_803BF6A8
/* 80515FD0  7C 60 1B 78 */	mr r0, r3
/* 80515FD4  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 80515FD8  7C 1F 03 78 */	mr r31, r0
/* 80515FDC  38 80 00 10 */	li r4, 0x10
/* 80515FE0  38 A0 00 01 */	li r5, 1
/* 80515FE4  4B B3 43 CD */	bl mGcgba_Read
/* 80515FE8  2C 03 00 09 */	cmpwi r3, 9
/* 80515FEC  41 82 00 8C */	beq lbl_80516078
/* 80515FF0  40 80 00 54 */	bge lbl_80516044
/* 80515FF4  2C 03 00 01 */	cmpwi r3, 1
/* 80515FF8  41 82 00 08 */	beq lbl_80516000
/* 80515FFC  48 00 00 48 */	b lbl_80516044
lbl_80516000:
/* 80516000  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 80516004  4B EA 92 75 */	bl mMld_SetSaveMelody
/* 80516008  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 8051600C  4B EA 64 A9 */	bl zelda_free
/* 80516010  4B B3 37 DD */	bl mGcgba_EndComm
/* 80516014  38 60 00 47 */	li r3, 0x47
/* 80516018  48 11 7F 0D */	bl sAdo_SysLevStop
/* 8051601C  7F E3 FB 78 */	mr r3, r31
/* 80516020  4B EA AC F1 */	bl mMsg_Set_CancelNormalContinue
/* 80516024  7F E3 FB 78 */	mr r3, r31
/* 80516028  4B EA AD 25 */	bl mMsg_Unset_LockContinue
/* 8051602C  7F E3 FB 78 */	mr r3, r31
/* 80516030  4B EA AC F9 */	bl mMsg_Set_ForceNext
/* 80516034  7F C3 F3 78 */	mr r3, r30
/* 80516038  38 80 00 0B */	li r4, 0xb
/* 8051603C  48 00 02 AD */	bl aMSC_setupAction
/* 80516040  48 00 00 38 */	b lbl_80516078
lbl_80516044:
/* 80516044  4B B3 37 A9 */	bl mGcgba_EndComm
/* 80516048  38 60 00 47 */	li r3, 0x47
/* 8051604C  48 11 7E D9 */	bl sAdo_SysLevStop
/* 80516050  7F E3 FB 78 */	mr r3, r31
/* 80516054  38 80 3D DC */	li r4, 0x3ddc
/* 80516058  4B EA 9F 6D */	bl mMsg_Set_continue_msg_num
/* 8051605C  7F E3 FB 78 */	mr r3, r31
/* 80516060  4B EA AC ED */	bl mMsg_Unset_LockContinue
/* 80516064  7F E3 FB 78 */	mr r3, r31
/* 80516068  4B EA AC C1 */	bl mMsg_Set_ForceNext
/* 8051606C  7F C3 F3 78 */	mr r3, r30
/* 80516070  38 80 00 0C */	li r4, 0xc
/* 80516074  48 00 02 75 */	bl aMSC_setupAction
lbl_80516078:
/* 80516078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051607C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80516080  83 C1 00 08 */	lwz r30, 8(r1)
/* 80516084  7C 08 03 A6 */	mtlr r0
/* 80516088  38 21 00 10 */	addi r1, r1, 0x10
/* 8051608C  4E 80 00 20 */	blr 
