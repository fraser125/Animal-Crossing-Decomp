lbl_8046D86C:
/* 8046D86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046D870  7C 08 02 A6 */	mflr r0
/* 8046D874  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046D87C  7C 7F 1B 78 */	mr r31, r3
/* 8046D880  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8046D884  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8046D888  41 82 00 28 */	beq lbl_8046D8B0
/* 8046D88C  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8046D890  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8046D894  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 8046D898  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046D89C  40 80 00 14 */	bge lbl_8046D8B0
/* 8046D8A0  38 00 00 00 */	li r0, 0
/* 8046D8A4  B0 1F 00 68 */	sth r0, 0x68(r31)
/* 8046D8A8  48 00 00 49 */	bl okera_normal_process_init
/* 8046D8AC  48 00 00 30 */	b lbl_8046D8DC
lbl_8046D8B0:
/* 8046D8B0  7F E3 FB 78 */	mr r3, r31
/* 8046D8B4  4B FE D3 31 */	bl func_8045ABE4
/* 8046D8B8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8046D8BC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8046D8C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8046D8C4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8046D8C8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8046D8CC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8046D8D0  4B F9 E7 31 */	bl atans_table
/* 8046D8D4  7C 03 00 D0 */	neg r0, r3
/* 8046D8D8  B0 1F 00 68 */	sth r0, 0x68(r31)
lbl_8046D8DC:
/* 8046D8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046D8E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046D8E4  7C 08 03 A6 */	mtlr r0
/* 8046D8E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046D8EC  4E 80 00 20 */	blr 
