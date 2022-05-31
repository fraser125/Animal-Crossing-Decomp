lbl_8046E28C:
/* 8046E28C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046E290  7C 08 02 A6 */	mflr r0
/* 8046E294  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046E298  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8046E29C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8046E2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8046E2A8  7C 9E 23 78 */	mr r30, r4
/* 8046E2AC  7C 7F 1B 78 */	mr r31, r3
/* 8046E2B0  7F C3 F3 78 */	mr r3, r30
/* 8046E2B4  4B F6 B3 8D */	bl get_player_actor_withoutCheck
/* 8046E2B8  7C 64 1B 78 */	mr r4, r3
/* 8046E2BC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8046E2C0  38 84 00 28 */	addi r4, r4, 0x28
/* 8046E2C4  4B F4 CD 11 */	bl search_position_distance
/* 8046E2C8  81 9F 00 04 */	lwz r12, 4(r31)
/* 8046E2CC  FF E0 08 90 */	fmr f31, f1
/* 8046E2D0  7F E3 FB 78 */	mr r3, r31
/* 8046E2D4  7F C4 F3 78 */	mr r4, r30
/* 8046E2D8  7D 89 03 A6 */	mtctr r12
/* 8046E2DC  4E 80 04 21 */	bctrl 
/* 8046E2E0  3C 60 80 47 */	lis r3, okera_dig_wait_process@ha /* 0x8046E1B0@ha */
/* 8046E2E4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8046E2E8  38 03 E1 B0 */	addi r0, r3, okera_dig_wait_process@l /* 0x8046E1B0@l */
/* 8046E2EC  7C 04 00 40 */	cmplw r4, r0
/* 8046E2F0  40 82 00 24 */	bne lbl_8046E314
/* 8046E2F4  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 8046E2F8  C0 03 45 D0 */	lfs f0, lit_464@l(r3)  /* 0x806445D0@l */
/* 8046E2FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046E300  40 80 00 14 */	bge lbl_8046E314
/* 8046E304  7F E3 FB 78 */	mr r3, r31
/* 8046E308  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8046E30C  38 80 00 44 */	li r4, 0x44
/* 8046E310  48 1B FC 35 */	bl sAdo_OngenPos
lbl_8046E314:
/* 8046E314  3C 60 80 47 */	lis r3, okera_dig_up_process@ha /* 0x8046D86C@ha */
/* 8046E318  80 9F 00 04 */	lwz r4, 4(r31)
/* 8046E31C  38 03 D8 6C */	addi r0, r3, okera_dig_up_process@l /* 0x8046D86C@l */
/* 8046E320  7C 04 00 40 */	cmplw r4, r0
/* 8046E324  40 82 00 24 */	bne lbl_8046E348
/* 8046E328  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 8046E32C  C0 03 45 D0 */	lfs f0, lit_464@l(r3)  /* 0x806445D0@l */
/* 8046E330  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8046E334  40 80 00 14 */	bge lbl_8046E348
/* 8046E338  7F E3 FB 78 */	mr r3, r31
/* 8046E33C  38 BF 00 1C */	addi r5, r31, 0x1c
/* 8046E340  38 80 00 45 */	li r4, 0x45
/* 8046E344  48 1B FC 01 */	bl sAdo_OngenPos
lbl_8046E348:
/* 8046E348  3C 60 80 47 */	lis r3, okera_dig_wait_process@ha /* 0x8046E1B0@ha */
/* 8046E34C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8046E350  38 03 E1 B0 */	addi r0, r3, okera_dig_wait_process@l /* 0x8046E1B0@l */
/* 8046E354  7C 04 00 40 */	cmplw r4, r0
/* 8046E358  41 82 00 54 */	beq lbl_8046E3AC
/* 8046E35C  3C 60 80 47 */	lis r3, okera_dig_down_process@ha /* 0x8046DEFC@ha */
/* 8046E360  38 03 DE FC */	addi r0, r3, okera_dig_down_process@l /* 0x8046DEFC@l */
/* 8046E364  7C 04 00 40 */	cmplw r4, r0
/* 8046E368  40 82 00 08 */	bne lbl_8046E370
/* 8046E36C  48 00 00 40 */	b lbl_8046E3AC
lbl_8046E370:
/* 8046E370  7F E3 FB 78 */	mr r3, r31
/* 8046E374  4B FE DD E1 */	bl minsect_tree_ObjCheck
/* 8046E378  7F E3 FB 78 */	mr r3, r31
/* 8046E37C  4B FE DF 59 */	bl minsect_rock_ObjCheck
/* 8046E380  7F E3 FB 78 */	mr r3, r31
/* 8046E384  4B FE DD 11 */	bl minsect_kanban_BGCheck
/* 8046E388  7F E3 FB 78 */	mr r3, r31
/* 8046E38C  4B FE E0 C9 */	bl minsect_batta_ObjCheck
/* 8046E390  3C 60 80 64 */	lis r3, lit_1743@ha /* 0x806447A8@ha */
/* 8046E394  3C 80 80 64 */	lis r4, lit_1744@ha /* 0x806447AC@ha */
/* 8046E398  38 A3 47 A8 */	addi r5, r3, lit_1743@l /* 0x806447A8@l */
/* 8046E39C  C0 44 47 AC */	lfs f2, lit_1744@l(r4)  /* 0x806447AC@l */
/* 8046E3A0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046E3A4  7F E3 FB 78 */	mr r3, r31
/* 8046E3A8  4B FE D8 81 */	bl minsect_garden_BGCheck
lbl_8046E3AC:
/* 8046E3AC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8046E3B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046E3B4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8046E3B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E3BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046E3C0  7C 08 03 A6 */	mtlr r0
/* 8046E3C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8046E3C8  4E 80 00 20 */	blr 
