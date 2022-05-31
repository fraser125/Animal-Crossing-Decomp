lbl_803E6524:
/* 803E6524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E6528  7C 08 02 A6 */	mflr r0
/* 803E652C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E6530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E6534  7C 7F 1B 78 */	mr r31, r3
/* 803E6538  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E653C  28 03 17 AC */	cmplwi r3, 0x17ac
/* 803E6540  41 80 00 4C */	blt lbl_803E658C
/* 803E6544  28 03 1B A7 */	cmplwi r3, 0x1ba7
/* 803E6548  41 81 00 44 */	bgt lbl_803E658C
/* 803E654C  28 03 17 AC */	cmplwi r3, 0x17ac
/* 803E6550  38 00 00 00 */	li r0, 0
/* 803E6554  41 80 00 10 */	blt lbl_803E6564
/* 803E6558  28 03 1B A7 */	cmplwi r3, 0x1ba7
/* 803E655C  41 81 00 08 */	bgt lbl_803E6564
/* 803E6560  38 00 00 01 */	li r0, 1
lbl_803E6564:
/* 803E6564  20 00 00 00 */	subfic r0, r0, 0
/* 803E6568  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E656C  7C 80 01 10 */	subfe r4, r0, r0
/* 803E6570  38 03 E8 54 */	addi r0, r3, -6060
/* 803E6574  7C 00 16 70 */	srawi r0, r0, 2
/* 803E6578  7C 00 20 38 */	and r0, r0, r4
/* 803E657C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E6580  38 03 24 00 */	addi r0, r3, 0x2400
/* 803E6584  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E6588  48 00 02 20 */	b lbl_803E67A8
lbl_803E658C:
/* 803E658C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E6590  28 03 1B C8 */	cmplwi r3, 0x1bc8
/* 803E6594  41 80 00 48 */	blt lbl_803E65DC
/* 803E6598  28 03 1C 67 */	cmplwi r3, 0x1c67
/* 803E659C  41 81 00 40 */	bgt lbl_803E65DC
/* 803E65A0  28 03 1B C8 */	cmplwi r3, 0x1bc8
/* 803E65A4  38 00 00 00 */	li r0, 0
/* 803E65A8  41 80 00 10 */	blt lbl_803E65B8
/* 803E65AC  28 03 1C 67 */	cmplwi r3, 0x1c67
/* 803E65B0  41 81 00 08 */	bgt lbl_803E65B8
/* 803E65B4  38 00 00 01 */	li r0, 1
lbl_803E65B8:
/* 803E65B8  20 00 00 00 */	subfic r0, r0, 0
/* 803E65BC  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E65C0  7C 80 01 10 */	subfe r4, r0, r0
/* 803E65C4  38 03 E4 38 */	addi r0, r3, -7112
/* 803E65C8  7C 00 16 70 */	srawi r0, r0, 2
/* 803E65CC  7C 03 20 38 */	and r3, r0, r4
/* 803E65D0  38 03 2D 00 */	addi r0, r3, 0x2d00
/* 803E65D4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E65D8  48 00 01 D0 */	b lbl_803E67A8
lbl_803E65DC:
/* 803E65DC  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E65E0  28 03 1C 68 */	cmplwi r3, 0x1c68
/* 803E65E4  41 80 00 44 */	blt lbl_803E6628
/* 803E65E8  28 03 1D 07 */	cmplwi r3, 0x1d07
/* 803E65EC  41 81 00 3C */	bgt lbl_803E6628
/* 803E65F0  28 03 1C 68 */	cmplwi r3, 0x1c68
/* 803E65F4  38 00 00 00 */	li r0, 0
/* 803E65F8  41 80 00 10 */	blt lbl_803E6608
/* 803E65FC  28 03 1D 07 */	cmplwi r3, 0x1d07
/* 803E6600  41 81 00 08 */	bgt lbl_803E6608
/* 803E6604  38 00 00 01 */	li r0, 1
lbl_803E6608:
/* 803E6608  20 00 00 00 */	subfic r0, r0, 0
/* 803E660C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E6610  7C 80 01 10 */	subfe r4, r0, r0
/* 803E6614  38 03 E3 98 */	addi r0, r3, -7272
/* 803E6618  7C 00 16 70 */	srawi r0, r0, 2
/* 803E661C  7C 03 20 38 */	and r3, r0, r4
/* 803E6620  4B FE 2A 49 */	bl mNT_FishIdx2FishItemNo
/* 803E6624  48 00 01 84 */	b lbl_803E67A8
lbl_803E6628:
/* 803E6628  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E662C  28 03 1D 08 */	cmplwi r3, 0x1d08
/* 803E6630  41 80 00 20 */	blt lbl_803E6650
/* 803E6634  28 03 1D 87 */	cmplwi r3, 0x1d87
/* 803E6638  41 81 00 18 */	bgt lbl_803E6650
/* 803E663C  38 03 E2 F8 */	addi r0, r3, -7432
/* 803E6640  7C 03 16 70 */	srawi r3, r0, 2
/* 803E6644  38 03 22 04 */	addi r0, r3, 0x2204
/* 803E6648  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E664C  48 00 01 5C */	b lbl_803E67A8
lbl_803E6650:
/* 803E6650  7F E3 FB 78 */	mr r3, r31
/* 803E6654  48 00 11 3D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6658  2C 03 03 FC */	cmpwi r3, 0x3fc
/* 803E665C  41 80 00 30 */	blt lbl_803E668C
/* 803E6660  7F E3 FB 78 */	mr r3, r31
/* 803E6664  48 00 11 2D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6668  2C 03 04 03 */	cmpwi r3, 0x403
/* 803E666C  41 81 00 20 */	bgt lbl_803E668C
/* 803E6670  7F E3 FB 78 */	mr r3, r31
/* 803E6674  48 00 11 1D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6678  38 03 FC 04 */	addi r0, r3, -1020
/* 803E667C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 803E6680  38 03 22 44 */	addi r0, r3, 0x2244
/* 803E6684  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E6688  48 00 01 20 */	b lbl_803E67A8
lbl_803E668C:
/* 803E668C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803E6690  28 03 30 FC */	cmplwi r3, 0x30fc
/* 803E6694  41 80 00 20 */	blt lbl_803E66B4
/* 803E6698  28 03 31 3B */	cmplwi r3, 0x313b
/* 803E669C  41 81 00 18 */	bgt lbl_803E66B4
/* 803E66A0  38 03 CF 04 */	addi r0, r3, -12540
/* 803E66A4  54 03 F7 3E */	rlwinm r3, r0, 0x1e, 0x1c, 0x1f
/* 803E66A8  38 03 2B 00 */	addi r0, r3, 0x2b00
/* 803E66AC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E66B0  48 00 00 F8 */	b lbl_803E67A8
lbl_803E66B4:
/* 803E66B4  7F E3 FB 78 */	mr r3, r31
/* 803E66B8  48 00 10 D9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E66BC  2C 03 04 53 */	cmpwi r3, 0x453
/* 803E66C0  41 80 00 30 */	blt lbl_803E66F0
/* 803E66C4  7F E3 FB 78 */	mr r3, r31
/* 803E66C8  48 00 10 C9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E66CC  2C 03 04 5A */	cmpwi r3, 0x45a
/* 803E66D0  41 81 00 20 */	bgt lbl_803E66F0
/* 803E66D4  7F E3 FB 78 */	mr r3, r31
/* 803E66D8  48 00 10 B9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E66DC  38 03 FB AD */	addi r0, r3, -1107
/* 803E66E0  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 803E66E4  38 03 22 54 */	addi r0, r3, 0x2254
/* 803E66E8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E66EC  48 00 00 BC */	b lbl_803E67A8
lbl_803E66F0:
/* 803E66F0  7F E3 FB 78 */	mr r3, r31
/* 803E66F4  48 00 10 9D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E66F8  2C 03 04 5B */	cmpwi r3, 0x45b
/* 803E66FC  41 80 00 30 */	blt lbl_803E672C
/* 803E6700  7F E3 FB 78 */	mr r3, r31
/* 803E6704  48 00 10 8D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6708  2C 03 04 62 */	cmpwi r3, 0x462
/* 803E670C  41 81 00 20 */	bgt lbl_803E672C
/* 803E6710  7F E3 FB 78 */	mr r3, r31
/* 803E6714  48 00 10 7D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6718  38 03 FB A5 */	addi r0, r3, -1115
/* 803E671C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 803E6720  38 03 22 4C */	addi r0, r3, 0x224c
/* 803E6724  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E6728  48 00 00 80 */	b lbl_803E67A8
lbl_803E672C:
/* 803E672C  7F E3 FB 78 */	mr r3, r31
/* 803E6730  48 00 10 61 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6734  2C 03 04 4F */	cmpwi r3, 0x44f
/* 803E6738  41 80 00 30 */	blt lbl_803E6768
/* 803E673C  7F E3 FB 78 */	mr r3, r31
/* 803E6740  48 00 10 51 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6744  2C 03 04 52 */	cmpwi r3, 0x452
/* 803E6748  41 81 00 20 */	bgt lbl_803E6768
/* 803E674C  7F E3 FB 78 */	mr r3, r31
/* 803E6750  48 00 10 41 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6754  38 03 FB B1 */	addi r0, r3, -1103
/* 803E6758  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 803E675C  38 03 22 39 */	addi r0, r3, 0x2239
/* 803E6760  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E6764  48 00 00 44 */	b lbl_803E67A8
lbl_803E6768:
/* 803E6768  7F E3 FB 78 */	mr r3, r31
/* 803E676C  48 00 10 25 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6770  2C 03 04 63 */	cmpwi r3, 0x463
/* 803E6774  41 80 00 30 */	blt lbl_803E67A4
/* 803E6778  7F E3 FB 78 */	mr r3, r31
/* 803E677C  48 00 10 15 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6780  2C 03 04 66 */	cmpwi r3, 0x466
/* 803E6784  41 81 00 20 */	bgt lbl_803E67A4
/* 803E6788  7F E3 FB 78 */	mr r3, r31
/* 803E678C  48 00 10 05 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E6790  38 03 FB 9D */	addi r0, r3, -1123
/* 803E6794  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 803E6798  38 03 22 00 */	addi r0, r3, 0x2200
/* 803E679C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803E67A0  48 00 00 08 */	b lbl_803E67A8
lbl_803E67A4:
/* 803E67A4  7F E3 FB 78 */	mr r3, r31
lbl_803E67A8:
/* 803E67A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E67AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E67B0  7C 08 03 A6 */	mtlr r0
/* 803E67B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803E67B8  4E 80 00 20 */	blr 
