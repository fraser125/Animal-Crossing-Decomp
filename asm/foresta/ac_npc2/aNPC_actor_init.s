lbl_805439A8:
/* 805439A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805439AC  7C 08 02 A6 */	mflr r0
/* 805439B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805439B4  A0 03 00 06 */	lhz r0, 6(r3)
/* 805439B8  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 805439BC  2C 00 00 0E */	cmpwi r0, 0xe
/* 805439C0  41 82 00 14 */	beq lbl_805439D4
/* 805439C4  40 80 00 1C */	bge lbl_805439E0
/* 805439C8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805439CC  40 80 00 10 */	bge lbl_805439DC
/* 805439D0  48 00 00 10 */	b lbl_805439E0
lbl_805439D4:
/* 805439D4  4B FF FE 3D */	bl aNPC_actor_init_for_normal
/* 805439D8  48 00 00 08 */	b lbl_805439E0
lbl_805439DC:
/* 805439DC  4B FF FE 99 */	bl aNPC_actor_init_for_special
lbl_805439E0:
/* 805439E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805439E4  7C 08 03 A6 */	mtlr r0
/* 805439E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805439EC  4E 80 00 20 */	blr 
