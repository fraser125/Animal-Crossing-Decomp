lbl_80612534:
/* 80612534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80612538  7C 08 02 A6 */	mflr r0
/* 8061253C  38 83 00 10 */	addi r4, r3, 0x10
/* 80612540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80612544  38 00 00 48 */	li r0, 0x48
/* 80612548  B0 03 00 00 */	sth r0, 0(r3)
/* 8061254C  38 60 01 4B */	li r3, 0x14b
/* 80612550  48 01 BA 59 */	bl sAdo_OngenTrgStart
/* 80612554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80612558  7C 08 03 A6 */	mtlr r0
/* 8061255C  38 21 00 10 */	addi r1, r1, 0x10
/* 80612560  4E 80 00 20 */	blr 