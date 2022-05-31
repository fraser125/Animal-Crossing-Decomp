lbl_8057EDA0:
/* 8057EDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EDA4  7C 08 02 A6 */	mflr r0
/* 8057EDA8  38 A0 00 FF */	li r5, 0xff
/* 8057EDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EDB0  38 00 00 00 */	li r0, 0
/* 8057EDB4  98 A3 00 D6 */	stb r5, 0xd6(r3)
/* 8057EDB8  38 A0 00 00 */	li r5, 0
/* 8057EDBC  98 03 08 31 */	stb r0, 0x831(r3)
/* 8057EDC0  48 00 00 9D */	bl aNS_setup_think_proc
/* 8057EDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EDC8  7C 08 03 A6 */	mtlr r0
/* 8057EDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EDD0  4E 80 00 20 */	blr 
