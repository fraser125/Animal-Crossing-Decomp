lbl_80405714:
/* 80405714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405718  7C 08 02 A6 */	mflr r0
/* 8040571C  38 80 03 68 */	li r4, 0x368
/* 80405720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405728  7C 7F 1B 78 */	mr r31, r3
/* 8040572C  4B C5 79 3D */	bl bzero
/* 80405730  38 00 00 00 */	li r0, 0
/* 80405734  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80405738  90 1F 03 38 */	stw r0, 0x338(r31)
/* 8040573C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80405740  98 1F 03 4B */	stb r0, 0x34b(r31)
/* 80405744  80 64 00 00 */	lwz r3, 0(r4)
/* 80405748  A8 03 01 16 */	lha r0, 0x116(r3)
/* 8040574C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80405750  B0 03 01 16 */	sth r0, 0x116(r3)
/* 80405754  80 64 00 00 */	lwz r3, 0(r4)
/* 80405758  A8 03 01 16 */	lha r0, 0x116(r3)
/* 8040575C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80405760  B0 03 01 16 */	sth r0, 0x116(r3)
/* 80405764  48 00 97 0D */	bl zurumode_init
/* 80405768  38 00 00 01 */	li r0, 1
/* 8040576C  98 1F 03 48 */	stb r0, 0x348(r31)
/* 80405770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405778  7C 08 03 A6 */	mtlr r0
/* 8040577C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405780  4E 80 00 20 */	blr 
