lbl_805EED90:
/* 805EED90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EED94  7C 08 02 A6 */	mflr r0
/* 805EED98  3C 80 80 6D */	lis r4, mSM_program_dlftbl@ha /* 0x806CF1A4@ha */
/* 805EED9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EEDA0  38 04 F1 A4 */	addi r0, r4, mSM_program_dlftbl@l /* 0x806CF1A4@l */
/* 805EEDA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EEDA8  93 C1 00 08 */	stw r30, 8(r1)
/* 805EEDAC  7C 7E 1B 78 */	mr r30, r3
/* 805EEDB0  83 E3 00 04 */	lwz r31, 4(r3)
/* 805EEDB4  57 E4 28 34 */	slwi r4, r31, 5
/* 805EEDB8  7C 80 22 14 */	add r4, r0, r4
/* 805EEDBC  4B FF FE 45 */	bl mSM_ovl_prog_seg
/* 805EEDC0  93 FE 00 08 */	stw r31, 8(r30)
/* 805EEDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EEDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EEDCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EEDD0  7C 08 03 A6 */	mtlr r0
/* 805EEDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 805EEDD8  4E 80 00 20 */	blr 
