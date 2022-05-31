lbl_8058A4F0:
/* 8058A4F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058A4F4  7C 08 02 A6 */	mflr r0
/* 8058A4F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058A4FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058A500  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058A504  7C 7E 1B 78 */	mr r30, r3
/* 8058A508  3C 60 80 6C */	lis r3, dt_tbl@ha /* 0x806C2114@ha */
/* 8058A50C  88 9E 09 AD */	lbz r4, 0x9ad(r30)
/* 8058A510  38 03 21 14 */	addi r0, r3, dt_tbl@l /* 0x806C2114@l */
/* 8058A514  1C 64 00 03 */	mulli r3, r4, 3
/* 8058A518  7F E0 1A 14 */	add r31, r0, r3
/* 8058A51C  4B AD 27 D9 */	bl fqrand
/* 8058A520  3C 60 80 65 */	lis r3, lit_527@ha /* 0x80649B5C@ha */
/* 8058A524  88 1F 00 00 */	lbz r0, 0(r31)
/* 8058A528  C0 03 9B 5C */	lfs f0, lit_527@l(r3)  /* 0x80649B5C@l */
/* 8058A52C  80 9E 09 9C */	lwz r4, 0x99c(r30)
/* 8058A530  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058A534  FC 00 00 1E */	fctiwz f0, f0
/* 8058A538  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058A53C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8058A540  7C 60 1A 14 */	add r3, r0, r3
/* 8058A544  7C 64 1A 14 */	add r3, r4, r3
/* 8058A548  4B E0 DF CD */	bl mDemo_Set_msg_num
/* 8058A54C  88 7F 00 01 */	lbz r3, 1(r31)
/* 8058A550  4B E0 E2 F9 */	bl mDemo_Set_talk_turn
/* 8058A554  88 7F 00 02 */	lbz r3, 2(r31)
/* 8058A558  4B E0 E3 C9 */	bl mDemo_Set_camera
/* 8058A55C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8058A560  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8058A564  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8058A568  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058A56C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058A570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058A574  7C 08 03 A6 */	mtlr r0
/* 8058A578  38 21 00 20 */	addi r1, r1, 0x20
/* 8058A57C  4E 80 00 20 */	blr 
