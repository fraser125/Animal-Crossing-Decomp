lbl_804F1488:
/* 804F1488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F148C  7C 08 02 A6 */	mflr r0
/* 804F1490  38 80 01 68 */	li r4, 0x168
/* 804F1494  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F149C  7C 7F 1B 78 */	mr r31, r3
/* 804F14A0  38 60 00 7D */	li r3, 0x7d
/* 804F14A4  4B E8 AE 81 */	bl mBGMPsComp_delete_ps_demo
/* 804F14A8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F14AC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804F14B0  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 804F14B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F14B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F14BC  7C 08 03 A6 */	mtlr r0
/* 804F14C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F14C4  4E 80 00 20 */	blr 
