lbl_80574BA0:
/* 80574BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574BA4  7C 08 02 A6 */	mflr r0
/* 80574BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80574BB4  7C 7E 1B 78 */	mr r30, r3
/* 80574BB8  4B E4 AA F1 */	bl func_803BF6A8
/* 80574BBC  7C 7F 1B 78 */	mr r31, r3
/* 80574BC0  4B E4 C0 D9 */	bl mMsg_Check_MainNormalContinue
/* 80574BC4  2C 03 00 01 */	cmpwi r3, 1
/* 80574BC8  40 82 00 8C */	bne lbl_80574C54
/* 80574BCC  4B E0 E9 75 */	bl func_80383540
/* 80574BD0  4B E0 EF 9D */	bl mChoice_Get_ChoseNum
/* 80574BD4  2C 03 00 01 */	cmpwi r3, 1
/* 80574BD8  41 82 00 48 */	beq lbl_80574C20
/* 80574BDC  40 80 00 78 */	bge lbl_80574C54
/* 80574BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80574BE4  40 80 00 08 */	bge lbl_80574BEC
/* 80574BE8  48 00 00 6C */	b lbl_80574C54
lbl_80574BEC:
/* 80574BEC  38 60 00 04 */	li r3, 4
/* 80574BF0  38 80 00 09 */	li r4, 9
/* 80574BF4  38 A0 00 00 */	li r5, 0
/* 80574BF8  4B E2 38 41 */	bl mDemo_Set_OrderValue
/* 80574BFC  7F E3 FB 78 */	mr r3, r31
/* 80574C00  4B E4 C1 41 */	bl mMsg_Set_LockContinue
/* 80574C04  4B AD 4B B9 */	bl mGcgba_InitVar
/* 80574C08  38 00 00 00 */	li r0, 0
/* 80574C0C  7F C3 F3 78 */	mr r3, r30
/* 80574C10  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80574C14  38 80 00 10 */	li r4, 0x10
/* 80574C18  48 00 13 55 */	bl aSEN_change_talk_proc
/* 80574C1C  48 00 00 38 */	b lbl_80574C54
lbl_80574C20:
/* 80574C20  38 60 00 04 */	li r3, 4
/* 80574C24  38 80 00 09 */	li r4, 9
/* 80574C28  38 A0 00 00 */	li r5, 0
/* 80574C2C  4B E2 38 0D */	bl mDemo_Set_OrderValue
/* 80574C30  7F C3 F3 78 */	mr r3, r30
/* 80574C34  38 80 30 74 */	li r4, 0x3074
/* 80574C38  4B FF FC 5D */	bl aSEN_get_msg_no
/* 80574C3C  7C 64 1B 78 */	mr r4, r3
/* 80574C40  7F E3 FB 78 */	mr r3, r31
/* 80574C44  4B E4 B3 81 */	bl mMsg_Set_continue_msg_num
/* 80574C48  7F C3 F3 78 */	mr r3, r30
/* 80574C4C  38 80 00 00 */	li r4, 0
/* 80574C50  48 00 13 1D */	bl aSEN_change_talk_proc
lbl_80574C54:
/* 80574C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574C5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80574C60  7C 08 03 A6 */	mtlr r0
/* 80574C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80574C68  4E 80 00 20 */	blr 
