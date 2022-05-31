lbl_803B2824:
/* 803B2824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2828  7C 08 02 A6 */	mflr r0
/* 803B282C  38 60 00 13 */	li r3, 0x13
/* 803B2830  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2834  4B C5 43 A1 */	bl JW_GetAramAddress
/* 803B2838  3C 80 81 17 */	lis r4, mHandbillz_table_pos@ha /* 0x81168160@ha */
/* 803B283C  90 64 81 60 */	stw r3, mHandbillz_table_pos@l(r4)  /* 0x81168160@l */
/* 803B2840  38 60 00 12 */	li r3, 0x12
/* 803B2844  4B C5 43 91 */	bl JW_GetAramAddress
/* 803B2848  3C 80 81 17 */	lis r4, mHandbillz_data_pos@ha /* 0x81168174@ha */
/* 803B284C  90 64 81 74 */	stw r3, mHandbillz_data_pos@l(r4)  /* 0x81168174@l */
/* 803B2850  38 60 00 04 */	li r3, 4
/* 803B2854  4B C5 43 81 */	bl JW_GetAramAddress
/* 803B2858  3C 80 81 17 */	lis r4, mHandbillz_table_pos@ha /* 0x81168160@ha */
/* 803B285C  38 84 81 60 */	addi r4, r4, mHandbillz_table_pos@l /* 0x81168160@l */
/* 803B2860  90 64 00 04 */	stw r3, 4(r4)
/* 803B2864  38 60 00 03 */	li r3, 3
/* 803B2868  4B C5 43 6D */	bl JW_GetAramAddress
/* 803B286C  3C 80 81 17 */	lis r4, mHandbillz_data_pos@ha /* 0x81168174@ha */
/* 803B2870  38 84 81 74 */	addi r4, r4, mHandbillz_data_pos@l /* 0x81168174@l */
/* 803B2874  90 64 00 04 */	stw r3, 4(r4)
/* 803B2878  38 60 00 06 */	li r3, 6
/* 803B287C  4B C5 43 59 */	bl JW_GetAramAddress
/* 803B2880  3C 80 81 17 */	lis r4, mHandbillz_table_pos@ha /* 0x81168160@ha */
/* 803B2884  38 84 81 60 */	addi r4, r4, mHandbillz_table_pos@l /* 0x81168160@l */
/* 803B2888  90 64 00 08 */	stw r3, 8(r4)
/* 803B288C  38 60 00 05 */	li r3, 5
/* 803B2890  4B C5 43 45 */	bl JW_GetAramAddress
/* 803B2894  3C 80 81 17 */	lis r4, mHandbillz_data_pos@ha /* 0x81168174@ha */
/* 803B2898  38 84 81 74 */	addi r4, r4, mHandbillz_data_pos@l /* 0x81168174@l */
/* 803B289C  90 64 00 08 */	stw r3, 8(r4)
/* 803B28A0  38 60 00 08 */	li r3, 8
/* 803B28A4  4B C5 43 31 */	bl JW_GetAramAddress
/* 803B28A8  3C 80 81 17 */	lis r4, mHandbillz_table_pos@ha /* 0x81168160@ha */
/* 803B28AC  38 84 81 60 */	addi r4, r4, mHandbillz_table_pos@l /* 0x81168160@l */
/* 803B28B0  90 64 00 0C */	stw r3, 0xc(r4)
/* 803B28B4  38 60 00 07 */	li r3, 7
/* 803B28B8  4B C5 43 1D */	bl JW_GetAramAddress
/* 803B28BC  3C 80 81 17 */	lis r4, mHandbillz_data_pos@ha /* 0x81168174@ha */
/* 803B28C0  38 84 81 74 */	addi r4, r4, mHandbillz_data_pos@l /* 0x81168174@l */
/* 803B28C4  90 64 00 0C */	stw r3, 0xc(r4)
/* 803B28C8  38 60 00 0D */	li r3, 0xd
/* 803B28CC  4B C5 43 09 */	bl JW_GetAramAddress
/* 803B28D0  3C 80 81 17 */	lis r4, mHandbillz_table_pos@ha /* 0x81168160@ha */
/* 803B28D4  38 84 81 60 */	addi r4, r4, mHandbillz_table_pos@l /* 0x81168160@l */
/* 803B28D8  90 64 00 10 */	stw r3, 0x10(r4)
/* 803B28DC  38 60 00 0C */	li r3, 0xc
/* 803B28E0  4B C5 42 F5 */	bl JW_GetAramAddress
/* 803B28E4  3C 80 81 17 */	lis r4, mHandbillz_data_pos@ha /* 0x81168174@ha */
/* 803B28E8  38 84 81 74 */	addi r4, r4, mHandbillz_data_pos@l /* 0x81168174@l */
/* 803B28EC  90 64 00 10 */	stw r3, 0x10(r4)
/* 803B28F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B28F4  7C 08 03 A6 */	mtlr r0
/* 803B28F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B28FC  4E 80 00 20 */	blr 
