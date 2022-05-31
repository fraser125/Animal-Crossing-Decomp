lbl_80551318:
/* 80551318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055131C  7C 08 02 A6 */	mflr r0
/* 80551320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551324  39 61 00 20 */	addi r11, r1, 0x20
/* 80551328  4B B4 9B A9 */	bl func_8009AED0
/* 8055132C  7C 7C 1B 78 */	mr r28, r3
/* 80551330  7C 9D 23 78 */	mr r29, r4
/* 80551334  4B E6 E3 75 */	bl func_803BF6A8
/* 80551338  7C 60 1B 78 */	mr r0, r3
/* 8055133C  38 60 01 2F */	li r3, 0x12f
/* 80551340  7C 1E 03 78 */	mr r30, r0
/* 80551344  4B FF D2 B9 */	bl aNSC_get_msg_no
/* 80551348  7C 7F 1B 78 */	mr r31, r3
/* 8055134C  7F C3 F3 78 */	mr r3, r30
/* 80551350  4B E6 EC 7D */	bl mMsg_Get_msg_num
/* 80551354  7C 03 F8 00 */	cmpw r3, r31
/* 80551358  40 82 00 84 */	bne lbl_805513DC
/* 8055135C  7F C3 F3 78 */	mr r3, r30
/* 80551360  4B E6 F9 39 */	bl mMsg_Check_MainNormalContinue
/* 80551364  2C 03 00 00 */	cmpwi r3, 0
/* 80551368  41 82 00 74 */	beq lbl_805513DC
/* 8055136C  3B E0 FF FF */	li r31, -1
/* 80551370  4B E3 21 D1 */	bl func_80383540
/* 80551374  4B E3 27 F9 */	bl mChoice_Get_ChoseNum
/* 80551378  2C 03 00 01 */	cmpwi r3, 1
/* 8055137C  41 82 00 28 */	beq lbl_805513A4
/* 80551380  40 80 00 10 */	bge lbl_80551390
/* 80551384  2C 03 00 00 */	cmpwi r3, 0
/* 80551388  40 80 00 14 */	bge lbl_8055139C
/* 8055138C  48 00 00 24 */	b lbl_805513B0
lbl_80551390:
/* 80551390  2C 03 00 03 */	cmpwi r3, 3
/* 80551394  40 80 00 1C */	bge lbl_805513B0
/* 80551398  48 00 00 14 */	b lbl_805513AC
lbl_8055139C:
/* 8055139C  3B E0 00 00 */	li r31, 0
/* 805513A0  48 00 00 10 */	b lbl_805513B0
lbl_805513A4:
/* 805513A4  3B E0 00 01 */	li r31, 1
/* 805513A8  48 00 00 08 */	b lbl_805513B0
lbl_805513AC:
/* 805513AC  3B E0 00 02 */	li r31, 2
lbl_805513B0:
/* 805513B0  2C 1F FF FF */	cmpwi r31, -1
/* 805513B4  41 82 00 28 */	beq lbl_805513DC
/* 805513B8  7F C3 F3 78 */	mr r3, r30
/* 805513BC  4B E6 F9 6D */	bl mMsg_Set_ForceNext
/* 805513C0  3C 60 80 6A */	lis r3, next_act_idx_1797@ha /* 0x806A5DFC@ha */
/* 805513C4  57 E0 10 3A */	slwi r0, r31, 2
/* 805513C8  38 83 5D FC */	addi r4, r3, next_act_idx_1797@l /* 0x806A5DFC@l */
/* 805513CC  7F 83 E3 78 */	mr r3, r28
/* 805513D0  7C A4 00 2E */	lwzx r5, r4, r0
/* 805513D4  7F A4 EB 78 */	mr r4, r29
/* 805513D8  48 00 14 5D */	bl aNSC_setupAction
lbl_805513DC:
/* 805513DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805513E0  4B B4 9B 3D */	bl func_8009AF1C
/* 805513E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805513E8  7C 08 03 A6 */	mtlr r0
/* 805513EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805513F0  4E 80 00 20 */	blr 
