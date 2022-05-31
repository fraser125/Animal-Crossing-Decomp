lbl_805BC980:
/* 805BC980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC984  7C 08 02 A6 */	mflr r0
/* 805BC988  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC990  7C 7F 1B 78 */	mr r31, r3
/* 805BC994  A0 A3 01 78 */	lhz r5, 0x178(r3)
/* 805BC998  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 805BC99C  2C 00 00 05 */	cmpwi r0, 5
/* 805BC9A0  40 82 00 54 */	bne lbl_805BC9F4
/* 805BC9A4  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 805BC9A8  7C A4 2B 78 */	mr r4, r5
/* 805BC9AC  38 A0 00 01 */	li r5, 1
/* 805BC9B0  4B DB 93 91 */	bl Actor_info_fgName_search
/* 805BC9B4  28 03 00 00 */	cmplwi r3, 0
/* 805BC9B8  41 82 00 44 */	beq lbl_805BC9FC
/* 805BC9BC  80 03 02 B0 */	lwz r0, 0x2b0(r3)
/* 805BC9C0  2C 00 00 00 */	cmpwi r0, 0
/* 805BC9C4  40 82 00 38 */	bne lbl_805BC9FC
/* 805BC9C8  88 BF 01 7A */	lbz r5, 0x17a(r31)
/* 805BC9CC  3C 80 80 6C */	lis r4, request@ha /* 0x806C6DC4@ha */
/* 805BC9D0  38 84 6D C4 */	addi r4, r4, request@l /* 0x806C6DC4@l */
/* 805BC9D4  38 00 00 00 */	li r0, 0
/* 805BC9D8  20 A5 00 01 */	subfic r5, r5, 1
/* 805BC9DC  7C A5 00 34 */	cntlzw r5, r5
/* 805BC9E0  54 A5 E8 FA */	rlwinm r5, r5, 0x1d, 3, 0x1d
/* 805BC9E4  7C 84 28 2E */	lwzx r4, r4, r5
/* 805BC9E8  90 83 02 B0 */	stw r4, 0x2b0(r3)
/* 805BC9EC  B0 1F 01 78 */	sth r0, 0x178(r31)
/* 805BC9F0  48 00 00 0C */	b lbl_805BC9FC
lbl_805BC9F4:
/* 805BC9F4  38 00 00 00 */	li r0, 0
/* 805BC9F8  B0 1F 01 78 */	sth r0, 0x178(r31)
lbl_805BC9FC:
/* 805BC9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCA00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCA04  7C 08 03 A6 */	mtlr r0
/* 805BCA08  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCA0C  4E 80 00 20 */	blr 
