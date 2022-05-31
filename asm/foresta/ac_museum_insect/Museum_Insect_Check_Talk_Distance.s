lbl_8045A544:
/* 8045A544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045A548  7C 08 02 A6 */	mflr r0
/* 8045A54C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045A550  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045A554  7C 9F 23 78 */	mr r31, r4
/* 8045A558  4B F7 F0 E9 */	bl get_player_actor_withoutCheck
/* 8045A55C  A8 A3 00 36 */	lha r5, 0x36(r3)
/* 8045A560  1C DF 00 0C */	mulli r6, r31, 0xc
/* 8045A564  3C 80 80 68 */	lis r4, kanban_pos@ha /* 0x80686ED8@ha */
/* 8045A568  38 E5 80 00 */	addi r7, r5, -32768
/* 8045A56C  38 04 6E D8 */	addi r0, r4, kanban_pos@l /* 0x80686ED8@l */
/* 8045A570  38 A1 00 08 */	addi r5, r1, 8
/* 8045A574  7C FF 07 34 */	extsh r31, r7
/* 8045A578  38 63 00 28 */	addi r3, r3, 0x28
/* 8045A57C  7C 80 32 14 */	add r4, r0, r6
/* 8045A580  4B F6 09 F9 */	bl xyz_t_sub
/* 8045A584  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045A588  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045A58C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045A590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045A594  4C 41 13 82 */	cror 2, 1, 2
/* 8045A598  40 82 00 08 */	bne lbl_8045A5A0
/* 8045A59C  48 00 00 08 */	b lbl_8045A5A4
lbl_8045A5A0:
/* 8045A5A0  FC 20 08 50 */	fneg f1, f1
lbl_8045A5A4:
/* 8045A5A4  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8045A5A8  C0 03 45 DC */	lfs f0, lit_503@l(r3)  /* 0x806445DC@l */
/* 8045A5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045A5B0  40 80 00 54 */	bge lbl_8045A604
/* 8045A5B4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045A5B8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8045A5BC  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045A5C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045A5C4  4C 41 13 82 */	cror 2, 1, 2
/* 8045A5C8  40 82 00 08 */	bne lbl_8045A5D0
/* 8045A5CC  48 00 00 08 */	b lbl_8045A5D4
lbl_8045A5D0:
/* 8045A5D0  FC 20 08 50 */	fneg f1, f1
lbl_8045A5D4:
/* 8045A5D4  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8045A5D8  C0 03 45 DC */	lfs f0, lit_503@l(r3)  /* 0x806445DC@l */
/* 8045A5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045A5E0  40 80 00 24 */	bge lbl_8045A604
/* 8045A5E4  7F E0 07 35 */	extsh. r0, r31
/* 8045A5E8  7C 1F 00 D0 */	neg r0, r31
/* 8045A5EC  41 80 00 08 */	blt lbl_8045A5F4
/* 8045A5F0  7F E0 FB 78 */	mr r0, r31
lbl_8045A5F4:
/* 8045A5F4  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8045A5F8  40 80 00 0C */	bge lbl_8045A604
/* 8045A5FC  38 60 00 01 */	li r3, 1
/* 8045A600  48 00 00 08 */	b lbl_8045A608
lbl_8045A604:
/* 8045A604  38 60 00 00 */	li r3, 0
lbl_8045A608:
/* 8045A608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045A60C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045A610  7C 08 03 A6 */	mtlr r0
/* 8045A614  38 21 00 20 */	addi r1, r1, 0x20
/* 8045A618  4E 80 00 20 */	blr 
