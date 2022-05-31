lbl_80538A3C:
/* 80538A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538A40  7C 08 02 A6 */	mflr r0
/* 80538A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538A48  A0 03 00 06 */	lhz r0, 6(r3)
/* 80538A4C  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80538A50  2C 00 00 0E */	cmpwi r0, 0xe
/* 80538A54  41 82 00 14 */	beq lbl_80538A68
/* 80538A58  40 80 00 1C */	bge lbl_80538A74
/* 80538A5C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80538A60  40 80 00 10 */	bge lbl_80538A70
/* 80538A64  48 00 00 10 */	b lbl_80538A74
lbl_80538A68:
/* 80538A68  4B FF FE 3D */	bl aNPC_actor_init_for_normal
/* 80538A6C  48 00 00 08 */	b lbl_80538A74
lbl_80538A70:
/* 80538A70  4B FF FE 99 */	bl aNPC_actor_init_for_special
lbl_80538A74:
/* 80538A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538A78  7C 08 03 A6 */	mtlr r0
/* 80538A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80538A80  4E 80 00 20 */	blr 
