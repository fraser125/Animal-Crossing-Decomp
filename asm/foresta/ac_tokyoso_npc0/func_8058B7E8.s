lbl_8058B7E8:
/* 8058B7E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058B7EC  7C 08 02 A6 */	mflr r0
/* 8058B7F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058B7F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058B7F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058B7FC  7C 7E 1B 78 */	mr r30, r3
/* 8058B800  3C 60 80 6C */	lis r3, dt_tbl@ha /* 0x806C2220@ha */
/* 8058B804  A8 9E 09 A8 */	lha r4, 0x9a8(r30)
/* 8058B808  38 03 22 20 */	addi r0, r3, dt_tbl@l /* 0x806C2220@l */
/* 8058B80C  1C 64 00 0C */	mulli r3, r4, 0xc
/* 8058B810  7F E0 1A 14 */	add r31, r0, r3
/* 8058B814  4B AD 14 E1 */	bl fqrand
/* 8058B818  3C 60 80 65 */	lis r3, lit_526@ha /* 0x80649BA4@ha */
/* 8058B81C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8058B820  38 83 9B A4 */	addi r4, r3, lit_526@l /* 0x80649BA4@l */
/* 8058B824  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 8058B828  C0 04 00 00 */	lfs f0, 0(r4)
/* 8058B82C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058B830  FC 00 00 1E */	fctiwz f0, f0
/* 8058B834  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058B838  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8058B83C  7C 00 22 14 */	add r0, r0, r4
/* 8058B840  7C 63 02 14 */	add r3, r3, r0
/* 8058B844  4B E0 CC D1 */	bl mDemo_Set_msg_num
/* 8058B848  88 7F 00 04 */	lbz r3, 4(r31)
/* 8058B84C  4B E0 CF FD */	bl mDemo_Set_talk_turn
/* 8058B850  88 7F 00 05 */	lbz r3, 5(r31)
/* 8058B854  4B E0 D0 CD */	bl mDemo_Set_camera
/* 8058B858  80 1F 00 08 */	lwz r0, 8(r31)
/* 8058B85C  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8058B860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058B864  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058B868  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058B86C  7C 08 03 A6 */	mtlr r0
/* 8058B870  38 21 00 20 */	addi r1, r1, 0x20
/* 8058B874  4E 80 00 20 */	blr 
