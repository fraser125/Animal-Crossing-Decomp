lbl_80533EE8:
/* 80533EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533EEC  7C 08 02 A6 */	mflr r0
/* 80533EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533EF8  7C 7F 1B 78 */	mr r31, r3
/* 80533EFC  4B FF A4 29 */	bl aNPC_check_manpu_demoCode
/* 80533F00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80533F04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80533F08  3C 63 00 02 */	addis r3, r3, 2
/* 80533F0C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80533F10  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80533F14  7C 00 F8 40 */	cmplw r0, r31
/* 80533F18  41 82 00 14 */	beq lbl_80533F2C
/* 80533F1C  7F E3 FB 78 */	mr r3, r31
/* 80533F20  4B FF 9C DD */	bl aNPC_clear_left_hand_info
/* 80533F24  7F E3 FB 78 */	mr r3, r31
/* 80533F28  4B FF D5 2D */	bl aNPC_act_return_trans_item
lbl_80533F2C:
/* 80533F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533F34  7C 08 03 A6 */	mtlr r0
/* 80533F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80533F3C  4E 80 00 20 */	blr 
