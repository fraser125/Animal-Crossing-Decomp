lbl_80563D70:
/* 80563D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563D74  7C 08 02 A6 */	mflr r0
/* 80563D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563D80  93 C1 00 08 */	stw r30, 8(r1)
/* 80563D84  7C 7E 1B 78 */	mr r30, r3
/* 80563D88  4B E5 B9 21 */	bl func_803BF6A8
/* 80563D8C  7C 60 1B 78 */	mr r0, r3
/* 80563D90  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80563D94  7C 1F 03 78 */	mr r31, r0
/* 80563D98  4B FF D8 C1 */	bl aNNW_RecvData_card_e
/* 80563D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80563DA0  41 82 00 6C */	beq lbl_80563E0C
/* 80563DA4  40 80 00 10 */	bge lbl_80563DB4
/* 80563DA8  2C 03 FF FF */	cmpwi r3, -1
/* 80563DAC  40 80 00 34 */	bge lbl_80563DE0
/* 80563DB0  48 00 00 5C */	b lbl_80563E0C
lbl_80563DB4:
/* 80563DB4  2C 03 00 02 */	cmpwi r3, 2
/* 80563DB8  40 80 00 54 */	bge lbl_80563E0C
/* 80563DBC  38 60 00 47 */	li r3, 0x47
/* 80563DC0  48 0C A1 65 */	bl sAdo_SysLevStop
/* 80563DC4  7F E3 FB 78 */	mr r3, r31
/* 80563DC8  4B E5 BC 7D */	bl mMsg_request_main_disappear_wait_type1
/* 80563DCC  7F C3 F3 78 */	mr r3, r30
/* 80563DD0  38 80 00 46 */	li r4, 0x46
/* 80563DD4  48 00 06 B5 */	bl aNNW_change_talk_proc
/* 80563DD8  4B AE 5A 15 */	bl mGcgba_EndComm
/* 80563DDC  48 00 00 30 */	b lbl_80563E0C
lbl_80563DE0:
/* 80563DE0  38 60 00 47 */	li r3, 0x47
/* 80563DE4  48 0C A1 41 */	bl sAdo_SysLevStop
/* 80563DE8  7F E3 FB 78 */	mr r3, r31
/* 80563DEC  4B E5 CF 61 */	bl mMsg_Unset_LockContinue
/* 80563DF0  7F E3 FB 78 */	mr r3, r31
/* 80563DF4  38 80 30 02 */	li r4, 0x3002
/* 80563DF8  4B E5 C1 CD */	bl mMsg_Set_continue_msg_num
/* 80563DFC  7F C3 F3 78 */	mr r3, r30
/* 80563E00  38 80 00 01 */	li r4, 1
/* 80563E04  48 00 06 85 */	bl aNNW_change_talk_proc
/* 80563E08  4B AE 59 E5 */	bl mGcgba_EndComm
lbl_80563E0C:
/* 80563E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563E18  7C 08 03 A6 */	mtlr r0
/* 80563E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80563E20  4E 80 00 20 */	blr 
