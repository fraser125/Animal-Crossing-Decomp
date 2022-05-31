lbl_8039A650:
/* 8039A650  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039A654  2C 03 01 6F */	cmpwi r3, 0x16f
/* 8039A658  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8039A65C  3C A5 00 02 */	addis r5, r5, 2
/* 8039A660  38 80 01 6E */	li r4, 0x16e
/* 8039A664  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8039A668  38 A5 23 E0 */	addi r5, r5, 0x23e0
/* 8039A66C  40 80 00 08 */	bge lbl_8039A674
/* 8039A670  7C 64 1B 78 */	mr r4, r3
lbl_8039A674:
/* 8039A674  2C 04 01 6E */	cmpwi r4, 0x16e
/* 8039A678  40 82 00 2C */	bne lbl_8039A6A4
/* 8039A67C  7C 80 1E 70 */	srawi r0, r4, 3
/* 8039A680  54 83 07 7E */	clrlwi r3, r4, 0x1d
/* 8039A684  7C 85 02 14 */	add r4, r5, r0
/* 8039A688  38 00 00 02 */	li r0, 2
/* 8039A68C  88 84 00 04 */	lbz r4, 4(r4)
/* 8039A690  7C 83 1E 30 */	sraw r3, r4, r3
/* 8039A694  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 8039A698  7C 63 00 D0 */	neg r3, r3
/* 8039A69C  7C 03 18 38 */	and r3, r0, r3
/* 8039A6A0  4E 80 00 20 */	blr 
lbl_8039A6A4:
/* 8039A6A4  7C 83 1E 70 */	srawi r3, r4, 3
/* 8039A6A8  54 80 07 7E */	clrlwi r0, r4, 0x1d
/* 8039A6AC  7C 65 1A 14 */	add r3, r5, r3
/* 8039A6B0  88 63 00 04 */	lbz r3, 4(r3)
/* 8039A6B4  7C 60 06 30 */	sraw r0, r3, r0
/* 8039A6B8  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8039A6BC  4E 80 00 20 */	blr 
