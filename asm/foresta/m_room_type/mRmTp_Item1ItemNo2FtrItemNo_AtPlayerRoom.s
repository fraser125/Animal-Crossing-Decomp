lbl_803E62A4:
/* 803E62A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E62A8  7C 08 02 A6 */	mflr r0
/* 803E62AC  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E62B0  28 05 24 00 */	cmplwi r5, 0x2400
/* 803E62B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E62B8  41 80 00 48 */	blt lbl_803E6300
/* 803E62BC  28 05 24 FF */	cmplwi r5, 0x24ff
/* 803E62C0  40 80 00 40 */	bge lbl_803E6300
/* 803E62C4  28 05 24 00 */	cmplwi r5, 0x2400
/* 803E62C8  38 00 00 00 */	li r0, 0
/* 803E62CC  41 80 00 10 */	blt lbl_803E62DC
/* 803E62D0  28 05 24 FF */	cmplwi r5, 0x24ff
/* 803E62D4  40 80 00 08 */	bge lbl_803E62DC
/* 803E62D8  38 00 00 01 */	li r0, 1
lbl_803E62DC:
/* 803E62DC  20 00 00 00 */	subfic r0, r0, 0
/* 803E62E0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E62E4  7C 80 01 10 */	subfe r4, r0, r0
/* 803E62E8  38 03 DC 00 */	addi r0, r3, -9216
/* 803E62EC  7C 00 20 38 */	and r0, r0, r4
/* 803E62F0  54 03 14 3A */	rlwinm r3, r0, 2, 0x10, 0x1d
/* 803E62F4  38 03 17 AC */	addi r0, r3, 0x17ac
/* 803E62F8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E62FC  48 00 02 18 */	b lbl_803E6514
lbl_803E6300:
/* 803E6300  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E6304  28 05 2D 00 */	cmplwi r5, 0x2d00
/* 803E6308  41 80 00 48 */	blt lbl_803E6350
/* 803E630C  28 05 2D 28 */	cmplwi r5, 0x2d28
/* 803E6310  40 80 00 40 */	bge lbl_803E6350
/* 803E6314  28 05 2D 00 */	cmplwi r5, 0x2d00
/* 803E6318  38 00 00 00 */	li r0, 0
/* 803E631C  41 80 00 10 */	blt lbl_803E632C
/* 803E6320  28 05 2D 28 */	cmplwi r5, 0x2d28
/* 803E6324  40 80 00 08 */	bge lbl_803E632C
/* 803E6328  38 00 00 01 */	li r0, 1
lbl_803E632C:
/* 803E632C  20 00 00 00 */	subfic r0, r0, 0
/* 803E6330  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E6334  7C 80 01 10 */	subfe r4, r0, r0
/* 803E6338  38 03 D3 00 */	addi r0, r3, -11520
/* 803E633C  7C 00 20 38 */	and r0, r0, r4
/* 803E6340  54 03 10 3A */	slwi r3, r0, 2
/* 803E6344  38 03 1B C8 */	addi r0, r3, 0x1bc8
/* 803E6348  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E634C  48 00 01 C8 */	b lbl_803E6514
lbl_803E6350:
/* 803E6350  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E6354  28 05 23 00 */	cmplwi r5, 0x2300
/* 803E6358  41 80 00 48 */	blt lbl_803E63A0
/* 803E635C  28 05 23 28 */	cmplwi r5, 0x2328
/* 803E6360  41 81 00 40 */	bgt lbl_803E63A0
/* 803E6364  28 05 23 00 */	cmplwi r5, 0x2300
/* 803E6368  38 00 00 00 */	li r0, 0
/* 803E636C  41 80 00 10 */	blt lbl_803E637C
/* 803E6370  28 05 23 28 */	cmplwi r5, 0x2328
/* 803E6374  41 81 00 08 */	bgt lbl_803E637C
/* 803E6378  38 00 00 01 */	li r0, 1
lbl_803E637C:
/* 803E637C  20 00 00 00 */	subfic r0, r0, 0
/* 803E6380  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E6384  7C 80 01 10 */	subfe r4, r0, r0
/* 803E6388  38 03 DD 00 */	addi r0, r3, -8960
/* 803E638C  7C 00 20 38 */	and r0, r0, r4
/* 803E6390  54 03 14 3A */	rlwinm r3, r0, 2, 0x10, 0x1d
/* 803E6394  38 03 1C 68 */	addi r0, r3, 0x1c68
/* 803E6398  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E639C  48 00 01 78 */	b lbl_803E6514
lbl_803E63A0:
/* 803E63A0  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E63A4  28 05 22 04 */	cmplwi r5, 0x2204
/* 803E63A8  41 80 00 48 */	blt lbl_803E63F0
/* 803E63AC  28 05 22 2B */	cmplwi r5, 0x222b
/* 803E63B0  41 81 00 40 */	bgt lbl_803E63F0
/* 803E63B4  28 05 22 04 */	cmplwi r5, 0x2204
/* 803E63B8  38 00 00 00 */	li r0, 0
/* 803E63BC  41 80 00 10 */	blt lbl_803E63CC
/* 803E63C0  28 05 22 2B */	cmplwi r5, 0x222b
/* 803E63C4  41 81 00 08 */	bgt lbl_803E63CC
/* 803E63C8  38 00 00 01 */	li r0, 1
lbl_803E63CC:
/* 803E63CC  20 00 00 00 */	subfic r0, r0, 0
/* 803E63D0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E63D4  7C 80 01 10 */	subfe r4, r0, r0
/* 803E63D8  38 03 DD FC */	addi r0, r3, -8708
/* 803E63DC  7C 00 20 38 */	and r0, r0, r4
/* 803E63E0  54 03 10 3A */	slwi r3, r0, 2
/* 803E63E4  38 03 1D 08 */	addi r0, r3, 0x1d08
/* 803E63E8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E63EC  48 00 01 28 */	b lbl_803E6514
lbl_803E63F0:
/* 803E63F0  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E63F4  28 05 22 44 */	cmplwi r5, 0x2244
/* 803E63F8  41 80 00 24 */	blt lbl_803E641C
/* 803E63FC  28 05 22 4B */	cmplwi r5, 0x224b
/* 803E6400  41 81 00 1C */	bgt lbl_803E641C
/* 803E6404  38 05 DD BC */	addi r0, r5, -8772
/* 803E6408  38 80 00 00 */	li r4, 0
/* 803E640C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 803E6410  38 63 03 FC */	addi r3, r3, 0x3fc
/* 803E6414  48 00 13 C1 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803E6418  48 00 00 FC */	b lbl_803E6514
lbl_803E641C:
/* 803E641C  2C 04 00 00 */	cmpwi r4, 0
/* 803E6420  40 82 00 F4 */	bne lbl_803E6514
/* 803E6424  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803E6428  28 04 2B 00 */	cmplwi r4, 0x2b00
/* 803E642C  41 80 00 20 */	blt lbl_803E644C
/* 803E6430  28 04 2B 0F */	cmplwi r4, 0x2b0f
/* 803E6434  41 81 00 18 */	bgt lbl_803E644C
/* 803E6438  38 04 D5 00 */	addi r0, r4, -11008
/* 803E643C  54 03 16 BA */	rlwinm r3, r0, 2, 0x1a, 0x1d
/* 803E6440  38 03 30 FC */	addi r0, r3, 0x30fc
/* 803E6444  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E6448  48 00 00 CC */	b lbl_803E6514
lbl_803E644C:
/* 803E644C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803E6450  28 04 22 54 */	cmplwi r4, 0x2254
/* 803E6454  41 80 00 24 */	blt lbl_803E6478
/* 803E6458  28 04 22 5B */	cmplwi r4, 0x225b
/* 803E645C  41 81 00 1C */	bgt lbl_803E6478
/* 803E6460  38 04 DD AC */	addi r0, r4, -8788
/* 803E6464  38 80 00 00 */	li r4, 0
/* 803E6468  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 803E646C  38 63 04 53 */	addi r3, r3, 0x453
/* 803E6470  48 00 13 65 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803E6474  48 00 00 A0 */	b lbl_803E6514
lbl_803E6478:
/* 803E6478  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803E647C  28 04 22 4C */	cmplwi r4, 0x224c
/* 803E6480  41 80 00 24 */	blt lbl_803E64A4
/* 803E6484  28 04 22 53 */	cmplwi r4, 0x2253
/* 803E6488  41 81 00 1C */	bgt lbl_803E64A4
/* 803E648C  38 04 DD B4 */	addi r0, r4, -8780
/* 803E6490  38 80 00 00 */	li r4, 0
/* 803E6494  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 803E6498  38 63 04 5B */	addi r3, r3, 0x45b
/* 803E649C  48 00 13 39 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803E64A0  48 00 00 74 */	b lbl_803E6514
lbl_803E64A4:
/* 803E64A4  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803E64A8  28 04 22 39 */	cmplwi r4, 0x2239
/* 803E64AC  41 80 00 24 */	blt lbl_803E64D0
/* 803E64B0  28 04 22 3C */	cmplwi r4, 0x223c
/* 803E64B4  41 81 00 1C */	bgt lbl_803E64D0
/* 803E64B8  38 04 DD C7 */	addi r0, r4, -8761
/* 803E64BC  38 80 00 00 */	li r4, 0
/* 803E64C0  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 803E64C4  38 63 04 4F */	addi r3, r3, 0x44f
/* 803E64C8  48 00 13 0D */	bl mRmTp_FtrIdx2FtrItemNo
/* 803E64CC  48 00 00 48 */	b lbl_803E6514
lbl_803E64D0:
/* 803E64D0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803E64D4  28 04 22 00 */	cmplwi r4, 0x2200
/* 803E64D8  41 80 00 24 */	blt lbl_803E64FC
/* 803E64DC  28 04 22 03 */	cmplwi r4, 0x2203
/* 803E64E0  41 81 00 1C */	bgt lbl_803E64FC
/* 803E64E4  38 04 DE 00 */	addi r0, r4, -8704
/* 803E64E8  38 80 00 00 */	li r4, 0
/* 803E64EC  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 803E64F0  38 63 04 63 */	addi r3, r3, 0x463
/* 803E64F4  48 00 12 E1 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803E64F8  48 00 00 1C */	b lbl_803E6514
lbl_803E64FC:
/* 803E64FC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803E6500  28 00 22 3D */	cmplwi r0, 0x223d
/* 803E6504  41 80 00 10 */	blt lbl_803E6514
/* 803E6508  28 00 22 43 */	cmplwi r0, 0x2243
/* 803E650C  41 81 00 08 */	bgt lbl_803E6514
/* 803E6510  38 60 31 90 */	li r3, 0x3190
lbl_803E6514:
/* 803E6514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E6518  7C 08 03 A6 */	mtlr r0
/* 803E651C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E6520  4E 80 00 20 */	blr 
