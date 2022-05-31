lbl_805B357C:
/* 805B357C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3580  7C 08 02 A6 */	mflr r0
/* 805B3584  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3588  38 00 00 00 */	li r0, 0
/* 805B358C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3590  7C 7F 1B 78 */	mr r31, r3
/* 805B3594  98 03 09 A2 */	stb r0, 0x9a2(r3)
/* 805B3598  4B FF FE 39 */	bl aNTT_set_string
/* 805B359C  38 00 00 00 */	li r0, 0
/* 805B35A0  B0 1F 09 9A */	sth r0, 0x99a(r31)
/* 805B35A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B35A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B35AC  7C 08 03 A6 */	mtlr r0
/* 805B35B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B35B4  4E 80 00 20 */	blr 
