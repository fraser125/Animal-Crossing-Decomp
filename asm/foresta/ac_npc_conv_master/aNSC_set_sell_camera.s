lbl_80545C54:
/* 80545C54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80545C58  7C 08 02 A6 */	mflr r0
/* 80545C5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80545C60  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80545C64  7C 7F 1B 78 */	mr r31, r3
/* 80545C68  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80545C6C  7C 9E 23 78 */	mr r30, r4
/* 80545C70  7F C3 F3 78 */	mr r3, r30
/* 80545C74  4B E9 39 CD */	bl get_player_actor_withoutCheck
/* 80545C78  88 9F 09 B6 */	lbz r4, 0x9b6(r31)
/* 80545C7C  88 BF 09 B7 */	lbz r5, 0x9b7(r31)
/* 80545C80  7C 7F 1B 78 */	mr r31, r3
/* 80545C84  38 61 00 14 */	addi r3, r1, 0x14
/* 80545C88  4B E5 F7 F5 */	bl mFI_UtNum2CenterWpos
/* 80545C8C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80545C90  3C 60 80 65 */	lis r3, lit_606@ha /* 0x80649480@ha */
/* 80545C94  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80545C98  38 83 94 80 */	addi r4, r3, lit_606@l /* 0x80649480@l */
/* 80545C9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80545CA0  38 61 00 08 */	addi r3, r1, 8
/* 80545CA4  90 C1 00 08 */	stw r6, 8(r1)
/* 80545CA8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80545CAC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80545CB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80545CB4  4B E4 9C E5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80545CB8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80545CBC  7F C3 F3 78 */	mr r3, r30
/* 80545CC0  7F E4 FB 78 */	mr r4, r31
/* 80545CC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80545CC8  38 C0 00 05 */	li r6, 5
/* 80545CCC  4B E3 9A 6D */	bl Camera2_request_main_talk_pos
/* 80545CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80545CD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80545CD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80545CDC  7C 08 03 A6 */	mtlr r0
/* 80545CE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80545CE4  4E 80 00 20 */	blr 
