lbl_8039AFD8:
/* 8039AFD8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039AFDC  3C 80 80 65 */	lis r4, last_day@ha /* 0x80651EDC@ha */
/* 8039AFE0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8039AFE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8039AFE8  38 64 1E DC */	addi r3, r4, last_day@l /* 0x80651EDC@l */
/* 8039AFEC  3C 85 00 02 */	addis r4, r5, 2
/* 8039AFF0  28 00 00 02 */	cmplwi r0, 2
/* 8039AFF4  7C 63 02 14 */	add r3, r3, r0
/* 8039AFF8  A0 84 61 26 */	lhz r4, 0x6126(r4)
/* 8039AFFC  88 63 FF FF */	lbz r3, -1(r3)
/* 8039B000  4C 82 00 20 */	bnelr 
/* 8039B004  54 80 F0 02 */	slwi r0, r4, 0x1e
/* 8039B008  54 83 0F FE */	srwi r3, r4, 0x1f
/* 8039B00C  7C 03 00 50 */	subf r0, r3, r0
/* 8039B010  54 00 10 3E */	rotlwi r0, r0, 2
/* 8039B014  7C 00 1A 15 */	add. r0, r0, r3
/* 8039B018  40 82 00 18 */	bne lbl_8039B030
/* 8039B01C  38 60 00 64 */	li r3, 0x64
/* 8039B020  7C 04 1B D6 */	divw r0, r4, r3
/* 8039B024  7C 00 19 D6 */	mullw r0, r0, r3
/* 8039B028  7C 00 20 51 */	subf. r0, r0, r4
/* 8039B02C  40 82 00 18 */	bne lbl_8039B044
lbl_8039B030:
/* 8039B030  38 60 01 90 */	li r3, 0x190
/* 8039B034  7C 04 1B D6 */	divw r0, r4, r3
/* 8039B038  7C 00 19 D6 */	mullw r0, r0, r3
/* 8039B03C  7C 00 20 51 */	subf. r0, r0, r4
/* 8039B040  40 82 00 0C */	bne lbl_8039B04C
lbl_8039B044:
/* 8039B044  38 60 00 1D */	li r3, 0x1d
/* 8039B048  4E 80 00 20 */	blr 
lbl_8039B04C:
/* 8039B04C  38 60 00 1C */	li r3, 0x1c
/* 8039B050  4E 80 00 20 */	blr 
