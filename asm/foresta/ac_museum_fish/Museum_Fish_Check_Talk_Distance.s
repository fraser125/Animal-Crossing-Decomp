lbl_8042FC2C:
/* 8042FC2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042FC30  7C 08 02 A6 */	mflr r0
/* 8042FC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042FC38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042FC3C  7C 9F 23 78 */	mr r31, r4
/* 8042FC40  4B FA 9A 01 */	bl get_player_actor_withoutCheck
/* 8042FC44  A8 A3 00 36 */	lha r5, 0x36(r3)
/* 8042FC48  1C DF 00 0C */	mulli r6, r31, 0xc
/* 8042FC4C  3C 80 80 68 */	lis r4, kanban_pos@ha /* 0x80686200@ha */
/* 8042FC50  38 E5 80 00 */	addi r7, r5, -32768
/* 8042FC54  38 04 62 00 */	addi r0, r4, kanban_pos@l /* 0x80686200@l */
/* 8042FC58  38 A1 00 08 */	addi r5, r1, 8
/* 8042FC5C  7C FF 07 34 */	extsh r31, r7
/* 8042FC60  38 63 00 28 */	addi r3, r3, 0x28
/* 8042FC64  7C 80 32 14 */	add r4, r0, r6
/* 8042FC68  4B F8 B3 11 */	bl xyz_t_sub
/* 8042FC6C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8042FC70  C0 21 00 08 */	lfs f1, 8(r1)
/* 8042FC74  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8042FC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042FC7C  4C 41 13 82 */	cror 2, 1, 2
/* 8042FC80  40 82 00 08 */	bne lbl_8042FC88
/* 8042FC84  48 00 00 08 */	b lbl_8042FC8C
lbl_8042FC88:
/* 8042FC88  FC 20 08 50 */	fneg f1, f1
lbl_8042FC8C:
/* 8042FC8C  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 8042FC90  C0 03 42 B4 */	lfs f0, lit_698@l(r3)  /* 0x806442B4@l */
/* 8042FC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042FC98  40 80 00 54 */	bge lbl_8042FCEC
/* 8042FC9C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8042FCA0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8042FCA4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8042FCA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042FCAC  4C 41 13 82 */	cror 2, 1, 2
/* 8042FCB0  40 82 00 08 */	bne lbl_8042FCB8
/* 8042FCB4  48 00 00 08 */	b lbl_8042FCBC
lbl_8042FCB8:
/* 8042FCB8  FC 20 08 50 */	fneg f1, f1
lbl_8042FCBC:
/* 8042FCBC  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 8042FCC0  C0 03 42 B4 */	lfs f0, lit_698@l(r3)  /* 0x806442B4@l */
/* 8042FCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042FCC8  40 80 00 24 */	bge lbl_8042FCEC
/* 8042FCCC  7F E0 07 35 */	extsh. r0, r31
/* 8042FCD0  7C 1F 00 D0 */	neg r0, r31
/* 8042FCD4  41 80 00 08 */	blt lbl_8042FCDC
/* 8042FCD8  7F E0 FB 78 */	mr r0, r31
lbl_8042FCDC:
/* 8042FCDC  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8042FCE0  40 80 00 0C */	bge lbl_8042FCEC
/* 8042FCE4  38 60 00 01 */	li r3, 1
/* 8042FCE8  48 00 00 08 */	b lbl_8042FCF0
lbl_8042FCEC:
/* 8042FCEC  38 60 00 00 */	li r3, 0
lbl_8042FCF0:
/* 8042FCF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042FCF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042FCF8  7C 08 03 A6 */	mtlr r0
/* 8042FCFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8042FD00  4E 80 00 20 */	blr 
