lbl_8055DF14:
/* 8055DF14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DF18  7C 08 02 A6 */	mflr r0
/* 8055DF1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DF20  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DF24  4B B3 CF A9 */	bl func_8009AECC
/* 8055DF28  7C 7B 1B 78 */	mr r27, r3
/* 8055DF2C  7C 9C 23 78 */	mr r28, r4
/* 8055DF30  4B E6 17 79 */	bl func_803BF6A8
/* 8055DF34  7C 60 1B 78 */	mr r0, r3
/* 8055DF38  38 60 01 39 */	li r3, 0x139
/* 8055DF3C  7C 1D 03 78 */	mr r29, r0
/* 8055DF40  4B FF D6 9D */	bl aNSC_get_msg_no
/* 8055DF44  7C 7E 1B 78 */	mr r30, r3
/* 8055DF48  38 60 01 44 */	li r3, 0x144
/* 8055DF4C  4B FF D6 91 */	bl aNSC_get_msg_no
/* 8055DF50  7C 7F 1B 78 */	mr r31, r3
/* 8055DF54  7F A3 EB 78 */	mr r3, r29
/* 8055DF58  4B E6 20 75 */	bl mMsg_Get_msg_num
/* 8055DF5C  7C 03 F0 00 */	cmpw r3, r30
/* 8055DF60  41 82 00 0C */	beq lbl_8055DF6C
/* 8055DF64  7C 03 F8 00 */	cmpw r3, r31
/* 8055DF68  40 82 00 88 */	bne lbl_8055DFF0
lbl_8055DF6C:
/* 8055DF6C  7F A3 EB 78 */	mr r3, r29
/* 8055DF70  4B E6 2D 29 */	bl mMsg_Check_MainNormalContinue
/* 8055DF74  2C 03 00 00 */	cmpwi r3, 0
/* 8055DF78  41 82 00 78 */	beq lbl_8055DFF0
/* 8055DF7C  3B C0 FF FF */	li r30, -1
/* 8055DF80  4B E2 55 C1 */	bl func_80383540
/* 8055DF84  4B E2 5B E9 */	bl mChoice_Get_ChoseNum
/* 8055DF88  2C 03 00 01 */	cmpwi r3, 1
/* 8055DF8C  41 82 00 1C */	beq lbl_8055DFA8
/* 8055DF90  40 80 00 34 */	bge lbl_8055DFC4
/* 8055DF94  2C 03 00 00 */	cmpwi r3, 0
/* 8055DF98  40 80 00 08 */	bge lbl_8055DFA0
/* 8055DF9C  48 00 00 28 */	b lbl_8055DFC4
lbl_8055DFA0:
/* 8055DFA0  3B C0 00 00 */	li r30, 0
/* 8055DFA4  48 00 00 20 */	b lbl_8055DFC4
lbl_8055DFA8:
/* 8055DFA8  3B C0 00 01 */	li r30, 1
/* 8055DFAC  38 60 01 3A */	li r3, 0x13a
/* 8055DFB0  4B FF D6 2D */	bl aNSC_get_msg_no
/* 8055DFB4  7C 65 1B 78 */	mr r5, r3
/* 8055DFB8  7F A3 EB 78 */	mr r3, r29
/* 8055DFBC  7F 64 DB 78 */	mr r4, r27
/* 8055DFC0  4B FF D6 95 */	bl aNSC_ChangeMsgData
lbl_8055DFC4:
/* 8055DFC4  2C 1E FF FF */	cmpwi r30, -1
/* 8055DFC8  41 82 00 28 */	beq lbl_8055DFF0
/* 8055DFCC  7F A3 EB 78 */	mr r3, r29
/* 8055DFD0  4B E6 2D 59 */	bl mMsg_Set_ForceNext
/* 8055DFD4  3C 60 80 6B */	lis r3, next_act_idx_1747@ha /* 0x806AA00C@ha */
/* 8055DFD8  57 C0 10 3A */	slwi r0, r30, 2
/* 8055DFDC  38 83 A0 0C */	addi r4, r3, next_act_idx_1747@l /* 0x806AA00C@l */
/* 8055DFE0  7F 63 DB 78 */	mr r3, r27
/* 8055DFE4  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055DFE8  7F 84 E3 78 */	mr r4, r28
/* 8055DFEC  48 00 0D E5 */	bl aNSC_setupAction
lbl_8055DFF0:
/* 8055DFF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DFF4  4B B3 CF 25 */	bl func_8009AF18
/* 8055DFF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DFFC  7C 08 03 A6 */	mtlr r0
/* 8055E000  38 21 00 20 */	addi r1, r1, 0x20
/* 8055E004  4E 80 00 20 */	blr 
