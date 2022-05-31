lbl_8058F2FC:
/* 8058F2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058F300  7C 08 02 A6 */	mflr r0
/* 8058F304  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058F308  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058F30C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058F310  7C 7E 1B 78 */	mr r30, r3
/* 8058F314  3C 60 80 6C */	lis r3, dt_tbl@ha /* 0x806C2690@ha */
/* 8058F318  88 9E 09 A4 */	lbz r4, 0x9a4(r30)
/* 8058F31C  38 03 26 90 */	addi r0, r3, dt_tbl@l /* 0x806C2690@l */
/* 8058F320  54 83 18 38 */	slwi r3, r4, 3
/* 8058F324  7F E0 1A 14 */	add r31, r0, r3
/* 8058F328  4B AC D9 CD */	bl fqrand
/* 8058F32C  3C 60 80 65 */	lis r3, lit_508@ha /* 0x80649C00@ha */
/* 8058F330  80 1F 00 00 */	lwz r0, 0(r31)
/* 8058F334  38 83 9C 00 */	addi r4, r3, lit_508@l /* 0x80649C00@l */
/* 8058F338  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 8058F33C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8058F340  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058F344  FC 00 00 1E */	fctiwz f0, f0
/* 8058F348  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058F34C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8058F350  7C 00 22 14 */	add r0, r0, r4
/* 8058F354  7C 63 02 14 */	add r3, r3, r0
/* 8058F358  4B E0 91 BD */	bl mDemo_Set_msg_num
/* 8058F35C  88 7F 00 04 */	lbz r3, 4(r31)
/* 8058F360  4B E0 94 E9 */	bl mDemo_Set_talk_turn
/* 8058F364  88 7F 00 05 */	lbz r3, 5(r31)
/* 8058F368  4B E0 95 B9 */	bl mDemo_Set_camera
/* 8058F36C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8058F370  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8058F374  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8058F378  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058F37C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058F380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058F384  7C 08 03 A6 */	mtlr r0
/* 8058F388  38 21 00 20 */	addi r1, r1, 0x20
/* 8058F38C  4E 80 00 20 */	blr 
