lbl_80563CBC:
/* 80563CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563CC0  7C 08 02 A6 */	mflr r0
/* 80563CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563CCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80563CD0  7C 7E 1B 78 */	mr r30, r3
/* 80563CD4  4B E5 B9 D5 */	bl func_803BF6A8
/* 80563CD8  7C 60 1B 78 */	mr r0, r3
/* 80563CDC  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80563CE0  7C 1F 03 78 */	mr r31, r0
/* 80563CE4  4B FF D5 E1 */	bl aNNW_check_GBA
/* 80563CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80563CEC  41 82 00 6C */	beq lbl_80563D58
/* 80563CF0  40 80 00 10 */	bge lbl_80563D00
/* 80563CF4  2C 03 FF FF */	cmpwi r3, -1
/* 80563CF8  40 80 00 1C */	bge lbl_80563D14
/* 80563CFC  48 00 00 5C */	b lbl_80563D58
lbl_80563D00:
/* 80563D00  2C 03 00 02 */	cmpwi r3, 2
/* 80563D04  40 80 00 54 */	bge lbl_80563D58
/* 80563D08  7F C3 F3 78 */	mr r3, r30
/* 80563D0C  48 00 07 91 */	bl aNNW_change_talk_proc_next
/* 80563D10  48 00 00 48 */	b lbl_80563D58
lbl_80563D14:
/* 80563D14  88 7E 09 BD */	lbz r3, 0x9bd(r30)
/* 80563D18  28 03 00 05 */	cmplwi r3, 5
/* 80563D1C  40 80 00 10 */	bge lbl_80563D2C
/* 80563D20  38 03 00 01 */	addi r0, r3, 1
/* 80563D24  98 1E 09 BD */	stb r0, 0x9bd(r30)
/* 80563D28  48 00 00 30 */	b lbl_80563D58
lbl_80563D2C:
/* 80563D2C  38 60 00 47 */	li r3, 0x47
/* 80563D30  48 0C A1 F5 */	bl sAdo_SysLevStop
/* 80563D34  7F E3 FB 78 */	mr r3, r31
/* 80563D38  4B E5 D0 15 */	bl mMsg_Unset_LockContinue
/* 80563D3C  7F E3 FB 78 */	mr r3, r31
/* 80563D40  38 80 30 08 */	li r4, 0x3008
/* 80563D44  4B E5 C2 81 */	bl mMsg_Set_continue_msg_num
/* 80563D48  7F C3 F3 78 */	mr r3, r30
/* 80563D4C  38 80 00 01 */	li r4, 1
/* 80563D50  48 00 07 39 */	bl aNNW_change_talk_proc
/* 80563D54  4B AE 5A 99 */	bl mGcgba_EndComm
lbl_80563D58:
/* 80563D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563D60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563D64  7C 08 03 A6 */	mtlr r0
/* 80563D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80563D6C  4E 80 00 20 */	blr 
