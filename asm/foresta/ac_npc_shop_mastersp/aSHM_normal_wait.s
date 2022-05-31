lbl_8057D988:
/* 8057D988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D98C  7C 08 02 A6 */	mflr r0
/* 8057D990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D998  7C 9F 23 78 */	mr r31, r4
/* 8057D99C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D9A0  7C 7E 1B 78 */	mr r30, r3
/* 8057D9A4  A8 63 00 B6 */	lha r3, 0xb6(r3)
/* 8057D9A8  7C 60 07 35 */	extsh. r0, r3
/* 8057D9AC  7C 03 00 D0 */	neg r0, r3
/* 8057D9B0  41 80 00 08 */	blt lbl_8057D9B8
/* 8057D9B4  7C 60 1B 78 */	mr r0, r3
lbl_8057D9B8:
/* 8057D9B8  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 8057D9BC  40 81 00 20 */	ble lbl_8057D9DC
/* 8057D9C0  7F C3 F3 78 */	mr r3, r30
/* 8057D9C4  7F E4 FB 78 */	mr r4, r31
/* 8057D9C8  38 A0 00 02 */	li r5, 2
/* 8057D9CC  48 00 08 75 */	bl aSHM_setup_think_proc
/* 8057D9D0  3C 60 80 65 */	lis r3, lit_842@ha /* 0x80649A18@ha */
/* 8057D9D4  C0 03 9A 18 */	lfs f0, lit_842@l(r3)  /* 0x80649A18@l */
/* 8057D9D8  D0 1E 01 44 */	stfs f0, 0x144(r30)
lbl_8057D9DC:
/* 8057D9DC  7F C3 F3 78 */	mr r3, r30
/* 8057D9E0  7F E4 FB 78 */	mr r4, r31
/* 8057D9E4  4B FF FF 29 */	bl aSHM_normal_wait_common
/* 8057D9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D9F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D9F4  7C 08 03 A6 */	mtlr r0
/* 8057D9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D9FC  4E 80 00 20 */	blr 
