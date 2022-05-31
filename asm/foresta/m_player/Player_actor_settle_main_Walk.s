lbl_804E626C:
/* 804E626C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6270  7C 08 02 A6 */	mflr r0
/* 804E6274  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6278  80 03 0D 08 */	lwz r0, 0xd08(r3)
/* 804E627C  2C 00 00 07 */	cmpwi r0, 7
/* 804E6280  41 82 00 08 */	beq lbl_804E6288
/* 804E6284  48 00 00 3C */	b lbl_804E62C0
lbl_804E6288:
/* 804E6288  3C 80 80 65 */	lis r4, lit_6385@ha /* 0x8064806C@ha */
/* 804E628C  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804E6290  C0 04 80 6C */	lfs f0, lit_6385@l(r4)  /* 0x8064806C@l */
/* 804E6294  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804E6298  40 80 00 14 */	bge lbl_804E62AC
/* 804E629C  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804E62A0  C0 04 7A 44 */	lfs f0, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804E62A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E62A8  41 80 00 14 */	blt lbl_804E62BC
lbl_804E62AC:
/* 804E62AC  3C 80 80 64 */	lis r4, lit_1375@ha /* 0x80646A30@ha */
/* 804E62B0  C0 04 6A 30 */	lfs f0, lit_1375@l(r4)  /* 0x80646A30@l */
/* 804E62B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804E62B8  40 80 00 08 */	bge lbl_804E62C0
lbl_804E62BC:
/* 804E62BC  4B FF 90 71 */	bl Player_actor_sound_FootStep2
lbl_804E62C0:
/* 804E62C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E62C4  7C 08 03 A6 */	mtlr r0
/* 804E62C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E62CC  4E 80 00 20 */	blr 
