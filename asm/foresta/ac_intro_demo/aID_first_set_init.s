lbl_8042B194:
/* 8042B194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B198  7C 08 02 A6 */	mflr r0
/* 8042B19C  38 60 00 2F */	li r3, 0x2f
/* 8042B1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B1A8  83 E4 20 98 */	lwz r31, 0x2098(r4)
/* 8042B1AC  38 80 01 68 */	li r4, 0x168
/* 8042B1B0  4B F5 0B 59 */	bl mBGMPsComp_make_ps_demo
/* 8042B1B4  38 60 00 09 */	li r3, 9
/* 8042B1B8  4B F5 16 69 */	bl mBGMPsComp_scene_mode
/* 8042B1BC  38 60 07 B2 */	li r3, 0x7b2
/* 8042B1C0  38 00 02 F8 */	li r0, 0x2f8
/* 8042B1C4  B0 7F 00 02 */	sth r3, 2(r31)
/* 8042B1C8  B0 1F 00 06 */	sth r0, 6(r31)
/* 8042B1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B1D4  7C 08 03 A6 */	mtlr r0
/* 8042B1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B1DC  4E 80 00 20 */	blr 
