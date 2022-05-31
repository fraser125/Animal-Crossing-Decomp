lbl_804C9A38:
/* 804C9A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C9A3C  7C 08 02 A6 */	mflr r0
/* 804C9A40  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80646204@ha */
/* 804C9A44  38 A0 00 2E */	li r5, 0x2e
/* 804C9A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C9A4C  C0 04 62 04 */	lfs f0, lit_845@l(r4)  /* 0x80646204@l */
/* 804C9A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C9A54  7C 7F 1B 78 */	mr r31, r3
/* 804C9A58  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C9A5C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804C9A60  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804C9A64  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 804C9A68  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804C9A6C  4B FF EF 51 */	bl bIT_actor_bury_hole_effect_entry
/* 804C9A70  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C9A74  3C 80 80 4D */	lis r4, bIT_actor_drop_move_bury@ha /* 0x804C99EC@ha */
/* 804C9A78  38 A3 61 DC */	addi r5, r3, data_806461DC@l /* 0x806461DC@l */
/* 804C9A7C  3C 60 80 4D */	lis r3, bIT_actor_drop_move_bury_destruct@ha /* 0x804C99CC@ha */
/* 804C9A80  C0 05 00 00 */	lfs f0, 0(r5)
/* 804C9A84  38 84 99 EC */	addi r4, r4, bIT_actor_drop_move_bury@l /* 0x804C99EC@l */
/* 804C9A88  38 03 99 CC */	addi r0, r3, bIT_actor_drop_move_bury_destruct@l /* 0x804C99CC@l */
/* 804C9A8C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804C9A90  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804C9A94  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804C9A98  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804C9A9C  90 9F 00 00 */	stw r4, 0(r31)
/* 804C9AA0  90 1F 00 08 */	stw r0, 8(r31)
/* 804C9AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C9AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C9AAC  7C 08 03 A6 */	mtlr r0
/* 804C9AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804C9AB4  4E 80 00 20 */	blr 
