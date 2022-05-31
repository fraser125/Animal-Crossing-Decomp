lbl_80421F74:
/* 80421F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421F78  7C 08 02 A6 */	mflr r0
/* 80421F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421F80  39 61 00 20 */	addi r11, r1, 0x20
/* 80421F84  4B C7 8F 51 */	bl func_8009AED4
/* 80421F88  7C 9E 23 78 */	mr r30, r4
/* 80421F8C  7C 7D 1B 78 */	mr r29, r3
/* 80421F90  80 64 00 00 */	lwz r3, 0(r4)
/* 80421F94  3B E0 00 02 */	li r31, 2
/* 80421F98  4B F7 BC 55 */	bl mEv_check_keep
/* 80421F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80421FA0  40 82 00 10 */	bne lbl_80421FB0
/* 80421FA4  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421FA8  4B F7 BB DD */	bl mEv_set_keep
/* 80421FAC  3B E0 00 01 */	li r31, 1
lbl_80421FB0:
/* 80421FB0  2C 1F 00 00 */	cmpwi r31, 0
/* 80421FB4  41 82 00 28 */	beq lbl_80421FDC
/* 80421FB8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D079@ha */
/* 80421FBC  80 FD 02 30 */	lwz r7, 0x230(r29)
/* 80421FC0  81 1D 02 2C */	lwz r8, 0x22c(r29)
/* 80421FC4  7F A3 EB 78 */	mr r3, r29
/* 80421FC8  7F C4 F3 78 */	mr r4, r30
/* 80421FCC  38 A5 D0 79 */	addi r5, r5, 0xD079 /* 0x0000D079@l */
/* 80421FD0  38 C0 00 51 */	li r6, 0x51
/* 80421FD4  39 20 00 02 */	li r9, 2
/* 80421FD8  4B FF A0 CD */	bl make_actor_in_select_block
lbl_80421FDC:
/* 80421FDC  7F E3 FB 78 */	mr r3, r31
/* 80421FE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80421FE4  4B C7 8F 3D */	bl func_8009AF20
/* 80421FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421FEC  7C 08 03 A6 */	mtlr r0
/* 80421FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80421FF4  4E 80 00 20 */	blr 
