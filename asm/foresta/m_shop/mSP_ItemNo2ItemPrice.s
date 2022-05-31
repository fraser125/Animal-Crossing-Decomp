lbl_803E86A0:
/* 803E86A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E86A4  7C 08 02 A6 */	mflr r0
/* 803E86A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E86AC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E86B0  4B CB 28 1D */	bl func_8009AECC
/* 803E86B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E86B8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803E86BC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E86C0  38 80 00 00 */	li r4, 0
/* 803E86C4  3C C5 00 02 */	addis r6, r5, 2
/* 803E86C8  3C E0 80 66 */	lis r7, data_8065D590@ha /* 0x8065D590@ha */
/* 803E86CC  80 A6 61 24 */	lwz r5, 0x6124(r6)
/* 803E86D0  28 00 2E 00 */	cmplwi r0, 0x2e00
/* 803E86D4  80 06 61 20 */	lwz r0, 0x6120(r6)
/* 803E86D8  3B E7 D5 90 */	addi r31, r7, data_8065D590@l /* 0x8065D590@l */
/* 803E86DC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803E86E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E86E4  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 803E86E8  90 81 00 08 */	stw r4, 8(r1)
/* 803E86EC  40 82 00 0C */	bne lbl_803E86F8
/* 803E86F0  7C 03 03 78 */	mr r3, r0
/* 803E86F4  48 00 01 B4 */	b lbl_803E88A8
lbl_803E86F8:
/* 803E86F8  38 80 00 00 */	li r4, 0
/* 803E86FC  4B FF DE 29 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 803E8700  7C 7E 1B 78 */	mr r30, r3
/* 803E8704  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E8708  28 03 25 14 */	cmplwi r3, 0x2514
/* 803E870C  41 80 00 20 */	blt lbl_803E872C
/* 803E8710  28 03 25 1B */	cmplwi r3, 0x251b
/* 803E8714  41 81 00 18 */	bgt lbl_803E872C
/* 803E8718  38 03 DA EC */	addi r0, r3, -9492
/* 803E871C  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 803E8720  54 00 16 FA */	rlwinm r0, r0, 2, 0x1b, 0x1d
/* 803E8724  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E8728  48 00 01 80 */	b lbl_803E88A8
lbl_803E872C:
/* 803E872C  57 DD 04 3E */	clrlwi r29, r30, 0x10
/* 803E8730  28 1D 25 1E */	cmplwi r29, 0x251e
/* 803E8734  40 82 00 0C */	bne lbl_803E8740
/* 803E8738  38 60 01 F4 */	li r3, 0x1f4
/* 803E873C  48 00 01 6C */	b lbl_803E88A8
lbl_803E8740:
/* 803E8740  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 803E8744  2C 00 00 02 */	cmpwi r0, 2
/* 803E8748  41 82 00 20 */	beq lbl_803E8768
/* 803E874C  40 80 00 10 */	bge lbl_803E875C
/* 803E8750  2C 00 00 01 */	cmpwi r0, 1
/* 803E8754  40 80 01 04 */	bge lbl_803E8858
/* 803E8758  48 00 01 44 */	b lbl_803E889C
lbl_803E875C:
/* 803E875C  2C 00 00 04 */	cmpwi r0, 4
/* 803E8760  40 80 01 3C */	bge lbl_803E889C
/* 803E8764  48 00 00 F4 */	b lbl_803E8858
lbl_803E8768:
/* 803E8768  57 A0 D6 BA */	rlwinm r0, r29, 0x1a, 0x1a, 0x1d
/* 803E876C  38 7F 01 50 */	addi r3, r31, 0x150
/* 803E8770  7C 83 00 2E */	lwzx r4, r3, r0
/* 803E8774  57 A3 C7 3E */	rlwinm r3, r29, 0x18, 0x1c, 0x1f
/* 803E8778  28 04 00 00 */	cmplwi r4, 0
/* 803E877C  41 82 01 28 */	beq lbl_803E88A4
/* 803E8780  34 01 00 08 */	addic. r0, r1, 8
/* 803E8784  41 82 01 20 */	beq lbl_803E88A4
/* 803E8788  54 60 08 3C */	slwi r0, r3, 1
/* 803E878C  38 7F 01 90 */	addi r3, r31, 0x190
/* 803E8790  7C 03 02 2E */	lhzx r0, r3, r0
/* 803E8794  28 1D 20 00 */	cmplwi r29, 0x2000
/* 803E8798  83 E4 00 00 */	lwz r31, 0(r4)
/* 803E879C  7F 60 E8 50 */	subf r27, r0, r29
/* 803E87A0  41 80 00 58 */	blt lbl_803E87F8
/* 803E87A4  28 1D 20 FF */	cmplwi r29, 0x20ff
/* 803E87A8  41 81 00 50 */	bgt lbl_803E87F8
/* 803E87AC  3B 9D E0 00 */	addi r28, r29, -8192
/* 803E87B0  7F E3 FB 78 */	mr r3, r31
/* 803E87B4  57 80 D0 0A */	slwi r0, r28, 0x1a
/* 803E87B8  57 84 0F FE */	srwi r4, r28, 0x1f
/* 803E87BC  7C 04 00 50 */	subf r0, r4, r0
/* 803E87C0  54 00 30 3E */	rotlwi r0, r0, 6
/* 803E87C4  7F 60 22 14 */	add r27, r0, r4
/* 803E87C8  4B FF FE 01 */	bl mSP_CountPriceTableElement
/* 803E87CC  7C 1B 18 00 */	cmpw r27, r3
/* 803E87D0  40 80 00 28 */	bge lbl_803E87F8
/* 803E87D4  57 64 08 3C */	slwi r4, r27, 1
/* 803E87D8  7F 80 36 70 */	srawi r0, r28, 6
/* 803E87DC  7C 60 01 94 */	addze r3, r0
/* 803E87E0  7C 9F 22 2E */	lhzx r4, r31, r4
/* 803E87E4  38 03 00 01 */	addi r0, r3, 1
/* 803E87E8  7C 64 01 D6 */	mullw r3, r4, r0
/* 803E87EC  90 81 00 08 */	stw r4, 8(r1)
/* 803E87F0  90 61 00 08 */	stw r3, 8(r1)
/* 803E87F4  48 00 00 B4 */	b lbl_803E88A8
lbl_803E87F8:
/* 803E87F8  7F E3 FB 78 */	mr r3, r31
/* 803E87FC  4B FF FD CD */	bl mSP_CountPriceTableElement
/* 803E8800  7C 1B 18 00 */	cmpw r27, r3
/* 803E8804  40 80 00 4C */	bge lbl_803E8850
/* 803E8808  2C 1D 28 05 */	cmpwi r29, 0x2805
/* 803E880C  40 80 00 34 */	bge lbl_803E8840
/* 803E8810  2C 1D 28 00 */	cmpwi r29, 0x2800
/* 803E8814  40 80 00 08 */	bge lbl_803E881C
/* 803E8818  48 00 00 28 */	b lbl_803E8840
lbl_803E881C:
/* 803E881C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E8820  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 803E8824  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E8828  3C 63 00 02 */	addis r3, r3, 2
/* 803E882C  A0 63 06 88 */	lhz r3, 0x688(r3)
/* 803E8830  7C 03 00 40 */	cmplw r3, r0
/* 803E8834  41 82 00 0C */	beq lbl_803E8840
/* 803E8838  38 60 07 D0 */	li r3, 0x7d0
/* 803E883C  48 00 00 6C */	b lbl_803E88A8
lbl_803E8840:
/* 803E8840  57 60 08 3C */	slwi r0, r27, 1
/* 803E8844  7C 7F 02 2E */	lhzx r3, r31, r0
/* 803E8848  90 61 00 08 */	stw r3, 8(r1)
/* 803E884C  48 00 00 5C */	b lbl_803E88A8
lbl_803E8850:
/* 803E8850  38 60 00 00 */	li r3, 0
/* 803E8854  48 00 00 54 */	b lbl_803E88A8
lbl_803E8858:
/* 803E8858  34 01 00 08 */	addic. r0, r1, 8
/* 803E885C  41 82 00 48 */	beq lbl_803E88A4
/* 803E8860  7F C3 F3 78 */	mr r3, r30
/* 803E8864  4B FF EF 2D */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E8868  3C 80 80 CE */	lis r4, data_80CE5AF8@ha /* 0x80CE5AF8@ha */
/* 803E886C  7C 7F 1B 78 */	mr r31, r3
/* 803E8870  3B C4 5A F8 */	addi r30, r4, data_80CE5AF8@l /* 0x80CE5AF8@l */
/* 803E8874  7F C3 F3 78 */	mr r3, r30
/* 803E8878  4B FF FD 51 */	bl mSP_CountPriceTableElement
/* 803E887C  7C 1F 18 00 */	cmpw r31, r3
/* 803E8880  40 80 00 14 */	bge lbl_803E8894
/* 803E8884  57 E0 08 3C */	slwi r0, r31, 1
/* 803E8888  7C 7E 02 2E */	lhzx r3, r30, r0
/* 803E888C  90 61 00 08 */	stw r3, 8(r1)
/* 803E8890  48 00 00 18 */	b lbl_803E88A8
lbl_803E8894:
/* 803E8894  38 60 00 00 */	li r3, 0
/* 803E8898  48 00 00 10 */	b lbl_803E88A8
lbl_803E889C:
/* 803E889C  38 60 00 00 */	li r3, 0
/* 803E88A0  48 00 00 08 */	b lbl_803E88A8
lbl_803E88A4:
/* 803E88A4  38 60 00 00 */	li r3, 0
lbl_803E88A8:
/* 803E88A8  39 61 00 30 */	addi r11, r1, 0x30
/* 803E88AC  4B CB 26 6D */	bl func_8009AF18
/* 803E88B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E88B4  7C 08 03 A6 */	mtlr r0
/* 803E88B8  38 21 00 30 */	addi r1, r1, 0x30
/* 803E88BC  4E 80 00 20 */	blr 
