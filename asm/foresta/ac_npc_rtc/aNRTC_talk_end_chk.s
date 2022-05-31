lbl_80573F0C:
/* 80573F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80573F10  7C 08 02 A6 */	mflr r0
/* 80573F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80573F18  39 61 00 20 */	addi r11, r1, 0x20
/* 80573F1C  4B B2 6F B5 */	bl func_8009AED0
/* 80573F20  7C 7F 1B 78 */	mr r31, r3
/* 80573F24  3B A0 00 00 */	li r29, 0
/* 80573F28  7C 9E 23 78 */	mr r30, r4
/* 80573F2C  4B E4 B7 7D */	bl func_803BF6A8
/* 80573F30  81 9F 09 9C */	lwz r12, 0x99c(r31)
/* 80573F34  7C 7C 1B 78 */	mr r28, r3
/* 80573F38  7F E3 FB 78 */	mr r3, r31
/* 80573F3C  7F C4 F3 78 */	mr r4, r30
/* 80573F40  7D 89 03 A6 */	mtctr r12
/* 80573F44  4E 80 04 21 */	bctrl 
/* 80573F48  7F 83 E3 78 */	mr r3, r28
/* 80573F4C  4B E4 CE 1D */	bl mMsg_Check_idling_now
/* 80573F50  2C 03 00 01 */	cmpwi r3, 1
/* 80573F54  40 82 00 44 */	bne lbl_80573F98
/* 80573F58  7F 83 E3 78 */	mr r3, r28
/* 80573F5C  4B E4 BA E9 */	bl mMsg_request_main_disappear_wait_type1
/* 80573F60  7F E3 FB 78 */	mr r3, r31
/* 80573F64  7F C4 F3 78 */	mr r4, r30
/* 80573F68  4B FF F6 19 */	bl aNRTC_think_init_proc
/* 80573F6C  38 00 00 00 */	li r0, 0
/* 80573F70  38 80 00 32 */	li r4, 0x32
/* 80573F74  90 1F 09 A0 */	stw r0, 0x9a0(r31)
/* 80573F78  38 00 00 4B */	li r0, 0x4b
/* 80573F7C  38 7E 23 FC */	addi r3, r30, 0x23fc
/* 80573F80  3B A0 00 01 */	li r29, 1
/* 80573F84  90 9F 09 B4 */	stw r4, 0x9b4(r31)
/* 80573F88  38 80 00 04 */	li r4, 4
/* 80573F8C  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 80573F90  4B AE 90 D9 */	bl bzero
/* 80573F94  48 00 00 9C */	b lbl_80574030
lbl_80573F98:
/* 80573F98  83 9F 09 AC */	lwz r28, 0x9ac(r31)
/* 80573F9C  4B E4 B7 0D */	bl func_803BF6A8
/* 80573FA0  4B E4 CD 39 */	bl mMsg_Check_MainNormal
/* 80573FA4  2C 03 00 01 */	cmpwi r3, 1
/* 80573FA8  41 82 00 14 */	beq lbl_80573FBC
/* 80573FAC  4B E0 F5 95 */	bl func_80383540
/* 80573FB0  4B E0 F6 CD */	bl mChoice_check_main_normal
/* 80573FB4  2C 03 00 01 */	cmpwi r3, 1
/* 80573FB8  40 82 00 18 */	bne lbl_80573FD0
lbl_80573FBC:
/* 80573FBC  3B 9C 00 01 */	addi r28, r28, 1
/* 80573FC0  2C 1C 02 58 */	cmpwi r28, 0x258
/* 80573FC4  40 81 00 10 */	ble lbl_80573FD4
/* 80573FC8  3B 80 02 58 */	li r28, 0x258
/* 80573FCC  48 00 00 08 */	b lbl_80573FD4
lbl_80573FD0:
/* 80573FD0  3B 80 00 00 */	li r28, 0
lbl_80573FD4:
/* 80573FD4  38 60 00 04 */	li r3, 4
/* 80573FD8  38 80 00 00 */	li r4, 0
/* 80573FDC  4B E2 44 A1 */	bl mDemo_Get_OrderValue
/* 80573FE0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80573FE4  40 82 00 48 */	bne lbl_8057402C
/* 80573FE8  2C 1C 02 58 */	cmpwi r28, 0x258
/* 80573FEC  41 80 00 24 */	blt lbl_80574010
/* 80573FF0  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80573FF4  2C 00 00 76 */	cmpwi r0, 0x76
/* 80573FF8  41 82 00 34 */	beq lbl_8057402C
/* 80573FFC  38 60 00 04 */	li r3, 4
/* 80574000  38 80 00 00 */	li r4, 0
/* 80574004  38 A0 00 FF */	li r5, 0xff
/* 80574008  4B E2 44 31 */	bl mDemo_Set_OrderValue
/* 8057400C  48 00 00 20 */	b lbl_8057402C
lbl_80574010:
/* 80574010  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80574014  2C 00 00 76 */	cmpwi r0, 0x76
/* 80574018  40 82 00 14 */	bne lbl_8057402C
/* 8057401C  38 60 00 04 */	li r3, 4
/* 80574020  38 80 00 00 */	li r4, 0
/* 80574024  38 A0 00 FD */	li r5, 0xfd
/* 80574028  4B E2 44 11 */	bl mDemo_Set_OrderValue
lbl_8057402C:
/* 8057402C  93 9F 09 AC */	stw r28, 0x9ac(r31)
lbl_80574030:
/* 80574030  7F A3 EB 78 */	mr r3, r29
/* 80574034  39 61 00 20 */	addi r11, r1, 0x20
/* 80574038  4B B2 6E E5 */	bl func_8009AF1C
/* 8057403C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80574040  7C 08 03 A6 */	mtlr r0
/* 80574044  38 21 00 20 */	addi r1, r1, 0x20
/* 80574048  4E 80 00 20 */	blr 
