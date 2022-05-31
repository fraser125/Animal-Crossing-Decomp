lbl_8058AF98:
/* 8058AF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AF9C  7C 08 02 A6 */	mflr r0
/* 8058AFA0  38 80 00 04 */	li r4, 4
/* 8058AFA4  38 A0 00 02 */	li r5, 2
/* 8058AFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AFAC  38 C0 00 03 */	li r6, 3
/* 8058AFB0  38 E0 00 00 */	li r7, 0
/* 8058AFB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AFB8  7C 7F 1B 78 */	mr r31, r3
/* 8058AFBC  A9 03 09 A2 */	lha r8, 0x9a2(r3)
/* 8058AFC0  A9 23 09 A4 */	lha r9, 0x9a4(r3)
/* 8058AFC4  4B FF F2 F5 */	bl aTMN1_set_request_act
/* 8058AFC8  38 00 00 00 */	li r0, 0
/* 8058AFCC  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8058AFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AFD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058AFD8  7C 08 03 A6 */	mtlr r0
/* 8058AFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AFE0  4E 80 00 20 */	blr 
