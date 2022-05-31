lbl_8058E9B0:
/* 8058E9B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058E9B4  7C 08 02 A6 */	mflr r0
/* 8058E9B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058E9BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058E9C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058E9C4  7C 7E 1B 78 */	mr r30, r3
/* 8058E9C8  3C 60 80 6C */	lis r3, dt_tbl@ha /* 0x806C2608@ha */
/* 8058E9CC  88 9E 09 A8 */	lbz r4, 0x9a8(r30)
/* 8058E9D0  38 03 26 08 */	addi r0, r3, dt_tbl@l /* 0x806C2608@l */
/* 8058E9D4  54 83 18 38 */	slwi r3, r4, 3
/* 8058E9D8  7F E0 1A 14 */	add r31, r0, r3
/* 8058E9DC  4B AC E3 19 */	bl fqrand
/* 8058E9E0  3C 60 80 65 */	lis r3, lit_526@ha /* 0x80649BEC@ha */
/* 8058E9E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8058E9E8  38 83 9B EC */	addi r4, r3, lit_526@l /* 0x80649BEC@l */
/* 8058E9EC  80 7E 09 A0 */	lwz r3, 0x9a0(r30)
/* 8058E9F0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8058E9F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058E9F8  FC 00 00 1E */	fctiwz f0, f0
/* 8058E9FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058EA00  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8058EA04  7C 00 22 14 */	add r0, r0, r4
/* 8058EA08  7C 63 02 14 */	add r3, r3, r0
/* 8058EA0C  4B E0 9B 09 */	bl mDemo_Set_msg_num
/* 8058EA10  88 7F 00 04 */	lbz r3, 4(r31)
/* 8058EA14  4B E0 9E 35 */	bl mDemo_Set_talk_turn
/* 8058EA18  88 7F 00 05 */	lbz r3, 5(r31)
/* 8058EA1C  4B E0 9F 05 */	bl mDemo_Set_camera
/* 8058EA20  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8058EA24  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8058EA28  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8058EA2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058EA30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058EA34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058EA38  7C 08 03 A6 */	mtlr r0
/* 8058EA3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8058EA40  4E 80 00 20 */	blr 
