lbl_805B4EA8:
/* 805B4EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B4EAC  7C 08 02 A6 */	mflr r0
/* 805B4EB0  7C 65 1B 78 */	mr r5, r3
/* 805B4EB4  7C 83 23 78 */	mr r3, r4
/* 805B4EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B4EBC  38 85 00 28 */	addi r4, r5, 0x28
/* 805B4EC0  48 07 90 E9 */	bl sAdo_OngenTrgStart
/* 805B4EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B4EC8  7C 08 03 A6 */	mtlr r0
/* 805B4ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 805B4ED0  4E 80 00 20 */	blr 
