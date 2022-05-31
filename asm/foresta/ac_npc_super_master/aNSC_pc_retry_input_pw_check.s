lbl_80584FA8:
/* 80584FA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584FAC  7C 08 02 A6 */	mflr r0
/* 80584FB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80584FB8  4B B1 5F 15 */	bl func_8009AECC
/* 80584FBC  7C 7B 1B 78 */	mr r27, r3
/* 80584FC0  7C 9C 23 78 */	mr r28, r4
/* 80584FC4  4B E3 A6 E5 */	bl func_803BF6A8
/* 80584FC8  7C 60 1B 78 */	mr r0, r3
/* 80584FCC  38 60 01 39 */	li r3, 0x139
/* 80584FD0  7C 1D 03 78 */	mr r29, r0
/* 80584FD4  4B FF CD B5 */	bl aNSC_get_msg_no
/* 80584FD8  7C 7E 1B 78 */	mr r30, r3
/* 80584FDC  38 60 01 44 */	li r3, 0x144
/* 80584FE0  4B FF CD A9 */	bl aNSC_get_msg_no
/* 80584FE4  7C 7F 1B 78 */	mr r31, r3
/* 80584FE8  7F A3 EB 78 */	mr r3, r29
/* 80584FEC  4B E3 AF E1 */	bl mMsg_Get_msg_num
/* 80584FF0  7C 03 F0 00 */	cmpw r3, r30
/* 80584FF4  41 82 00 0C */	beq lbl_80585000
/* 80584FF8  7C 03 F8 00 */	cmpw r3, r31
/* 80584FFC  40 82 00 88 */	bne lbl_80585084
lbl_80585000:
/* 80585000  7F A3 EB 78 */	mr r3, r29
/* 80585004  4B E3 BC 95 */	bl mMsg_Check_MainNormalContinue
/* 80585008  2C 03 00 00 */	cmpwi r3, 0
/* 8058500C  41 82 00 78 */	beq lbl_80585084
/* 80585010  3B C0 FF FF */	li r30, -1
/* 80585014  4B DF E5 2D */	bl func_80383540
/* 80585018  4B DF EB 55 */	bl mChoice_Get_ChoseNum
/* 8058501C  2C 03 00 01 */	cmpwi r3, 1
/* 80585020  41 82 00 1C */	beq lbl_8058503C
/* 80585024  40 80 00 34 */	bge lbl_80585058
/* 80585028  2C 03 00 00 */	cmpwi r3, 0
/* 8058502C  40 80 00 08 */	bge lbl_80585034
/* 80585030  48 00 00 28 */	b lbl_80585058
lbl_80585034:
/* 80585034  3B C0 00 00 */	li r30, 0
/* 80585038  48 00 00 20 */	b lbl_80585058
lbl_8058503C:
/* 8058503C  3B C0 00 01 */	li r30, 1
/* 80585040  38 60 01 3A */	li r3, 0x13a
/* 80585044  4B FF CD 45 */	bl aNSC_get_msg_no
/* 80585048  7C 65 1B 78 */	mr r5, r3
/* 8058504C  7F A3 EB 78 */	mr r3, r29
/* 80585050  7F 64 DB 78 */	mr r4, r27
/* 80585054  4B FF CD BD */	bl aNSC_ChangeMsgData
lbl_80585058:
/* 80585058  2C 1E FF FF */	cmpwi r30, -1
/* 8058505C  41 82 00 28 */	beq lbl_80585084
/* 80585060  7F A3 EB 78 */	mr r3, r29
/* 80585064  4B E3 BC C5 */	bl mMsg_Set_ForceNext
/* 80585068  3C 60 80 6C */	lis r3, next_act_idx_1890@ha /* 0x806C1984@ha */
/* 8058506C  57 C0 10 3A */	slwi r0, r30, 2
/* 80585070  38 83 19 84 */	addi r4, r3, next_act_idx_1890@l /* 0x806C1984@l */
/* 80585074  7F 63 DB 78 */	mr r3, r27
/* 80585078  7C A4 00 2E */	lwzx r5, r4, r0
/* 8058507C  7F 84 E3 78 */	mr r4, r28
/* 80585080  48 00 0F 41 */	bl aNSC_setupAction
lbl_80585084:
/* 80585084  39 61 00 20 */	addi r11, r1, 0x20
/* 80585088  4B B1 5E 91 */	bl func_8009AF18
/* 8058508C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80585090  7C 08 03 A6 */	mtlr r0
/* 80585094  38 21 00 20 */	addi r1, r1, 0x20
/* 80585098  4E 80 00 20 */	blr 
