lbl_804717D4:
/* 804717D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804717D8  7C 08 02 A6 */	mflr r0
/* 804717DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804717E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804717E4  4B C2 96 ED */	bl func_8009AED0
/* 804717E8  7C 9D 23 78 */	mr r29, r4
/* 804717EC  7C 7C 1B 78 */	mr r28, r3
/* 804717F0  80 64 00 18 */	lwz r3, 0x18(r4)
/* 804717F4  28 03 00 00 */	cmplwi r3, 0
/* 804717F8  41 82 00 48 */	beq lbl_80471840
/* 804717FC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80471800  3B FC 01 34 */	addi r31, r28, 0x134
/* 80471804  80 83 00 00 */	lwz r4, 0(r3)
/* 80471808  7F E3 FB 78 */	mr r3, r31
/* 8047180C  7F C5 F3 78 */	mr r5, r30
/* 80471810  38 DC 01 A4 */	addi r6, r28, 0x1a4
/* 80471814  38 FC 01 DA */	addi r7, r28, 0x1da
/* 80471818  4B EF F2 7D */	bl cKF_SkeletonInfo_R_ct
/* 8047181C  7F E3 FB 78 */	mr r3, r31
/* 80471820  7F C4 F3 78 */	mr r4, r30
/* 80471824  38 A0 00 00 */	li r5, 0
/* 80471828  4B EF F3 BD */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 8047182C  7F E3 FB 78 */	mr r3, r31
/* 80471830  4B EF F7 E5 */	bl cKF_SkeletonInfo_R_play
/* 80471834  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 80471838  C0 03 4A 04 */	lfs f0, lit_967@l(r3)  /* 0x80644A04@l */
/* 8047183C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80471840:
/* 80471840  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80471844  28 03 00 00 */	cmplwi r3, 0
/* 80471848  41 82 00 30 */	beq lbl_80471878
/* 8047184C  80 03 00 00 */	lwz r0, 0(r3)
/* 80471850  28 00 00 00 */	cmplwi r0, 0
/* 80471854  41 82 00 24 */	beq lbl_80471878
/* 80471858  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8047185C  4B FF F5 75 */	bl aMR_FtrNo2BankAddress
/* 80471860  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 80471864  7C 64 1B 78 */	mr r4, r3
/* 80471868  7F 83 E3 78 */	mr r3, r28
/* 8047186C  81 85 00 00 */	lwz r12, 0(r5)
/* 80471870  7D 89 03 A6 */	mtctr r12
/* 80471874  4E 80 04 21 */	bctrl 
lbl_80471878:
/* 80471878  38 60 00 01 */	li r3, 1
/* 8047187C  39 61 00 20 */	addi r11, r1, 0x20
/* 80471880  4B C2 96 9D */	bl func_8009AF1C
/* 80471884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80471888  7C 08 03 A6 */	mtlr r0
/* 8047188C  38 21 00 20 */	addi r1, r1, 0x20
/* 80471890  4E 80 00 20 */	blr 