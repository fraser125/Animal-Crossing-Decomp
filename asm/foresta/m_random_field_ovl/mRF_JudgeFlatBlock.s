lbl_8050A9A8:
/* 8050A9A8  2C 05 00 00 */	cmpwi r5, 0
/* 8050A9AC  41 80 00 1C */	blt lbl_8050A9C8
/* 8050A9B0  2C 05 00 03 */	cmpwi r5, 3
/* 8050A9B4  40 80 00 14 */	bge lbl_8050A9C8
/* 8050A9B8  2C 06 00 00 */	cmpwi r6, 0
/* 8050A9BC  41 80 00 0C */	blt lbl_8050A9C8
/* 8050A9C0  2C 06 00 03 */	cmpwi r6, 3
/* 8050A9C4  41 80 00 0C */	blt lbl_8050A9D0
lbl_8050A9C8:
/* 8050A9C8  38 60 00 00 */	li r3, 0
/* 8050A9CC  4E 80 00 20 */	blr 
lbl_8050A9D0:
/* 8050A9D0  2C 04 00 00 */	cmpwi r4, 0
/* 8050A9D4  41 80 00 0C */	blt lbl_8050A9E0
/* 8050A9D8  2C 04 00 38 */	cmpwi r4, 0x38
/* 8050A9DC  41 80 00 0C */	blt lbl_8050A9E8
lbl_8050A9E0:
/* 8050A9E0  38 60 00 00 */	li r3, 0
/* 8050A9E4  4E 80 00 20 */	blr 
lbl_8050A9E8:
/* 8050A9E8  7C 03 20 AE */	lbzx r0, r3, r4
/* 8050A9EC  28 00 00 27 */	cmplwi r0, 0x27
/* 8050A9F0  40 82 00 C4 */	bne lbl_8050AAB4
/* 8050A9F4  2C 06 00 02 */	cmpwi r6, 2
/* 8050A9F8  41 82 00 60 */	beq lbl_8050AA58
/* 8050A9FC  2C 05 00 02 */	cmpwi r5, 2
/* 8050AA00  41 82 00 38 */	beq lbl_8050AA38
/* 8050AA04  3C 60 81 1D */	lis r3, mRF_river_left_right_info@ha /* 0x811D3324@ha */
/* 8050AA08  54 84 08 3C */	slwi r4, r4, 1
/* 8050AA0C  38 63 33 24 */	addi r3, r3, mRF_river_left_right_info@l /* 0x811D3324@l */
/* 8050AA10  7C 03 22 AE */	lhax r0, r3, r4
/* 8050AA14  7C 05 00 00 */	cmpw r5, r0
/* 8050AA18  40 82 00 9C */	bne lbl_8050AAB4
/* 8050AA1C  3C 60 81 1D */	lis r3, mRF_cliff_up_down_info@ha /* 0x811D33B0@ha */
/* 8050AA20  38 63 33 B0 */	addi r3, r3, mRF_cliff_up_down_info@l /* 0x811D33B0@l */
/* 8050AA24  7C 03 22 AE */	lhax r0, r3, r4
/* 8050AA28  7C 06 00 00 */	cmpw r6, r0
/* 8050AA2C  40 82 00 88 */	bne lbl_8050AAB4
/* 8050AA30  38 60 00 01 */	li r3, 1
/* 8050AA34  4E 80 00 20 */	blr 
lbl_8050AA38:
/* 8050AA38  3C 60 81 1D */	lis r3, mRF_cliff_up_down_info@ha /* 0x811D33B0@ha */
/* 8050AA3C  54 80 08 3C */	slwi r0, r4, 1
/* 8050AA40  38 63 33 B0 */	addi r3, r3, mRF_cliff_up_down_info@l /* 0x811D33B0@l */
/* 8050AA44  7C 03 02 AE */	lhax r0, r3, r0
/* 8050AA48  7C 06 00 00 */	cmpw r6, r0
/* 8050AA4C  40 82 00 68 */	bne lbl_8050AAB4
/* 8050AA50  38 60 00 01 */	li r3, 1
/* 8050AA54  4E 80 00 20 */	blr 
lbl_8050AA58:
/* 8050AA58  2C 05 00 02 */	cmpwi r5, 2
/* 8050AA5C  41 82 00 38 */	beq lbl_8050AA94
/* 8050AA60  3C 60 81 1D */	lis r3, mRF_river_left_right_info@ha /* 0x811D3324@ha */
/* 8050AA64  54 84 08 3C */	slwi r4, r4, 1
/* 8050AA68  38 63 33 24 */	addi r3, r3, mRF_river_left_right_info@l /* 0x811D3324@l */
/* 8050AA6C  7C 03 22 AE */	lhax r0, r3, r4
/* 8050AA70  7C 05 00 00 */	cmpw r5, r0
/* 8050AA74  40 82 00 40 */	bne lbl_8050AAB4
/* 8050AA78  3C 60 81 1D */	lis r3, mRF_cliff_up_down_info@ha /* 0x811D33B0@ha */
/* 8050AA7C  38 63 33 B0 */	addi r3, r3, mRF_cliff_up_down_info@l /* 0x811D33B0@l */
/* 8050AA80  7C 03 22 AE */	lhax r0, r3, r4
/* 8050AA84  7C 06 00 00 */	cmpw r6, r0
/* 8050AA88  40 82 00 2C */	bne lbl_8050AAB4
/* 8050AA8C  38 60 00 01 */	li r3, 1
/* 8050AA90  4E 80 00 20 */	blr 
lbl_8050AA94:
/* 8050AA94  3C 60 81 1D */	lis r3, mRF_cliff_up_down_info@ha /* 0x811D33B0@ha */
/* 8050AA98  54 80 08 3C */	slwi r0, r4, 1
/* 8050AA9C  38 63 33 B0 */	addi r3, r3, mRF_cliff_up_down_info@l /* 0x811D33B0@l */
/* 8050AAA0  7C 03 02 AE */	lhax r0, r3, r0
/* 8050AAA4  7C 06 00 00 */	cmpw r6, r0
/* 8050AAA8  40 82 00 0C */	bne lbl_8050AAB4
/* 8050AAAC  38 60 00 01 */	li r3, 1
/* 8050AAB0  4E 80 00 20 */	blr 
lbl_8050AAB4:
/* 8050AAB4  38 60 00 00 */	li r3, 0
/* 8050AAB8  4E 80 00 20 */	blr 
