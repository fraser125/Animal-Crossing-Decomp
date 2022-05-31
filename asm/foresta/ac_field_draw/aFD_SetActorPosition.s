lbl_8042308C:
/* 8042308C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80423090  7C 08 02 A6 */	mflr r0
/* 80423094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042309C  7C 7F 1B 78 */	mr r31, r3
/* 804230A0  7C 83 23 78 */	mr r3, r4
/* 804230A4  4B FB 65 9D */	bl get_player_actor_withoutCheck
/* 804230A8  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804230AC  3C 80 81 1D */	lis r4, aFD_position_offset@ha /* 0x811CBD58@ha */
/* 804230B0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804230B4  90 BF 00 28 */	stw r5, 0x28(r31)
/* 804230B8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 804230BC  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804230C0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 804230C4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 804230C8  C0 04 BD 58 */	lfs f0, aFD_position_offset@l(r4)  /* 0x811CBD58@l */
/* 804230CC  EC 01 00 2A */	fadds f0, f1, f0
/* 804230D0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804230D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804230D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804230DC  7C 08 03 A6 */	mtlr r0
/* 804230E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804230E4  4E 80 00 20 */	blr 
