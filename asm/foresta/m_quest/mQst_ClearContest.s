lbl_803E29E0:
/* 803E29E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E29E4  7C 08 02 A6 */	mflr r0
/* 803E29E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E29EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E29F0  7C 7F 1B 78 */	mr r31, r3
/* 803E29F4  4B FF FE B5 */	bl func_803E28A8
/* 803E29F8  38 00 00 00 */	li r0, 0
/* 803E29FC  38 7F 00 0E */	addi r3, r31, 0xe
/* 803E2A00  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 803E2A04  4B FF D6 89 */	bl mPr_ClearPersonalID
/* 803E2A08  38 00 00 03 */	li r0, 3
/* 803E2A0C  38 7F 00 24 */	addi r3, r31, 0x24
/* 803E2A10  98 1F 00 22 */	stb r0, 0x22(r31)
/* 803E2A14  38 80 00 04 */	li r4, 4
/* 803E2A18  4B C7 A6 51 */	bl bzero
/* 803E2A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E2A24  7C 08 03 A6 */	mtlr r0
/* 803E2A28  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2A2C  4E 80 00 20 */	blr 
