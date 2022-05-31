lbl_806394BC:
/* 806394BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806394C0  7C 08 02 A6 */	mflr r0
/* 806394C4  7C 68 1B 78 */	mr r8, r3
/* 806394C8  3C C0 80 64 */	lis r6, aSumLogHatoclk_DwBefore@ha /* 0x8063949C@ha */
/* 806394CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806394D0  3C 80 80 64 */	lis r4, aSumLogHatoclk_DwAfter@ha /* 0x8063921C@ha */
/* 806394D4  38 E4 92 1C */	addi r7, r4, aSumLogHatoclk_DwAfter@l /* 0x8063921C@l */
/* 806394D8  7C A3 2B 78 */	mr r3, r5
/* 806394DC  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 806394E0  38 C6 94 9C */	addi r6, r6, aSumLogHatoclk_DwBefore@l /* 0x8063949C@l */
/* 806394E4  38 88 01 34 */	addi r4, r8, 0x134
/* 806394E8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806394EC  1C A0 03 00 */	mulli r5, r0, 0x300
/* 806394F0  38 A5 02 10 */	addi r5, r5, 0x210
/* 806394F4  7C A8 2A 14 */	add r5, r8, r5
/* 806394F8  4B D3 82 41 */	bl cKF_Si3_draw_R_SV
/* 806394FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639500  7C 08 03 A6 */	mtlr r0
/* 80639504  38 21 00 10 */	addi r1, r1, 0x10
/* 80639508  4E 80 00 20 */	blr 
