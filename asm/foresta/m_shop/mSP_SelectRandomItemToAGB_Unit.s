lbl_803EB678:
/* 803EB678  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803EB67C  7C 08 02 A6 */	mflr r0
/* 803EB680  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FEA8@ha */
/* 803EB684  90 01 00 34 */	stw r0, 0x34(r1)
/* 803EB688  38 05 FE A8 */	addi r0, r5, 0xFEA8 /* 0x0000FEA8@l */
/* 803EB68C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803EB690  7C 7F 1B 78 */	mr r31, r3
/* 803EB694  A0 C3 00 00 */	lhz r6, 0(r3)
/* 803EB698  7C 06 00 00 */	cmpw r6, r0
/* 803EB69C  41 82 02 30 */	beq lbl_803EB8CC
/* 803EB6A0  40 80 00 78 */	bge lbl_803EB718
/* 803EB6A4  38 05 FE A2 */	addi r0, r5, -350
/* 803EB6A8  7C 06 00 00 */	cmpw r6, r0
/* 803EB6AC  41 82 01 0C */	beq lbl_803EB7B8
/* 803EB6B0  40 80 00 38 */	bge lbl_803EB6E8
/* 803EB6B4  38 05 F1 1F */	addi r0, r5, -3809
/* 803EB6B8  7C 06 00 00 */	cmpw r6, r0
/* 803EB6BC  41 82 03 84 */	beq lbl_803EBA40
/* 803EB6C0  40 80 00 18 */	bge lbl_803EB6D8
/* 803EB6C4  2C 06 2F 03 */	cmpwi r6, 0x2f03
/* 803EB6C8  40 80 03 80 */	bge lbl_803EBA48
/* 803EB6CC  2C 06 2F 00 */	cmpwi r6, 0x2f00
/* 803EB6D0  40 80 03 64 */	bge lbl_803EBA34
/* 803EB6D4  48 00 03 74 */	b lbl_803EBA48
lbl_803EB6D8:
/* 803EB6D8  38 05 FE A1 */	addi r0, r5, -351
/* 803EB6DC  7C 06 00 00 */	cmpw r6, r0
/* 803EB6E0  40 80 00 B0 */	bge lbl_803EB790
/* 803EB6E4  48 00 03 64 */	b lbl_803EBA48
lbl_803EB6E8:
/* 803EB6E8  38 05 FE A5 */	addi r0, r5, -347
/* 803EB6EC  7C 06 00 00 */	cmpw r6, r0
/* 803EB6F0  41 82 01 64 */	beq lbl_803EB854
/* 803EB6F4  40 80 00 14 */	bge lbl_803EB708
/* 803EB6F8  38 05 FE A4 */	addi r0, r5, -348
/* 803EB6FC  7C 06 00 00 */	cmpw r6, r0
/* 803EB700  40 80 01 7C */	bge lbl_803EB87C
/* 803EB704  48 00 00 DC */	b lbl_803EB7E0
lbl_803EB708:
/* 803EB708  38 05 FE A7 */	addi r0, r5, -345
/* 803EB70C  7C 06 00 00 */	cmpw r6, r0
/* 803EB710  40 80 01 B0 */	bge lbl_803EB8C0
/* 803EB714  48 00 01 80 */	b lbl_803EB894
lbl_803EB718:
/* 803EB718  38 05 FE AE */	addi r0, r5, -338
/* 803EB71C  7C 06 00 00 */	cmpw r6, r0
/* 803EB720  41 82 02 58 */	beq lbl_803EB978
/* 803EB724  40 80 00 34 */	bge lbl_803EB758
/* 803EB728  38 05 FE AB */	addi r0, r5, -341
/* 803EB72C  7C 06 00 00 */	cmpw r6, r0
/* 803EB730  41 82 01 D0 */	beq lbl_803EB900
/* 803EB734  40 80 00 14 */	bge lbl_803EB748
/* 803EB738  38 05 FE AA */	addi r0, r5, -342
/* 803EB73C  7C 06 00 00 */	cmpw r6, r0
/* 803EB740  40 80 01 98 */	bge lbl_803EB8D8
/* 803EB744  48 00 01 44 */	b lbl_803EB888
lbl_803EB748:
/* 803EB748  38 05 FE AD */	addi r0, r5, -339
/* 803EB74C  7C 06 00 00 */	cmpw r6, r0
/* 803EB750  40 80 02 00 */	bge lbl_803EB950
/* 803EB754  48 00 01 D4 */	b lbl_803EB928
lbl_803EB758:
/* 803EB758  38 05 FE B1 */	addi r0, r5, -335
/* 803EB75C  7C 06 00 00 */	cmpw r6, r0
/* 803EB760  41 82 02 AC */	beq lbl_803EBA0C
/* 803EB764  40 80 00 14 */	bge lbl_803EB778
/* 803EB768  38 05 FE B0 */	addi r0, r5, -336
/* 803EB76C  7C 06 00 00 */	cmpw r6, r0
/* 803EB770  40 80 02 58 */	bge lbl_803EB9C8
/* 803EB774  48 00 02 2C */	b lbl_803EB9A0
lbl_803EB778:
/* 803EB778  38 05 FE B3 */	addi r0, r5, -333
/* 803EB77C  7C 06 00 00 */	cmpw r6, r0
/* 803EB780  40 80 02 C8 */	bge lbl_803EBA48
/* 803EB784  4B FF FE AD */	bl mSP_GetRandomTrash
/* 803EB788  B0 7F 00 00 */	sth r3, 0(r31)
/* 803EB78C  48 00 02 BC */	b lbl_803EBA48
lbl_803EB790:
/* 803EB790  7F E4 FB 78 */	mr r4, r31
/* 803EB794  38 60 00 00 */	li r3, 0
/* 803EB798  38 A0 00 01 */	li r5, 1
/* 803EB79C  38 C0 00 00 */	li r6, 0
/* 803EB7A0  38 E0 00 00 */	li r7, 0
/* 803EB7A4  39 00 00 00 */	li r8, 0
/* 803EB7A8  39 20 00 00 */	li r9, 0
/* 803EB7AC  39 40 00 00 */	li r10, 0
/* 803EB7B0  4B FF CC 2D */	bl mSP_SelectRandomItem_New
/* 803EB7B4  48 00 02 94 */	b lbl_803EBA48
lbl_803EB7B8:
/* 803EB7B8  7F E4 FB 78 */	mr r4, r31
/* 803EB7BC  38 60 00 00 */	li r3, 0
/* 803EB7C0  38 A0 00 01 */	li r5, 1
/* 803EB7C4  38 C0 00 00 */	li r6, 0
/* 803EB7C8  38 E0 00 00 */	li r7, 0
/* 803EB7CC  39 00 00 00 */	li r8, 0
/* 803EB7D0  39 20 00 02 */	li r9, 2
/* 803EB7D4  39 40 00 00 */	li r10, 0
/* 803EB7D8  4B FF CC 05 */	bl mSP_SelectRandomItem_New
/* 803EB7DC  48 00 02 6C */	b lbl_803EBA48
lbl_803EB7E0:
/* 803EB7E0  4B C7 15 15 */	bl fqrand
/* 803EB7E4  3C 60 80 64 */	lis r3, lit_1868@ha /* 0x806431C4@ha */
/* 803EB7E8  C0 03 31 C4 */	lfs f0, lit_1868@l(r3)  /* 0x806431C4@l */
/* 803EB7EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EB7F0  FC 00 00 1E */	fctiwz f0, f0
/* 803EB7F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803EB7F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803EB7FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EB800  41 82 00 2C */	beq lbl_803EB82C
/* 803EB804  7F E4 FB 78 */	mr r4, r31
/* 803EB808  38 60 00 00 */	li r3, 0
/* 803EB80C  38 A0 00 01 */	li r5, 1
/* 803EB810  38 C0 00 00 */	li r6, 0
/* 803EB814  38 E0 00 00 */	li r7, 0
/* 803EB818  39 00 00 00 */	li r8, 0
/* 803EB81C  39 20 00 03 */	li r9, 3
/* 803EB820  39 40 00 00 */	li r10, 0
/* 803EB824  4B FF CB B9 */	bl mSP_SelectRandomItem_New
/* 803EB828  48 00 02 20 */	b lbl_803EBA48
lbl_803EB82C:
/* 803EB82C  7F E4 FB 78 */	mr r4, r31
/* 803EB830  38 60 00 00 */	li r3, 0
/* 803EB834  38 A0 00 01 */	li r5, 1
/* 803EB838  38 C0 00 00 */	li r6, 0
/* 803EB83C  38 E0 00 00 */	li r7, 0
/* 803EB840  39 00 00 00 */	li r8, 0
/* 803EB844  39 20 00 05 */	li r9, 5
/* 803EB848  39 40 00 00 */	li r10, 0
/* 803EB84C  4B FF CB 91 */	bl mSP_SelectRandomItem_New
/* 803EB850  48 00 01 F8 */	b lbl_803EBA48
lbl_803EB854:
/* 803EB854  7F E4 FB 78 */	mr r4, r31
/* 803EB858  38 60 00 00 */	li r3, 0
/* 803EB85C  38 A0 00 01 */	li r5, 1
/* 803EB860  38 C0 00 00 */	li r6, 0
/* 803EB864  38 E0 00 00 */	li r7, 0
/* 803EB868  39 00 00 00 */	li r8, 0
/* 803EB86C  39 20 00 10 */	li r9, 0x10
/* 803EB870  39 40 00 00 */	li r10, 0
/* 803EB874  4B FF CB 69 */	bl mSP_SelectRandomItem_New
/* 803EB878  48 00 01 D0 */	b lbl_803EBA48
lbl_803EB87C:
/* 803EB87C  4B FF FD 69 */	bl mSP_AGBRandomFamicomSelect
/* 803EB880  B0 7F 00 00 */	sth r3, 0(r31)
/* 803EB884  48 00 01 C4 */	b lbl_803EBA48
lbl_803EB888:
/* 803EB888  38 80 00 01 */	li r4, 1
/* 803EB88C  4B FF F2 35 */	bl mSP_RandomUmbSelect
/* 803EB890  48 00 01 B8 */	b lbl_803EBA48
lbl_803EB894:
/* 803EB894  4B C7 14 61 */	bl fqrand
/* 803EB898  3C 60 80 64 */	lis r3, lit_890@ha /* 0x806431A0@ha */
/* 803EB89C  C0 03 31 A0 */	lfs f0, lit_890@l(r3)  /* 0x806431A0@l */
/* 803EB8A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EB8A4  FC 00 00 1E */	fctiwz f0, f0
/* 803EB8A8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803EB8AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803EB8B0  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803EB8B4  4B FF F3 D5 */	bl mSP_RandomOneFossilSelect
/* 803EB8B8  B0 7F 00 00 */	sth r3, 0(r31)
/* 803EB8BC  48 00 01 8C */	b lbl_803EBA48
lbl_803EB8C0:
/* 803EB8C0  38 80 00 01 */	li r4, 1
/* 803EB8C4  4B FF F1 19 */	bl mSP_RandomMDSelect
/* 803EB8C8  48 00 01 80 */	b lbl_803EBA48
lbl_803EB8CC:
/* 803EB8CC  38 80 00 01 */	li r4, 1
/* 803EB8D0  4B FF F0 25 */	bl mSP_RandomHaniwaSelect
/* 803EB8D4  48 00 01 74 */	b lbl_803EBA48
lbl_803EB8D8:
/* 803EB8D8  7F E4 FB 78 */	mr r4, r31
/* 803EB8DC  38 60 00 00 */	li r3, 0
/* 803EB8E0  38 A0 00 01 */	li r5, 1
/* 803EB8E4  38 C0 00 00 */	li r6, 0
/* 803EB8E8  38 E0 00 00 */	li r7, 0
/* 803EB8EC  39 00 00 03 */	li r8, 3
/* 803EB8F0  39 20 00 00 */	li r9, 0
/* 803EB8F4  39 40 00 00 */	li r10, 0
/* 803EB8F8  4B FF CA E5 */	bl mSP_SelectRandomItem_New
/* 803EB8FC  48 00 01 4C */	b lbl_803EBA48
lbl_803EB900:
/* 803EB900  7F E4 FB 78 */	mr r4, r31
/* 803EB904  38 60 00 00 */	li r3, 0
/* 803EB908  38 A0 00 01 */	li r5, 1
/* 803EB90C  38 C0 00 00 */	li r6, 0
/* 803EB910  38 E0 00 00 */	li r7, 0
/* 803EB914  39 00 00 03 */	li r8, 3
/* 803EB918  39 20 00 02 */	li r9, 2
/* 803EB91C  39 40 00 00 */	li r10, 0
/* 803EB920  4B FF CA BD */	bl mSP_SelectRandomItem_New
/* 803EB924  48 00 01 24 */	b lbl_803EBA48
lbl_803EB928:
/* 803EB928  7F E4 FB 78 */	mr r4, r31
/* 803EB92C  38 60 00 00 */	li r3, 0
/* 803EB930  38 A0 00 01 */	li r5, 1
/* 803EB934  38 C0 00 00 */	li r6, 0
/* 803EB938  38 E0 00 00 */	li r7, 0
/* 803EB93C  39 00 00 04 */	li r8, 4
/* 803EB940  39 20 00 00 */	li r9, 0
/* 803EB944  39 40 00 00 */	li r10, 0
/* 803EB948  4B FF CA 95 */	bl mSP_SelectRandomItem_New
/* 803EB94C  48 00 00 FC */	b lbl_803EBA48
lbl_803EB950:
/* 803EB950  7F E4 FB 78 */	mr r4, r31
/* 803EB954  38 60 00 00 */	li r3, 0
/* 803EB958  38 A0 00 01 */	li r5, 1
/* 803EB95C  38 C0 00 00 */	li r6, 0
/* 803EB960  38 E0 00 00 */	li r7, 0
/* 803EB964  39 00 00 04 */	li r8, 4
/* 803EB968  39 20 00 02 */	li r9, 2
/* 803EB96C  39 40 00 00 */	li r10, 0
/* 803EB970  4B FF CA 6D */	bl mSP_SelectRandomItem_New
/* 803EB974  48 00 00 D4 */	b lbl_803EBA48
lbl_803EB978:
/* 803EB978  7F E4 FB 78 */	mr r4, r31
/* 803EB97C  38 60 00 00 */	li r3, 0
/* 803EB980  38 A0 00 01 */	li r5, 1
/* 803EB984  38 C0 00 00 */	li r6, 0
/* 803EB988  38 E0 00 00 */	li r7, 0
/* 803EB98C  39 00 00 02 */	li r8, 2
/* 803EB990  39 20 00 00 */	li r9, 0
/* 803EB994  39 40 00 00 */	li r10, 0
/* 803EB998  4B FF CA 45 */	bl mSP_SelectRandomItem_New
/* 803EB99C  48 00 00 AC */	b lbl_803EBA48
lbl_803EB9A0:
/* 803EB9A0  7F E4 FB 78 */	mr r4, r31
/* 803EB9A4  38 60 00 00 */	li r3, 0
/* 803EB9A8  38 A0 00 01 */	li r5, 1
/* 803EB9AC  38 C0 00 00 */	li r6, 0
/* 803EB9B0  38 E0 00 00 */	li r7, 0
/* 803EB9B4  39 00 00 02 */	li r8, 2
/* 803EB9B8  39 20 00 02 */	li r9, 2
/* 803EB9BC  39 40 00 00 */	li r10, 0
/* 803EB9C0  4B FF CA 1D */	bl mSP_SelectRandomItem_New
/* 803EB9C4  48 00 00 84 */	b lbl_803EBA48
lbl_803EB9C8:
/* 803EB9C8  80 A4 00 00 */	lwz r5, 0(r4)
/* 803EB9CC  38 61 00 08 */	addi r3, r1, 8
/* 803EB9D0  80 04 00 04 */	lwz r0, 4(r4)
/* 803EB9D4  90 A1 00 08 */	stw r5, 8(r1)
/* 803EB9D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EB9DC  80 04 00 08 */	lwz r0, 8(r4)
/* 803EB9E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803EB9E4  4B FA 49 B1 */	bl mCoBG_GetHoleNumber
/* 803EB9E8  2C 03 FF FF */	cmpwi r3, -1
/* 803EB9EC  41 82 00 14 */	beq lbl_803EBA00
/* 803EB9F0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803EB9F4  38 03 00 11 */	addi r0, r3, 0x11
/* 803EB9F8  B0 1F 00 00 */	sth r0, 0(r31)
/* 803EB9FC  48 00 00 4C */	b lbl_803EBA48
lbl_803EBA00:
/* 803EBA00  38 00 00 00 */	li r0, 0
/* 803EBA04  B0 1F 00 00 */	sth r0, 0(r31)
/* 803EBA08  48 00 00 40 */	b lbl_803EBA48
lbl_803EBA0C:
/* 803EBA0C  4B C7 12 E9 */	bl fqrand
/* 803EBA10  3C 60 80 64 */	lis r3, lit_921@ha /* 0x806431B0@ha */
/* 803EBA14  C0 03 31 B0 */	lfs f0, lit_921@l(r3)  /* 0x806431B0@l */
/* 803EBA18  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EBA1C  FC 00 00 1E */	fctiwz f0, f0
/* 803EBA20  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803EBA24  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803EBA28  38 03 29 02 */	addi r0, r3, 0x2902
/* 803EBA2C  B0 1F 00 00 */	sth r0, 0(r31)
/* 803EBA30  48 00 00 18 */	b lbl_803EBA48
lbl_803EBA34:
/* 803EBA34  38 00 2F 03 */	li r0, 0x2f03
/* 803EBA38  B0 1F 00 00 */	sth r0, 0(r31)
/* 803EBA3C  48 00 00 0C */	b lbl_803EBA48
lbl_803EBA40:
/* 803EBA40  38 05 A0 12 */	addi r0, r5, -24558
/* 803EBA44  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803EBA48:
/* 803EBA48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803EBA4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803EBA50  7C 08 03 A6 */	mtlr r0
/* 803EBA54  38 21 00 30 */	addi r1, r1, 0x30
/* 803EBA58  4E 80 00 20 */	blr 
