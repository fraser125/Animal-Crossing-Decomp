lbl_804BAB28:
/* 804BAB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BAB2C  7C 08 02 A6 */	mflr r0
/* 804BAB30  3C 80 80 64 */	lis r4, lit_845@ha /* 0x806460B4@ha */
/* 804BAB34  38 A0 00 2E */	li r5, 0x2e
/* 804BAB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAB3C  C0 04 60 B4 */	lfs f0, lit_845@l(r4)  /* 0x806460B4@l */
/* 804BAB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAB44  7C 7F 1B 78 */	mr r31, r3
/* 804BAB48  38 9F 00 20 */	addi r4, r31, 0x20
/* 804BAB4C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804BAB50  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804BAB54  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 804BAB58  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804BAB5C  4B FF EF 51 */	bl bIT_actor_bury_hole_effect_entry
/* 804BAB60  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BAB64  3C 80 80 4C */	lis r4, bIT_actor_drop_move_bury@ha /* 0x804BAADC@ha */
/* 804BAB68  38 A3 60 8C */	addi r5, r3, data_8064608C@l /* 0x8064608C@l */
/* 804BAB6C  3C 60 80 4C */	lis r3, bIT_actor_drop_move_bury_destruct@ha /* 0x804BAABC@ha */
/* 804BAB70  C0 05 00 00 */	lfs f0, 0(r5)
/* 804BAB74  38 84 AA DC */	addi r4, r4, bIT_actor_drop_move_bury@l /* 0x804BAADC@l */
/* 804BAB78  38 03 AA BC */	addi r0, r3, bIT_actor_drop_move_bury_destruct@l /* 0x804BAABC@l */
/* 804BAB7C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804BAB80  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804BAB84  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804BAB88  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804BAB8C  90 9F 00 00 */	stw r4, 0(r31)
/* 804BAB90  90 1F 00 08 */	stw r0, 8(r31)
/* 804BAB94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAB9C  7C 08 03 A6 */	mtlr r0
/* 804BABA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804BABA4  4E 80 00 20 */	blr 
