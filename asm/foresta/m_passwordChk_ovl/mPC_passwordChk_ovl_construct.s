lbl_806017AC:
/* 806017AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806017B0  7C 08 02 A6 */	mflr r0
/* 806017B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806017B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806017BC  93 C1 00 08 */	stw r30, 8(r1)
/* 806017C0  7C 7E 1B 78 */	mr r30, r3
/* 806017C4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 806017C8  80 1F 09 F4 */	lwz r0, 0x9f4(r31)
/* 806017CC  28 00 00 00 */	cmplwi r0, 0
/* 806017D0  40 82 00 4C */	bne lbl_8060181C
/* 806017D4  3C 60 81 21 */	lis r3, pc_ovl_data@ha /* 0x81213508@ha */
/* 806017D8  38 80 00 24 */	li r4, 0x24
/* 806017DC  38 63 35 08 */	addi r3, r3, pc_ovl_data@l /* 0x81213508@l */
/* 806017E0  4B A5 B8 89 */	bl bzero
/* 806017E4  3C 60 81 21 */	lis r3, pc_ovl_data@ha /* 0x81213508@ha */
/* 806017E8  38 A0 00 0E */	li r5, 0xe
/* 806017EC  38 03 35 08 */	addi r0, r3, pc_ovl_data@l /* 0x81213508@l */
/* 806017F0  90 1F 09 F4 */	stw r0, 0x9f4(r31)
/* 806017F4  80 7F 09 F4 */	lwz r3, 0x9f4(r31)
/* 806017F8  80 9F 09 04 */	lwz r4, 0x904(r31)
/* 806017FC  38 63 00 06 */	addi r3, r3, 6
/* 80601800  4B DB 92 25 */	bl func_803BAA24
/* 80601804  80 7F 09 F4 */	lwz r3, 0x9f4(r31)
/* 80601808  38 A0 00 0E */	li r5, 0xe
/* 8060180C  80 9F 09 04 */	lwz r4, 0x904(r31)
/* 80601810  38 63 00 14 */	addi r3, r3, 0x14
/* 80601814  38 84 00 0E */	addi r4, r4, 0xe
/* 80601818  4B DB 92 0D */	bl func_803BAA24
lbl_8060181C:
/* 8060181C  7F C3 F3 78 */	mr r3, r30
/* 80601820  4B FF FF 35 */	bl mPC_passwordChk_ovl_init
/* 80601824  7F C3 F3 78 */	mr r3, r30
/* 80601828  4B FF FF 0D */	bl mPC_passwordChk_ovl_set_proc
/* 8060182C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601834  83 C1 00 08 */	lwz r30, 8(r1)
/* 80601838  7C 08 03 A6 */	mtlr r0
/* 8060183C  38 21 00 10 */	addi r1, r1, 0x10
/* 80601840  4E 80 00 20 */	blr 
