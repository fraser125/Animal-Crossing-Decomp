lbl_80591080:
/* 80591080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591084  7C 08 02 A6 */	mflr r0
/* 80591088  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059108C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80591090  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80591094  7C 7E 1B 78 */	mr r30, r3
/* 80591098  4B E4 0E 69 */	bl mNpc_GetNpcLooks
/* 8059109C  83 DE 09 A0 */	lwz r30, 0x9a0(r30)
/* 805910A0  7C 7F 1B 78 */	mr r31, r3
/* 805910A4  2C 1E 00 04 */	cmpwi r30, 4
/* 805910A8  41 80 00 08 */	blt lbl_805910B0
/* 805910AC  3B DE FF FF */	addi r30, r30, -1
lbl_805910B0:
/* 805910B0  4B AC BC 45 */	bl fqrand
/* 805910B4  3C 80 80 65 */	lis r4, lit_468@ha /* 0x80649C68@ha */
/* 805910B8  3C 60 80 6C */	lis r3, msg_base@ha /* 0x806C2864@ha */
/* 805910BC  38 A4 9C 68 */	addi r5, r4, lit_468@l /* 0x80649C68@l */
/* 805910C0  C0 05 00 00 */	lfs f0, 0(r5)
/* 805910C4  57 E4 10 3A */	slwi r4, r31, 2
/* 805910C8  38 63 28 64 */	addi r3, r3, msg_base@l /* 0x806C2864@l */
/* 805910CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805910D0  1C 1E 00 03 */	mulli r0, r30, 3
/* 805910D4  7C 83 20 2E */	lwzx r4, r3, r4
/* 805910D8  FC 00 00 1E */	fctiwz f0, f0
/* 805910DC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805910E0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805910E4  7C 60 1A 14 */	add r3, r0, r3
/* 805910E8  7C 64 1A 14 */	add r3, r4, r3
/* 805910EC  4B E0 74 29 */	bl mDemo_Set_msg_num
/* 805910F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805910F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805910F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805910FC  7C 08 03 A6 */	mtlr r0
/* 80591100  38 21 00 20 */	addi r1, r1, 0x20
/* 80591104  4E 80 00 20 */	blr 
