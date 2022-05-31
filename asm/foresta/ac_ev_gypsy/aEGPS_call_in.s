lbl_80520EB0:
/* 80520EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80520EB4  7C 08 02 A6 */	mflr r0
/* 80520EB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80520EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80520EC0  4B B7 A0 11 */	bl func_8009AED0
/* 80520EC4  7C 7C 1B 78 */	mr r28, r3
/* 80520EC8  7C 9D 23 78 */	mr r29, r4
/* 80520ECC  4B E9 E7 DD */	bl func_803BF6A8
/* 80520ED0  7C 7E 1B 78 */	mr r30, r3
/* 80520ED4  4B E9 FD C5 */	bl mMsg_Check_MainNormalContinue
/* 80520ED8  2C 03 00 01 */	cmpwi r3, 1
/* 80520EDC  40 82 00 98 */	bne lbl_80520F74
/* 80520EE0  3B E0 FF FF */	li r31, -1
/* 80520EE4  4B E6 26 5D */	bl func_80383540
/* 80520EE8  4B E6 2C 85 */	bl mChoice_Get_ChoseNum
/* 80520EEC  2C 03 00 01 */	cmpwi r3, 1
/* 80520EF0  41 82 00 40 */	beq lbl_80520F30
/* 80520EF4  40 80 00 40 */	bge lbl_80520F34
/* 80520EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80520EFC  40 80 00 08 */	bge lbl_80520F04
/* 80520F00  48 00 00 34 */	b lbl_80520F34
lbl_80520F04:
/* 80520F04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80520F08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80520F0C  3C 63 00 02 */	addis r3, r3, 2
/* 80520F10  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80520F14  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 80520F18  28 00 00 32 */	cmplwi r0, 0x32
/* 80520F1C  41 80 00 0C */	blt lbl_80520F28
/* 80520F20  3B E0 00 01 */	li r31, 1
/* 80520F24  48 00 00 10 */	b lbl_80520F34
lbl_80520F28:
/* 80520F28  3B E0 00 02 */	li r31, 2
/* 80520F2C  48 00 00 08 */	b lbl_80520F34
lbl_80520F30:
/* 80520F30  3B E0 00 00 */	li r31, 0
lbl_80520F34:
/* 80520F34  2C 1F FF FF */	cmpwi r31, -1
/* 80520F38  41 82 00 3C */	beq lbl_80520F74
/* 80520F3C  3C 60 80 6A */	lis r3, msg_no_482@ha /* 0x806A0888@ha */
/* 80520F40  57 FF 10 3A */	slwi r31, r31, 2
/* 80520F44  38 83 08 88 */	addi r4, r3, msg_no_482@l /* 0x806A0888@l */
/* 80520F48  7F C3 F3 78 */	mr r3, r30
/* 80520F4C  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80520F50  4B E9 F0 75 */	bl mMsg_Set_continue_msg_num
/* 80520F54  3C 60 80 6A */	lis r3, next_act_idx@ha /* 0x806A0894@ha */
/* 80520F58  81 9C 09 9C */	lwz r12, 0x99c(r28)
/* 80520F5C  38 A3 08 94 */	addi r5, r3, next_act_idx@l /* 0x806A0894@l */
/* 80520F60  7F 83 E3 78 */	mr r3, r28
/* 80520F64  7F A4 EB 78 */	mr r4, r29
/* 80520F68  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80520F6C  7D 89 03 A6 */	mtctr r12
/* 80520F70  4E 80 04 21 */	bctrl 
lbl_80520F74:
/* 80520F74  39 61 00 20 */	addi r11, r1, 0x20
/* 80520F78  4B B7 9F A5 */	bl func_8009AF1C
/* 80520F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80520F80  7C 08 03 A6 */	mtlr r0
/* 80520F84  38 21 00 20 */	addi r1, r1, 0x20
/* 80520F88  4E 80 00 20 */	blr 
