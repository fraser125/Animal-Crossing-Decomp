lbl_805B1920:
/* 805B1920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B1924  7C 08 02 A6 */	mflr r0
/* 805B1928  38 80 00 00 */	li r4, 0
/* 805B192C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B1930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B1934  7C 7F 1B 78 */	mr r31, r3
/* 805B1938  A0 A3 00 06 */	lhz r5, 6(r3)
/* 805B193C  38 05 A7 CA */	addi r0, r5, -22582
/* 805B1940  90 03 02 B4 */	stw r0, 0x2b4(r3)
/* 805B1944  80 A3 02 B4 */	lwz r5, 0x2b4(r3)
/* 805B1948  38 05 00 23 */	addi r0, r5, 0x23
/* 805B194C  90 03 02 A8 */	stw r0, 0x2a8(r3)
/* 805B1950  80 A3 02 B4 */	lwz r5, 0x2b4(r3)
/* 805B1954  38 05 00 4C */	addi r0, r5, 0x4c
/* 805B1958  90 03 02 AC */	stw r0, 0x2ac(r3)
/* 805B195C  48 00 00 75 */	bl aKAG_setup_action
/* 805B1960  7F E3 FB 78 */	mr r3, r31
/* 805B1964  38 80 00 01 */	li r4, 1
/* 805B1968  48 00 00 19 */	bl func_805B1980
/* 805B196C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B1970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B1974  7C 08 03 A6 */	mtlr r0
/* 805B1978  38 21 00 10 */	addi r1, r1, 0x10
/* 805B197C  4E 80 00 20 */	blr 