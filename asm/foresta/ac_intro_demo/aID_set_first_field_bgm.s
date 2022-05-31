lbl_8042AA30:
/* 8042AA30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AA34  7C 08 02 A6 */	mflr r0
/* 8042AA38  38 80 01 68 */	li r4, 0x168
/* 8042AA3C  38 A0 00 01 */	li r5, 1
/* 8042AA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AA48  7C 7F 1B 78 */	mr r31, r3
/* 8042AA4C  38 60 00 33 */	li r3, 0x33
/* 8042AA50  4B F5 15 ED */	bl mBGMPsComp_make_ps_fieldSuddenEv
/* 8042AA54  38 60 00 01 */	li r3, 1
/* 8042AA58  4B F5 1D C9 */	bl mBGMPsComp_scene_mode
/* 8042AA5C  38 00 00 02 */	li r0, 2
/* 8042AA60  98 1F 01 9C */	stb r0, 0x19c(r31)
/* 8042AA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AA68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AA6C  7C 08 03 A6 */	mtlr r0
/* 8042AA70  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AA74  4E 80 00 20 */	blr 
