lbl_803F5D64:
/* 803F5D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F5D68  7C 08 02 A6 */	mflr r0
/* 803F5D6C  3C 60 81 17 */	lis r3, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5D70  38 80 00 10 */	li r4, 0x10
/* 803F5D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F5D78  38 63 15 94 */	addi r3, r3, S_mybell_conf@l /* 0x81171594@l */
/* 803F5D7C  4B C6 72 ED */	bl bzero
/* 803F5D80  48 00 06 79 */	bl get_all_money
/* 803F5D84  3C 80 81 17 */	lis r4, S_mybell_conf@ha /* 0x81171594@ha */
/* 803F5D88  38 84 15 94 */	addi r4, r4, S_mybell_conf@l /* 0x81171594@l */
/* 803F5D8C  90 64 00 04 */	stw r3, 4(r4)
/* 803F5D90  38 60 00 00 */	li r3, 0
/* 803F5D94  4B FF FF 31 */	bl mWt_set_coin_se
/* 803F5D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F5D9C  7C 08 03 A6 */	mtlr r0
/* 803F5DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803F5DA4  4E 80 00 20 */	blr 
