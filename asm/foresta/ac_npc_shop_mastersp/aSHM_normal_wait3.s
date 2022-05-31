lbl_8057DA58:
/* 8057DA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DA5C  7C 08 02 A6 */	mflr r0
/* 8057DA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DA68  7C 9F 23 78 */	mr r31, r4
/* 8057DA6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DA70  7C 7E 1B 78 */	mr r30, r3
/* 8057DA74  A8 63 00 B6 */	lha r3, 0xb6(r3)
/* 8057DA78  7C 60 07 35 */	extsh. r0, r3
/* 8057DA7C  7C 03 00 D0 */	neg r0, r3
/* 8057DA80  41 80 00 08 */	blt lbl_8057DA88
/* 8057DA84  7C 60 1B 78 */	mr r0, r3
lbl_8057DA88:
/* 8057DA88  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 8057DA8C  40 80 00 20 */	bge lbl_8057DAAC
/* 8057DA90  7F C3 F3 78 */	mr r3, r30
/* 8057DA94  7F E4 FB 78 */	mr r4, r31
/* 8057DA98  38 A0 00 00 */	li r5, 0
/* 8057DA9C  48 00 07 A5 */	bl aSHM_setup_think_proc
/* 8057DAA0  3C 60 80 65 */	lis r3, lit_697@ha /* 0x80649A14@ha */
/* 8057DAA4  C0 03 9A 14 */	lfs f0, lit_697@l(r3)  /* 0x80649A14@l */
/* 8057DAA8  D0 1E 01 44 */	stfs f0, 0x144(r30)
lbl_8057DAAC:
/* 8057DAAC  7F C3 F3 78 */	mr r3, r30
/* 8057DAB0  7F E4 FB 78 */	mr r4, r31
/* 8057DAB4  4B FF FE 59 */	bl aSHM_normal_wait_common
/* 8057DAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DAC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DAC4  7C 08 03 A6 */	mtlr r0
/* 8057DAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DACC  4E 80 00 20 */	blr 
