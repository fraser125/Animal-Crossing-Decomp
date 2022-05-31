lbl_8051EC68:
/* 8051EC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EC6C  7C 08 02 A6 */	mflr r0
/* 8051EC70  38 A0 00 FF */	li r5, 0xff
/* 8051EC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EC78  38 00 00 00 */	li r0, 0
/* 8051EC7C  98 A3 00 D6 */	stb r5, 0xd6(r3)
/* 8051EC80  38 A0 00 01 */	li r5, 1
/* 8051EC84  98 03 08 31 */	stb r0, 0x831(r3)
/* 8051EC88  48 00 01 B5 */	bl aEDZ_setup_think_proc
/* 8051EC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EC90  7C 08 03 A6 */	mtlr r0
/* 8051EC94  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EC98  4E 80 00 20 */	blr 
