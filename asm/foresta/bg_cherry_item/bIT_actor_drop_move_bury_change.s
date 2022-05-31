lbl_804B37A4:
/* 804B37A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B37A8  7C 08 02 A6 */	mflr r0
/* 804B37AC  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80646014@ha */
/* 804B37B0  38 A0 00 2E */	li r5, 0x2e
/* 804B37B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B37B8  C0 04 60 14 */	lfs f0, lit_845@l(r4)  /* 0x80646014@l */
/* 804B37BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B37C0  7C 7F 1B 78 */	mr r31, r3
/* 804B37C4  38 9F 00 20 */	addi r4, r31, 0x20
/* 804B37C8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804B37CC  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804B37D0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 804B37D4  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 804B37D8  4B FF EF 51 */	bl bIT_actor_bury_hole_effect_entry
/* 804B37DC  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B37E0  3C 80 80 4B */	lis r4, bIT_actor_drop_move_bury@ha /* 0x804B3758@ha */
/* 804B37E4  38 A3 5F EC */	addi r5, r3, data_80645FEC@l /* 0x80645FEC@l */
/* 804B37E8  3C 60 80 4B */	lis r3, bIT_actor_drop_move_bury_destruct@ha /* 0x804B3738@ha */
/* 804B37EC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804B37F0  38 84 37 58 */	addi r4, r4, bIT_actor_drop_move_bury@l /* 0x804B3758@l */
/* 804B37F4  38 03 37 38 */	addi r0, r3, bIT_actor_drop_move_bury_destruct@l /* 0x804B3738@l */
/* 804B37F8  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804B37FC  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804B3800  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804B3804  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 804B3808  90 9F 00 00 */	stw r4, 0(r31)
/* 804B380C  90 1F 00 08 */	stw r0, 8(r31)
/* 804B3810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B3814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B3818  7C 08 03 A6 */	mtlr r0
/* 804B381C  38 21 00 10 */	addi r1, r1, 0x10
/* 804B3820  4E 80 00 20 */	blr 
