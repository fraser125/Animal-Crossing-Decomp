lbl_8055DD40:
/* 8055DD40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DD44  7C 08 02 A6 */	mflr r0
/* 8055DD48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DD4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DD50  4B B3 D1 81 */	bl func_8009AED0
/* 8055DD54  7C 7C 1B 78 */	mr r28, r3
/* 8055DD58  7C 9D 23 78 */	mr r29, r4
/* 8055DD5C  4B E6 19 4D */	bl func_803BF6A8
/* 8055DD60  7C 60 1B 78 */	mr r0, r3
/* 8055DD64  38 60 01 31 */	li r3, 0x131
/* 8055DD68  7C 1E 03 78 */	mr r30, r0
/* 8055DD6C  4B FF D8 71 */	bl aNSC_get_msg_no
/* 8055DD70  7C 7F 1B 78 */	mr r31, r3
/* 8055DD74  7F C3 F3 78 */	mr r3, r30
/* 8055DD78  4B E6 22 55 */	bl mMsg_Get_msg_num
/* 8055DD7C  7C 03 F8 00 */	cmpw r3, r31
/* 8055DD80  40 82 00 70 */	bne lbl_8055DDF0
/* 8055DD84  7F C3 F3 78 */	mr r3, r30
/* 8055DD88  4B E6 2F 11 */	bl mMsg_Check_MainNormalContinue
/* 8055DD8C  2C 03 00 00 */	cmpwi r3, 0
/* 8055DD90  41 82 00 60 */	beq lbl_8055DDF0
/* 8055DD94  3B E0 FF FF */	li r31, -1
/* 8055DD98  4B E2 57 A9 */	bl func_80383540
/* 8055DD9C  4B E2 5D D1 */	bl mChoice_Get_ChoseNum
/* 8055DDA0  2C 03 00 01 */	cmpwi r3, 1
/* 8055DDA4  41 82 00 1C */	beq lbl_8055DDC0
/* 8055DDA8  40 80 00 1C */	bge lbl_8055DDC4
/* 8055DDAC  2C 03 00 00 */	cmpwi r3, 0
/* 8055DDB0  40 80 00 08 */	bge lbl_8055DDB8
/* 8055DDB4  48 00 00 10 */	b lbl_8055DDC4
lbl_8055DDB8:
/* 8055DDB8  3B E0 00 00 */	li r31, 0
/* 8055DDBC  48 00 00 08 */	b lbl_8055DDC4
lbl_8055DDC0:
/* 8055DDC0  3B E0 00 01 */	li r31, 1
lbl_8055DDC4:
/* 8055DDC4  2C 1F FF FF */	cmpwi r31, -1
/* 8055DDC8  41 82 00 28 */	beq lbl_8055DDF0
/* 8055DDCC  7F C3 F3 78 */	mr r3, r30
/* 8055DDD0  4B E6 2F 59 */	bl mMsg_Set_ForceNext
/* 8055DDD4  3C 60 80 6B */	lis r3, next_act_idx_1717@ha /* 0x806A9FB4@ha */
/* 8055DDD8  57 E0 10 3A */	slwi r0, r31, 2
/* 8055DDDC  38 83 9F B4 */	addi r4, r3, next_act_idx_1717@l /* 0x806A9FB4@l */
/* 8055DDE0  7F 83 E3 78 */	mr r3, r28
/* 8055DDE4  7C A4 00 2E */	lwzx r5, r4, r0
/* 8055DDE8  7F A4 EB 78 */	mr r4, r29
/* 8055DDEC  48 00 0F E5 */	bl aNSC_setupAction
lbl_8055DDF0:
/* 8055DDF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DDF4  4B B3 D1 29 */	bl func_8009AF1C
/* 8055DDF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DDFC  7C 08 03 A6 */	mtlr r0
/* 8055DE00  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DE04  4E 80 00 20 */	blr 
