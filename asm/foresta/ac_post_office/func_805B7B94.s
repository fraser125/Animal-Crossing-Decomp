lbl_805B7B94:
/* 805B7B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B7B98  7C 08 02 A6 */	mflr r0
/* 805B7B9C  7C 65 1B 78 */	mr r5, r3
/* 805B7BA0  7C 83 23 78 */	mr r3, r4
/* 805B7BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7BA8  38 85 00 28 */	addi r4, r5, 0x28
/* 805B7BAC  48 07 63 FD */	bl sAdo_OngenTrgStart
/* 805B7BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B7BB4  7C 08 03 A6 */	mtlr r0
/* 805B7BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B7BBC  4E 80 00 20 */	blr 
