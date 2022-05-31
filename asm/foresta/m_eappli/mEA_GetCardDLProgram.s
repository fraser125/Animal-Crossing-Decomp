lbl_8039A72C:
/* 8039A72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A730  7C 08 02 A6 */	mflr r0
/* 8039A734  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A73C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039A744  93 C1 00 08 */	stw r30, 8(r1)
/* 8039A748  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8039A74C  2C 00 00 21 */	cmpwi r0, 0x21
/* 8039A750  41 82 00 90 */	beq lbl_8039A7E0
/* 8039A754  3F C3 00 03 */	addis r30, r3, 3
/* 8039A758  80 1E DB E4 */	lwz r0, -0x241c(r30)
/* 8039A75C  28 00 00 00 */	cmplwi r0, 0
/* 8039A760  40 82 00 80 */	bne lbl_8039A7E0
/* 8039A764  38 60 00 1B */	li r3, 0x1b
/* 8039A768  4B C6 C5 41 */	bl JW_GetResSizeFileNo
/* 8039A76C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039A770  38 03 F8 00 */	addi r0, r3, -2048
/* 8039A774  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8039A778  38 80 00 20 */	li r4, 0x20
/* 8039A77C  3F E3 00 03 */	addis r31, r3, 3
/* 8039A780  90 1F DB E8 */	stw r0, -0x2418(r31)
/* 8039A784  80 7F DB E8 */	lwz r3, -0x2418(r31)
/* 8039A788  48 02 1C A1 */	bl func_803BC428
/* 8039A78C  90 7E DB E4 */	stw r3, -0x241c(r30)
/* 8039A790  38 60 00 1B */	li r3, 0x1b
/* 8039A794  4B C6 C4 41 */	bl JW_GetAramAddress
/* 8039A798  80 9E DB E4 */	lwz r4, -0x241c(r30)
/* 8039A79C  38 63 08 00 */	addi r3, r3, 0x800
/* 8039A7A0  80 BF DB E8 */	lwz r5, -0x2418(r31)
/* 8039A7A4  4B C6 C4 D1 */	bl _JW_GetResourceAram
/* 8039A7A8  80 7E DB E4 */	lwz r3, -0x241c(r30)
/* 8039A7AC  80 9F DB E8 */	lwz r4, -0x2418(r31)
/* 8039A7B0  38 63 00 2C */	addi r3, r3, 0x2c
/* 8039A7B4  38 84 FF CC */	addi r4, r4, -52
/* 8039A7B8  4B FF FE 15 */	bl putLEWord
/* 8039A7BC  80 7E DB E4 */	lwz r3, -0x241c(r30)
/* 8039A7C0  80 9F DB E8 */	lwz r4, -0x2418(r31)
/* 8039A7C4  38 63 00 04 */	addi r3, r3, 4
/* 8039A7C8  38 84 FF FC */	addi r4, r4, -4
/* 8039A7CC  4B FF FD BD */	bl mEA_GetCRC
/* 8039A7D0  7C 60 1B 78 */	mr r0, r3
/* 8039A7D4  80 7E DB E4 */	lwz r3, -0x241c(r30)
/* 8039A7D8  7C 04 03 78 */	mr r4, r0
/* 8039A7DC  4B FF FD F1 */	bl putLEWord
lbl_8039A7E0:
/* 8039A7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A7E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039A7E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039A7EC  7C 08 03 A6 */	mtlr r0
/* 8039A7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A7F4  4E 80 00 20 */	blr 
