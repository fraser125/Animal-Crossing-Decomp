lbl_805D8624:
/* 805D8624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D8628  7C 08 02 A6 */	mflr r0
/* 805D862C  38 A0 00 00 */	li r5, 0
/* 805D8630  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8634  88 C3 00 00 */	lbz r6, 0(r3)
/* 805D8638  2C 06 00 08 */	cmpwi r6, 8
/* 805D863C  41 82 00 44 */	beq lbl_805D8680
/* 805D8640  88 03 00 01 */	lbz r0, 1(r3)
/* 805D8644  28 00 00 01 */	cmplwi r0, 1
/* 805D8648  40 82 00 14 */	bne lbl_805D865C
/* 805D864C  38 00 00 00 */	li r0, 0
/* 805D8650  38 A0 00 01 */	li r5, 1
/* 805D8654  98 03 00 04 */	stb r0, 4(r3)
/* 805D8658  48 00 00 28 */	b lbl_805D8680
lbl_805D865C:
/* 805D865C  88 83 00 04 */	lbz r4, 4(r3)
/* 805D8660  38 04 00 01 */	addi r0, r4, 1
/* 805D8664  98 03 00 04 */	stb r0, 4(r3)
/* 805D8668  88 03 00 04 */	lbz r0, 4(r3)
/* 805D866C  28 00 00 10 */	cmplwi r0, 0x10
/* 805D8670  41 80 00 10 */	blt lbl_805D8680
/* 805D8674  38 00 00 0C */	li r0, 0xc
/* 805D8678  38 A0 00 01 */	li r5, 1
/* 805D867C  98 03 00 04 */	stb r0, 4(r3)
lbl_805D8680:
/* 805D8680  2C 05 00 01 */	cmpwi r5, 1
/* 805D8684  40 82 00 90 */	bne lbl_805D8714
/* 805D8688  3C A0 80 6D */	lis r5, add_w@ha /* 0x806CCB48@ha */
/* 805D868C  54 C7 10 3A */	slwi r7, r6, 2
/* 805D8690  38 A5 CB 48 */	addi r5, r5, add_w@l /* 0x806CCB48@l */
/* 805D8694  3C 80 80 6D */	lis r4, add_h@ha /* 0x806CCB6C@ha */
/* 805D8698  7C 05 38 2E */	lwzx r0, r5, r7
/* 805D869C  38 84 CB 6C */	addi r4, r4, add_h@l /* 0x806CCB6C@l */
/* 805D86A0  88 C3 00 02 */	lbz r6, 2(r3)
/* 805D86A4  39 00 00 01 */	li r8, 1
/* 805D86A8  88 A3 00 03 */	lbz r5, 3(r3)
/* 805D86AC  7C C6 02 15 */	add. r6, r6, r0
/* 805D86B0  7C 04 38 2E */	lwzx r0, r4, r7
/* 805D86B4  7C 05 02 14 */	add r0, r5, r0
/* 805D86B8  40 80 00 10 */	bge lbl_805D86C8
/* 805D86BC  38 C0 00 00 */	li r6, 0
/* 805D86C0  39 00 00 00 */	li r8, 0
/* 805D86C4  48 00 00 14 */	b lbl_805D86D8
lbl_805D86C8:
/* 805D86C8  2C 06 00 0A */	cmpwi r6, 0xa
/* 805D86CC  41 80 00 0C */	blt lbl_805D86D8
/* 805D86D0  38 C0 00 09 */	li r6, 9
/* 805D86D4  39 00 00 00 */	li r8, 0
lbl_805D86D8:
/* 805D86D8  2C 00 00 00 */	cmpwi r0, 0
/* 805D86DC  40 80 00 10 */	bge lbl_805D86EC
/* 805D86E0  38 00 00 00 */	li r0, 0
/* 805D86E4  39 00 00 00 */	li r8, 0
/* 805D86E8  48 00 00 14 */	b lbl_805D86FC
lbl_805D86EC:
/* 805D86EC  2C 00 00 04 */	cmpwi r0, 4
/* 805D86F0  41 80 00 0C */	blt lbl_805D86FC
/* 805D86F4  38 00 00 03 */	li r0, 3
/* 805D86F8  39 00 00 00 */	li r8, 0
lbl_805D86FC:
/* 805D86FC  98 C3 00 02 */	stb r6, 2(r3)
/* 805D8700  2C 08 00 01 */	cmpwi r8, 1
/* 805D8704  98 03 00 03 */	stb r0, 3(r3)
/* 805D8708  40 82 00 0C */	bne lbl_805D8714
/* 805D870C  38 60 04 11 */	li r3, 0x411
/* 805D8710  48 05 55 F5 */	bl sAdo_SysTrgStart
lbl_805D8714:
/* 805D8714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D8718  7C 08 03 A6 */	mtlr r0
/* 805D871C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D8720  4E 80 00 20 */	blr 