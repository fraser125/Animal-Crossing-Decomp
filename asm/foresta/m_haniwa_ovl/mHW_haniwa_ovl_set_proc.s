lbl_805E0840:
/* 805E0840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E0844  7C 08 02 A6 */	mflr r0
/* 805E0848  3C 80 80 5E */	lis r4, mHW_haniwa_ovl_move@ha /* 0x805E02C0@ha */
/* 805E084C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E0850  38 04 02 C0 */	addi r0, r4, mHW_haniwa_ovl_move@l /* 0x805E02C0@l */
/* 805E0854  3C 80 80 5E */	lis r4, mHW_haniwa_ovl_draw@ha /* 0x805E07E8@ha */
/* 805E0858  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E085C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E0860  38 04 07 E8 */	addi r0, r4, mHW_haniwa_ovl_draw@l /* 0x805E07E8@l */
/* 805E0864  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E0868  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E086C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805E0870  28 04 00 00 */	cmplwi r4, 0
/* 805E0874  41 82 00 10 */	beq lbl_805E0884
/* 805E0878  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805E087C  7D 89 03 A6 */	mtctr r12
/* 805E0880  4E 80 04 21 */	bctrl 
lbl_805E0884:
/* 805E0884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E0888  7C 08 03 A6 */	mtlr r0
/* 805E088C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E0890  4E 80 00 20 */	blr 
