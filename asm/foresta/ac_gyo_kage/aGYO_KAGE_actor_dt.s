lbl_8042588C:
/* 8042588C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80425890  7C 08 02 A6 */	mflr r0
/* 80425894  7C 65 1B 78 */	mr r5, r3
/* 80425898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042589C  38 00 00 00 */	li r0, 0
/* 804258A0  98 03 01 A2 */	stb r0, 0x1a2(r3)
/* 804258A4  7C 83 23 78 */	mr r3, r4
/* 804258A8  38 85 01 80 */	addi r4, r5, 0x180
/* 804258AC  4B F6 ED BD */	bl ClObjPipe_dt
/* 804258B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804258B4  7C 08 03 A6 */	mtlr r0
/* 804258B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804258BC  4E 80 00 20 */	blr 