lbl_803B2900:
/* 803B2900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2904  7C 08 02 A6 */	mflr r0
/* 803B2908  3C 80 81 17 */	lis r4, mHandbillz_table_pos@ha /* 0x81168160@ha */
/* 803B290C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2910  38 C4 81 60 */	addi r6, r4, mHandbillz_table_pos@l /* 0x81168160@l */
/* 803B2914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B2918  7C 7F 1B 78 */	mr r31, r3
/* 803B291C  38 FF 00 14 */	addi r7, r31, 0x14
/* 803B2920  80 03 00 00 */	lwz r0, 0(r3)
/* 803B2924  3C 60 81 17 */	lis r3, mHandbillz_data_pos@ha /* 0x81168174@ha */
/* 803B2928  38 83 81 74 */	addi r4, r3, mHandbillz_data_pos@l /* 0x81168174@l */
/* 803B292C  80 BF 00 04 */	lwz r5, 4(r31)
/* 803B2930  54 00 10 3A */	slwi r0, r0, 2
/* 803B2934  7C 66 00 2E */	lwzx r3, r6, r0
/* 803B2938  38 DF 00 10 */	addi r6, r31, 0x10
/* 803B293C  7C 84 00 2E */	lwzx r4, r4, r0
/* 803B2940  48 00 DD B9 */	bl mMsg_Get_BodyParam
/* 803B2944  80 1F 00 00 */	lwz r0, 0(r31)
/* 803B2948  3C 60 80 65 */	lis r3, mHandbillz_dummy_size_tbl@ha /* 0x806545B0@ha */
/* 803B294C  38 83 45 B0 */	addi r4, r3, mHandbillz_dummy_size_tbl@l /* 0x806545B0@l */
/* 803B2950  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 803B2954  54 00 10 3A */	slwi r0, r0, 2
/* 803B2958  38 60 FF FF */	li r3, -1
/* 803B295C  7C 04 00 2E */	lwzx r0, r4, r0
/* 803B2960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B2964  7C 05 00 10 */	subfc r0, r5, r0
/* 803B2968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B296C  7C 63 01 90 */	subfze r3, r3
/* 803B2970  7C 08 03 A6 */	mtlr r0
/* 803B2974  38 21 00 10 */	addi r1, r1, 0x10
/* 803B2978  4E 80 00 20 */	blr 
