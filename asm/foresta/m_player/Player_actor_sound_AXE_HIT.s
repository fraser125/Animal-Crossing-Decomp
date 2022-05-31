lbl_804DF4CC:
/* 804DF4CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DF4D0  7C 08 02 A6 */	mflr r0
/* 804DF4D4  3C A0 80 64 */	lis r5, lit_2591@ha /* 0x80646C44@ha */
/* 804DF4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DF4DC  C0 25 6C 44 */	lfs f1, lit_2591@l(r5)  /* 0x80646C44@l */
/* 804DF4E0  C0 04 00 00 */	lfs f0, 0(r4)
/* 804DF4E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804DF4E8  C0 04 00 08 */	lfs f0, 8(r4)
/* 804DF4EC  38 80 04 1D */	li r4, 0x41d
/* 804DF4F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DF4F4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804DF4F8  38 61 00 08 */	addi r3, r1, 8
/* 804DF4FC  EC 01 00 2A */	fadds f0, f1, f0
/* 804DF500  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804DF504  4B FF FD 59 */	bl Player_actor_set_sound_common1
/* 804DF508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DF50C  7C 08 03 A6 */	mtlr r0
/* 804DF510  38 21 00 20 */	addi r1, r1, 0x20
/* 804DF514  4E 80 00 20 */	blr 
