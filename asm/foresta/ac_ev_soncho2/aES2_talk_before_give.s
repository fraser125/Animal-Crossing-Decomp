lbl_80524A04:
/* 80524A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80524A08  7C 08 02 A6 */	mflr r0
/* 80524A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80524A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80524A14  93 C1 00 08 */	stw r30, 8(r1)
/* 80524A18  7C 7E 1B 78 */	mr r30, r3
/* 80524A1C  4B E9 AC 8D */	bl func_803BF6A8
/* 80524A20  7C 7F 1B 78 */	mr r31, r3
/* 80524A24  4B E9 C2 75 */	bl mMsg_Check_MainNormalContinue
/* 80524A28  2C 03 00 00 */	cmpwi r3, 0
/* 80524A2C  41 82 00 74 */	beq lbl_80524AA0
/* 80524A30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80524A34  38 80 00 00 */	li r4, 0
/* 80524A38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80524A3C  38 A0 00 00 */	li r5, 0
/* 80524A40  3C 63 00 02 */	addis r3, r3, 2
/* 80524A44  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80524A48  4B EB BF 85 */	bl mPr_GetPossessionItemSumWithCond
/* 80524A4C  28 03 00 00 */	cmplwi r3, 0
/* 80524A50  40 82 00 2C */	bne lbl_80524A7C
/* 80524A54  7F C3 F3 78 */	mr r3, r30
/* 80524A58  38 80 00 02 */	li r4, 2
/* 80524A5C  4B FF FE E1 */	bl func_8052493C
/* 80524A60  7C 64 1B 78 */	mr r4, r3
/* 80524A64  7F E3 FB 78 */	mr r3, r31
/* 80524A68  4B E9 B5 5D */	bl mMsg_Set_continue_msg_num
/* 80524A6C  7F C3 F3 78 */	mr r3, r30
/* 80524A70  38 80 00 05 */	li r4, 5
/* 80524A74  48 00 00 F1 */	bl aES2_change_talk_proc
/* 80524A78  48 00 00 28 */	b lbl_80524AA0
lbl_80524A7C:
/* 80524A7C  7F C3 F3 78 */	mr r3, r30
/* 80524A80  38 80 00 03 */	li r4, 3
/* 80524A84  4B FF FE B9 */	bl func_8052493C
/* 80524A88  7C 64 1B 78 */	mr r4, r3
/* 80524A8C  7F E3 FB 78 */	mr r3, r31
/* 80524A90  4B E9 B5 35 */	bl mMsg_Set_continue_msg_num
/* 80524A94  7F C3 F3 78 */	mr r3, r30
/* 80524A98  38 80 00 01 */	li r4, 1
/* 80524A9C  48 00 00 C9 */	bl aES2_change_talk_proc
lbl_80524AA0:
/* 80524AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80524AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80524AAC  7C 08 03 A6 */	mtlr r0
/* 80524AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80524AB4  4E 80 00 20 */	blr 
