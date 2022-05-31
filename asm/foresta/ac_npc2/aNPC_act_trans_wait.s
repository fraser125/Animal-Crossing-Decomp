lbl_80540064:
/* 80540064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540068  7C 08 02 A6 */	mflr r0
/* 8054006C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540074  7C 7F 1B 78 */	mr r31, r3
/* 80540078  4B FF CD 81 */	bl aNPC_check_manpu_demoCode
/* 8054007C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80540080  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80540084  3C 63 00 02 */	addis r3, r3, 2
/* 80540088  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054008C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80540090  7C 00 F8 40 */	cmplw r0, r31
/* 80540094  41 82 00 14 */	beq lbl_805400A8
/* 80540098  7F E3 FB 78 */	mr r3, r31
/* 8054009C  4B FF C6 3D */	bl aNPC_clear_left_hand_info
/* 805400A0  7F E3 FB 78 */	mr r3, r31
/* 805400A4  4B FF F1 61 */	bl aNPC_act_return_trans_item
lbl_805400A8:
/* 805400A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805400AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805400B0  7C 08 03 A6 */	mtlr r0
/* 805400B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805400B8  4E 80 00 20 */	blr 
