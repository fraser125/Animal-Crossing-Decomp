lbl_805A37A0:
/* 805A37A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A37A4  7C 08 02 A6 */	mflr r0
/* 805A37A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A37AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A37B0  7C 7F 1B 78 */	mr r31, r3
/* 805A37B4  4B FF FF C1 */	bl aGTT_Get_flow_angle_rv
/* 805A37B8  7C 68 1B 78 */	mr r8, r3
/* 805A37BC  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A37C0  7D 03 07 34 */	extsh r3, r8
/* 805A37C4  7C 63 00 50 */	subf r3, r3, r0
/* 805A37C8  7C 60 07 35 */	extsh. r0, r3
/* 805A37CC  7C 60 07 34 */	extsh r0, r3
/* 805A37D0  7C E0 00 D0 */	neg r7, r0
/* 805A37D4  41 80 00 08 */	blt lbl_805A37DC
/* 805A37D8  7C 07 03 78 */	mr r7, r0
lbl_805A37DC:
/* 805A37DC  38 00 40 00 */	li r0, 0x4000
/* 805A37E0  3C 80 80 6C */	lis r4, angl_add_table@ha /* 0x806C3F18@ha */
/* 805A37E4  7C E0 02 78 */	xor r0, r7, r0
/* 805A37E8  38 7F 00 36 */	addi r3, r31, 0x36
/* 805A37EC  7C 06 0E 70 */	srawi r6, r0, 1
/* 805A37F0  38 A4 3F 18 */	addi r5, r4, angl_add_table@l /* 0x806C3F18@l */
/* 805A37F4  7C 00 38 38 */	and r0, r0, r7
/* 805A37F8  7D 04 07 34 */	extsh r4, r8
/* 805A37FC  7C 00 30 50 */	subf r0, r0, r6
/* 805A3800  54 00 17 BC */	rlwinm r0, r0, 2, 0x1e, 0x1e
/* 805A3804  7C A5 02 AE */	lhax r5, r5, r0
/* 805A3808  4B E1 73 3D */	bl chase_angle
/* 805A380C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A3810  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A3814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A381C  7C 08 03 A6 */	mtlr r0
/* 805A3820  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3824  4E 80 00 20 */	blr 
