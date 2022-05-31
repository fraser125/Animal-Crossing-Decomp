lbl_8037E7A8:
/* 8037E7A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037E7AC  7C 08 02 A6 */	mflr r0
/* 8037E7B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037E7B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8037E7B8  4B D1 C7 11 */	bl func_8009AEC8
/* 8037E7BC  7C 7A 1B 78 */	mr r26, r3
/* 8037E7C0  7C 9B 23 78 */	mr r27, r4
/* 8037E7C4  83 E3 1B E8 */	lwz r31, 0x1be8(r3)
/* 8037E7C8  7C BC 2B 78 */	mr r28, r5
/* 8037E7CC  83 C3 1B E0 */	lwz r30, 0x1be0(r3)
/* 8037E7D0  2C 1F 00 00 */	cmpwi r31, 0
/* 8037E7D4  83 A3 1B E4 */	lwz r29, 0x1be4(r3)
/* 8037E7D8  41 80 00 0C */	blt lbl_8037E7E4
/* 8037E7DC  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8037E7E0  41 80 00 08 */	blt lbl_8037E7E8
lbl_8037E7E4:
/* 8037E7E4  3B E0 00 00 */	li r31, 0
lbl_8037E7E8:
/* 8037E7E8  3C A0 80 64 */	lis r5, distance_array@ha /* 0x806413D0@ha */
/* 8037E7EC  3C 60 80 64 */	lis r3, direction_array@ha /* 0x80641404@ha */
/* 8037E7F0  1C 9F 00 06 */	mulli r4, r31, 6
/* 8037E7F4  57 E6 10 3A */	slwi r6, r31, 2
/* 8037E7F8  38 A5 13 D0 */	addi r5, r5, distance_array@l /* 0x806413D0@l */
/* 8037E7FC  38 03 14 04 */	addi r0, r3, direction_array@l /* 0x80641404@l */
/* 8037E800  7C 05 34 2E */	lfsx f0, r5, r6
/* 8037E804  7C 80 22 14 */	add r4, r0, r4
/* 8037E808  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8037E80C  2C 1F 00 01 */	cmpwi r31, 1
/* 8037E810  80 64 00 00 */	lwz r3, 0(r4)
/* 8037E814  A0 04 00 04 */	lhz r0, 4(r4)
/* 8037E818  90 7C 00 00 */	stw r3, 0(r28)
/* 8037E81C  B0 1C 00 04 */	sth r0, 4(r28)
/* 8037E820  40 82 00 8C */	bne lbl_8037E8AC
/* 8037E824  4B FF F2 41 */	bl Camera2_InDoorCheck
/* 8037E828  2C 03 00 00 */	cmpwi r3, 0
/* 8037E82C  41 82 00 80 */	beq lbl_8037E8AC
/* 8037E830  2C 1E 00 00 */	cmpwi r30, 0
/* 8037E834  41 80 00 0C */	blt lbl_8037E840
/* 8037E838  2C 1E 00 03 */	cmpwi r30, 3
/* 8037E83C  41 80 00 08 */	blt lbl_8037E844
lbl_8037E840:
/* 8037E840  3B C0 00 01 */	li r30, 1
lbl_8037E844:
/* 8037E844  2C 1D 00 00 */	cmpwi r29, 0
/* 8037E848  41 80 00 0C */	blt lbl_8037E854
/* 8037E84C  2C 1D 00 03 */	cmpwi r29, 3
/* 8037E850  41 80 00 08 */	blt lbl_8037E858
lbl_8037E854:
/* 8037E854  3B A0 00 01 */	li r29, 1
lbl_8037E858:
/* 8037E858  3C A0 80 64 */	lis r5, add_distance_array@ha /* 0x806413B4@ha */
/* 8037E85C  3C 80 80 64 */	lis r4, add_directionY_array@ha /* 0x806413C0@ha */
/* 8037E860  57 C0 10 3A */	slwi r0, r30, 2
/* 8037E864  3C 60 80 64 */	lis r3, add_directionX_array@ha /* 0x806413C8@ha */
/* 8037E868  38 A5 13 B4 */	addi r5, r5, add_distance_array@l /* 0x806413B4@l */
/* 8037E86C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8037E870  7C 05 04 2E */	lfsx f0, r5, r0
/* 8037E874  57 A5 08 3C */	slwi r5, r29, 1
/* 8037E878  38 84 13 C0 */	addi r4, r4, add_directionY_array@l /* 0x806413C0@l */
/* 8037E87C  57 C0 08 3C */	slwi r0, r30, 1
/* 8037E880  EC 01 00 2A */	fadds f0, f1, f0
/* 8037E884  38 63 13 C8 */	addi r3, r3, add_directionX_array@l /* 0x806413C8@l */
/* 8037E888  7C 84 2A AE */	lhax r4, r4, r5
/* 8037E88C  7C 03 02 AE */	lhax r0, r3, r0
/* 8037E890  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8037E894  A8 7C 00 02 */	lha r3, 2(r28)
/* 8037E898  7C 63 22 14 */	add r3, r3, r4
/* 8037E89C  B0 7C 00 02 */	sth r3, 2(r28)
/* 8037E8A0  A8 7C 00 00 */	lha r3, 0(r28)
/* 8037E8A4  7C 03 02 14 */	add r0, r3, r0
/* 8037E8A8  B0 1C 00 00 */	sth r0, 0(r28)
lbl_8037E8AC:
/* 8037E8AC  2C 1F 00 01 */	cmpwi r31, 1
/* 8037E8B0  41 82 00 0C */	beq lbl_8037E8BC
/* 8037E8B4  2C 1F 00 02 */	cmpwi r31, 2
/* 8037E8B8  40 82 00 2C */	bne lbl_8037E8E4
lbl_8037E8BC:
/* 8037E8BC  4B FF F1 A9 */	bl Camera2_InDoorCheck
/* 8037E8C0  2C 03 00 00 */	cmpwi r3, 0
/* 8037E8C4  40 82 00 20 */	bne lbl_8037E8E4
/* 8037E8C8  80 1A 1C A4 */	lwz r0, 0x1ca4(r26)
/* 8037E8CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037E8D0  40 82 00 14 */	bne lbl_8037E8E4
/* 8037E8D4  7F 43 D3 78 */	mr r3, r26
/* 8037E8D8  7F 64 DB 78 */	mr r4, r27
/* 8037E8DC  7F 85 E3 78 */	mr r5, r28
/* 8037E8E0  4B FF FE 0D */	bl Camera2_Normal_Swing
lbl_8037E8E4:
/* 8037E8E4  7F 43 D3 78 */	mr r3, r26
/* 8037E8E8  7F 64 DB 78 */	mr r4, r27
/* 8037E8EC  7F 85 E3 78 */	mr r5, r28
/* 8037E8F0  48 00 1D B9 */	bl Camera2_main_Normal_AdjustDistanceAndDirection
/* 8037E8F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8037E8F8  4B D1 C6 1D */	bl func_8009AF14
/* 8037E8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037E900  7C 08 03 A6 */	mtlr r0
/* 8037E904  38 21 00 20 */	addi r1, r1, 0x20
/* 8037E908  4E 80 00 20 */	blr 
