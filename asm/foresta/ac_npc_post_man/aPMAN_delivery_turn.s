lbl_8056E620:
/* 8056E620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056E624  7C 08 02 A6 */	mflr r0
/* 8056E628  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056E62C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E630  4B B2 C8 A5 */	bl func_8009AED4
/* 8056E634  7C 7D 1B 78 */	mr r29, r3
/* 8056E638  3C 60 80 6C */	lis r3, aPMAN_mailbox_pos@ha /* 0x806BEC18@ha */
/* 8056E63C  88 BD 09 9B */	lbz r5, 0x99b(r29)
/* 8056E640  38 03 EC 18 */	addi r0, r3, aPMAN_mailbox_pos@l /* 0x806BEC18@l */
/* 8056E644  7C 9E 23 78 */	mr r30, r4
/* 8056E648  38 7D 00 28 */	addi r3, r29, 0x28
/* 8056E64C  7C A4 07 74 */	extsb r4, r5
/* 8056E650  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8056E654  7C 80 22 14 */	add r4, r0, r4
/* 8056E658  4B E4 CA D9 */	bl search_position_angleY
/* 8056E65C  7C 60 1B 78 */	mr r0, r3
/* 8056E660  3B FD 00 DE */	addi r31, r29, 0xde
/* 8056E664  7F E3 FB 78 */	mr r3, r31
/* 8056E668  38 A0 04 00 */	li r5, 0x400
/* 8056E66C  7C 04 07 34 */	extsh r4, r0
/* 8056E670  4B E4 C4 D5 */	bl chase_angle
/* 8056E674  2C 03 00 01 */	cmpwi r3, 1
/* 8056E678  40 82 00 14 */	bne lbl_8056E68C
/* 8056E67C  7F A3 EB 78 */	mr r3, r29
/* 8056E680  7F C4 F3 78 */	mr r4, r30
/* 8056E684  38 A0 00 08 */	li r5, 8
/* 8056E688  48 00 06 49 */	bl aPMAN_setupAction
lbl_8056E68C:
/* 8056E68C  A8 1F 00 00 */	lha r0, 0(r31)
/* 8056E690  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E694  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8056E698  4B B2 C8 89 */	bl func_8009AF20
/* 8056E69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056E6A0  7C 08 03 A6 */	mtlr r0
/* 8056E6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8056E6A8  4E 80 00 20 */	blr 
