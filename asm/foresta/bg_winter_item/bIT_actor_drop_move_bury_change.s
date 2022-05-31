lbl_804C2620:
/* 804C2620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C2624  7C 08 02 A6 */	mflr r0
/* 804C2628  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80646164@ha */
/* 804C262C  38 A0 00 2E */	li r5, 0x2e
/* 804C2630  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C2634  C0 04 61 64 */	lfs f0, lit_845@l(r4)  /* 0x80646164@l */
/* 804C2638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C263C  7C 7F 1B 78 */	mr r31, r3
/* 804C2640  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C2644  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804C2648  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804C264C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 804C2650  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C2654  4B FF EF 51 */	bl bIT_actor_bury_hole_effect_entry
/* 804C2658  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C265C  3C 80 80 4C */	lis r4, bIT_actor_drop_move_bury@ha /* 0x804C25D4@ha */
/* 804C2660  38 A3 61 3C */	addi r5, r3, data_8064613C@l /* 0x8064613C@l */
/* 804C2664  3C 60 80 4C */	lis r3, bIT_actor_drop_move_bury_destruct@ha /* 0x804C25B4@ha */
/* 804C2668  C0 05 00 00 */	lfs f0, 0(r5)
/* 804C266C  38 84 25 D4 */	addi r4, r4, bIT_actor_drop_move_bury@l /* 0x804C25D4@l */
/* 804C2670  38 03 25 B4 */	addi r0, r3, bIT_actor_drop_move_bury_destruct@l /* 0x804C25B4@l */
/* 804C2674  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804C2678  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804C267C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804C2680  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804C2684  90 9F 00 00 */	stw r4, 0(r31)
/* 804C2688  90 1F 00 08 */	stw r0, 8(r31)
/* 804C268C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C2690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C2694  7C 08 03 A6 */	mtlr r0
/* 804C2698  38 21 00 10 */	addi r1, r1, 0x10
/* 804C269C  4E 80 00 20 */	blr 
