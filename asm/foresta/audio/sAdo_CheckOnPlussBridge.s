lbl_8062E7D4:
/* 8062E7D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8062E7D8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8062E7DC  3C A5 00 03 */	addis r5, r5, 3
/* 8062E7E0  80 A5 DB D4 */	lwz r5, -0x242c(r5)
/* 8062E7E4  28 05 00 00 */	cmplwi r5, 0
/* 8062E7E8  41 82 00 48 */	beq lbl_8062E830
/* 8062E7EC  28 04 00 17 */	cmplwi r4, 0x17
/* 8062E7F0  40 82 00 40 */	bne lbl_8062E830
/* 8062E7F4  C0 63 00 00 */	lfs f3, 0(r3)
/* 8062E7F8  3C 80 80 65 */	lis r4, lit_736@ha /* 0x8064D26C@ha */
/* 8062E7FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062E800  C0 43 00 08 */	lfs f2, 8(r3)
/* 8062E804  C0 25 00 08 */	lfs f1, 8(r5)
/* 8062E808  EC 63 00 28 */	fsubs f3, f3, f0
/* 8062E80C  C0 04 D2 6C */	lfs f0, lit_736@l(r4)  /* 0x8064D26C@l */
/* 8062E810  EC 22 08 28 */	fsubs f1, f2, f1
/* 8062E814  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8062E818  EC 21 00 72 */	fmuls f1, f1, f1
/* 8062E81C  EC 22 08 2A */	fadds f1, f2, f1
/* 8062E820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062E824  40 80 00 0C */	bge lbl_8062E830
/* 8062E828  38 60 00 01 */	li r3, 1
/* 8062E82C  4E 80 00 20 */	blr 
lbl_8062E830:
/* 8062E830  38 60 00 00 */	li r3, 0
/* 8062E834  4E 80 00 20 */	blr 
