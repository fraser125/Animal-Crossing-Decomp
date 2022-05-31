lbl_803A3118:
/* 803A3118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A311C  7C 08 02 A6 */	mflr r0
/* 803A3120  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A3124  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A3128  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A312C  3C 84 00 02 */	addis r4, r4, 2
/* 803A3130  80 84 61 14 */	lwz r4, 0x6114(r4)
/* 803A3134  28 04 00 12 */	cmplwi r4, 0x12
/* 803A3138  41 80 00 08 */	blt lbl_803A3140
/* 803A313C  38 80 00 00 */	li r4, 0
lbl_803A3140:
/* 803A3140  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A3144  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803A3148  80 05 00 14 */	lwz r0, 0x14(r5)
/* 803A314C  2C 00 00 26 */	cmpwi r0, 0x26
/* 803A3150  40 82 00 08 */	bne lbl_803A3158
/* 803A3154  38 80 00 04 */	li r4, 4
lbl_803A3158:
/* 803A3158  3C C0 80 65 */	lis r6, field_pal_idx_table_830@ha /* 0x80653830@ha */
/* 803A315C  54 88 10 3A */	slwi r8, r4, 2
/* 803A3160  38 E6 38 30 */	addi r7, r6, field_pal_idx_table_830@l /* 0x80653830@l */
/* 803A3164  3C A0 80 C9 */	lis r5, mFM_earth_pal@ha /* 0x80C90000@ha */
/* 803A3168  7C E7 40 2E */	lwzx r7, r7, r8
/* 803A316C  38 C5 00 00 */	addi r6, r5, mFM_earth_pal@l /* 0x80C90000@l */
/* 803A3170  38 00 00 10 */	li r0, 0x10
/* 803A3174  38 A0 00 00 */	li r5, 0
/* 803A3178  54 E7 28 34 */	slwi r7, r7, 5
/* 803A317C  7D 06 3A 14 */	add r8, r6, r7
/* 803A3180  7C 09 03 A6 */	mtctr r0
lbl_803A3184:
/* 803A3184  7C 08 2A 2E */	lhzx r0, r8, r5
/* 803A3188  80 C3 00 00 */	lwz r6, 0(r3)
/* 803A318C  7C 06 2B 2E */	sthx r0, r6, r5
/* 803A3190  38 A5 00 02 */	addi r5, r5, 2
/* 803A3194  42 00 FF F0 */	bdnz lbl_803A3184
/* 803A3198  3C A0 80 C8 */	lis r5, data_80C78888@ha /* 0x80C78888@ha */
/* 803A319C  38 00 00 10 */	li r0, 0x10
/* 803A31A0  38 A5 88 88 */	addi r5, r5, data_80C78888@l /* 0x80C78888@l */
/* 803A31A4  7D 05 3A 14 */	add r8, r5, r7
/* 803A31A8  38 A0 00 00 */	li r5, 0
/* 803A31AC  7C 09 03 A6 */	mtctr r0
lbl_803A31B0:
/* 803A31B0  7C 08 2A 2E */	lhzx r0, r8, r5
/* 803A31B4  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A31B8  7C 06 2B 2E */	sthx r0, r6, r5
/* 803A31BC  38 A5 00 02 */	addi r5, r5, 2
/* 803A31C0  42 00 FF F0 */	bdnz lbl_803A31B0
/* 803A31C4  3C A0 80 C8 */	lis r5, mFM_bush_pal@ha /* 0x80C78580@ha */
/* 803A31C8  38 00 00 10 */	li r0, 0x10
/* 803A31CC  38 A5 85 80 */	addi r5, r5, mFM_bush_pal@l /* 0x80C78580@l */
/* 803A31D0  7C E5 3A 14 */	add r7, r5, r7
/* 803A31D4  38 A0 00 00 */	li r5, 0
/* 803A31D8  7C 09 03 A6 */	mtctr r0
lbl_803A31DC:
/* 803A31DC  7C 07 2A 2E */	lhzx r0, r7, r5
/* 803A31E0  80 C3 00 08 */	lwz r6, 8(r3)
/* 803A31E4  7C 06 2B 2E */	sthx r0, r6, r5
/* 803A31E8  38 A5 00 02 */	addi r5, r5, 2
/* 803A31EC  42 00 FF F0 */	bdnz lbl_803A31DC
/* 803A31F0  4B FF FD ED */	bl mFM_SetFGPal
/* 803A31F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A31F8  7C 08 03 A6 */	mtlr r0
/* 803A31FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803A3200  4E 80 00 20 */	blr 
