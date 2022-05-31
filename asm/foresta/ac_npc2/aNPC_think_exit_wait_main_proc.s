lbl_80542DD4:
/* 80542DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542DD8  7C 08 02 A6 */	mflr r0
/* 80542DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542DE4  7C 7F 1B 78 */	mr r31, r3
/* 80542DE8  4B FF FF 75 */	bl aNPC_think_exit_wait_chk_interrupt
/* 80542DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80542DF0  40 82 00 5C */	bne lbl_80542E4C
/* 80542DF4  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80542DF8  28 00 00 FF */	cmplwi r0, 0xff
/* 80542DFC  40 82 00 50 */	bne lbl_80542E4C
/* 80542E00  7F E4 FB 78 */	mr r4, r31
/* 80542E04  38 60 00 07 */	li r3, 7
/* 80542E08  4B E5 74 5D */	bl mDemo_Check
/* 80542E0C  2C 03 00 00 */	cmpwi r3, 0
/* 80542E10  40 82 00 3C */	bne lbl_80542E4C
/* 80542E14  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80542E18  28 00 00 01 */	cmplwi r0, 1
/* 80542E1C  40 82 00 28 */	bne lbl_80542E44
/* 80542E20  3C 60 80 65 */	lis r3, lit_3169@ha /* 0x80649448@ha */
/* 80542E24  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80542E28  C0 03 94 48 */	lfs f0, lit_3169@l(r3)  /* 0x80649448@l */
/* 80542E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80542E30  4C 41 13 82 */	cror 2, 1, 2
/* 80542E34  40 82 00 10 */	bne lbl_80542E44
/* 80542E38  7F E3 FB 78 */	mr r3, r31
/* 80542E3C  4B FF FE B9 */	bl aNPC_think_exit_wait_setup_exit_info
/* 80542E40  48 00 00 0C */	b lbl_80542E4C
lbl_80542E44:
/* 80542E44  7F E3 FB 78 */	mr r3, r31
/* 80542E48  4B FF FD F1 */	bl func_80542C38
lbl_80542E4C:
/* 80542E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542E54  7C 08 03 A6 */	mtlr r0
/* 80542E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80542E5C  4E 80 00 20 */	blr 
