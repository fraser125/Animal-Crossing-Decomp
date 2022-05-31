lbl_8062B548:
/* 8062B548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B54C  7C 08 02 A6 */	mflr r0
/* 8062B550  3C 80 81 36 */	lis r4, struct_8135FB98+0x0@ha /* 0x8135FB98@ha */
/* 8062B554  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B55C  3B E4 FB 98 */	addi r31, r4, struct_8135FB98+0x0@l /* 0x8135FB98@l */
/* 8062B560  93 C1 00 08 */	stw r30, 8(r1)
/* 8062B564  7C 7E 1B 78 */	mr r30, r3
/* 8062B568  88 1F 00 00 */	lbz r0, 0(r31)
/* 8062B56C  28 00 00 00 */	cmplwi r0, 0
/* 8062B570  40 82 00 10 */	bne lbl_8062B580
/* 8062B574  38 00 00 01 */	li r0, 1
/* 8062B578  98 1F 00 00 */	stb r0, 0(r31)
/* 8062B57C  4B 9E 8C D9 */	bl Na_RestartPrepare
lbl_8062B580:
/* 8062B580  4B 9E 8D 11 */	bl Na_CheckRestartReady
/* 8062B584  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8062B588  28 00 00 01 */	cmplwi r0, 1
/* 8062B58C  40 82 00 0C */	bne lbl_8062B598
/* 8062B590  38 00 00 02 */	li r0, 2
/* 8062B594  98 1F 00 00 */	stb r0, 0(r31)
lbl_8062B598:
/* 8062B598  88 1F 00 00 */	lbz r0, 0(r31)
/* 8062B59C  28 00 00 02 */	cmplwi r0, 2
/* 8062B5A0  40 82 00 08 */	bne lbl_8062B5A8
/* 8062B5A4  4B 9E 8D 11 */	bl Na_Restart
lbl_8062B5A8:
/* 8062B5A8  38 60 00 00 */	li r3, 0
/* 8062B5AC  4B DD D2 8D */	bl padmgr_isConnectedController
/* 8062B5B0  2C 03 00 00 */	cmpwi r3, 0
/* 8062B5B4  41 82 00 0C */	beq lbl_8062B5C0
/* 8062B5B8  38 00 00 01 */	li r0, 1
/* 8062B5BC  98 1F 00 01 */	stb r0, 1(r31)
lbl_8062B5C0:
/* 8062B5C0  88 1F 00 00 */	lbz r0, 0(r31)
/* 8062B5C4  28 00 00 02 */	cmplwi r0, 2
/* 8062B5C8  40 82 00 3C */	bne lbl_8062B604
/* 8062B5CC  88 1F 00 01 */	lbz r0, 1(r31)
/* 8062B5D0  28 00 00 00 */	cmplwi r0, 0
/* 8062B5D4  40 82 00 10 */	bne lbl_8062B5E4
/* 8062B5D8  88 1F 00 02 */	lbz r0, 2(r31)
/* 8062B5DC  28 00 00 03 */	cmplwi r0, 3
/* 8062B5E0  40 81 00 24 */	ble lbl_8062B604
lbl_8062B5E4:
/* 8062B5E4  38 00 00 00 */	li r0, 0
/* 8062B5E8  3C 60 80 63 */	lis r3, trademark_init@ha /* 0x8062BDF0@ha */
/* 8062B5EC  98 1E 00 9F */	stb r0, 0x9f(r30)
/* 8062B5F0  38 03 BD F0 */	addi r0, r3, trademark_init@l /* 0x8062BDF0@l */
/* 8062B5F4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00025A70@ha */
/* 8062B5F8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8062B5FC  38 03 5A 70 */	addi r0, r3, 0x5A70 /* 0x00025A70@l */
/* 8062B600  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_8062B604:
/* 8062B604  88 7F 00 02 */	lbz r3, 2(r31)
/* 8062B608  38 03 00 01 */	addi r0, r3, 1
/* 8062B60C  98 1F 00 02 */	stb r0, 2(r31)
/* 8062B610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B614  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062B618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B61C  7C 08 03 A6 */	mtlr r0
/* 8062B620  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B624  4E 80 00 20 */	blr 
