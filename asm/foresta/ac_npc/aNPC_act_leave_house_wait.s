lbl_805338D0:
/* 805338D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805338D4  7C 08 02 A6 */	mflr r0
/* 805338D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805338DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805338E0  4B B6 75 F5 */	bl func_8009AED4
/* 805338E4  3C A0 81 1D */	lis r5, data_811D3978@ha /* 0x811D3978@ha */
/* 805338E8  7C 7D 1B 78 */	mr r29, r3
/* 805338EC  83 E5 39 78 */	lwz r31, data_811D3978@l(r5)  /* 0x811D3978@l */
/* 805338F0  7C 9E 23 78 */	mr r30, r4
/* 805338F4  80 1F 09 C8 */	lwz r0, 0x9c8(r31)
/* 805338F8  28 00 00 00 */	cmplwi r0, 0
/* 805338FC  40 82 00 74 */	bne lbl_80533970
/* 80533900  80 1F 09 CC */	lwz r0, 0x9cc(r31)
/* 80533904  2C 00 00 00 */	cmpwi r0, 0
/* 80533908  40 82 00 68 */	bne lbl_80533970
/* 8053390C  4B FF BB F1 */	bl aNPC_check_entrance_humanoid
/* 80533910  2C 03 00 00 */	cmpwi r3, 0
/* 80533914  40 82 00 5C */	bne lbl_80533970
/* 80533918  88 1E 20 D3 */	lbz r0, 0x20d3(r30)
/* 8053391C  28 00 00 00 */	cmplwi r0, 0
/* 80533920  40 82 00 50 */	bne lbl_80533970
/* 80533924  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 80533928  28 00 00 00 */	cmplwi r0, 0
/* 8053392C  40 82 00 44 */	bne lbl_80533970
/* 80533930  7F A3 EB 78 */	mr r3, r29
/* 80533934  7F C4 F3 78 */	mr r4, r30
/* 80533938  38 A0 00 02 */	li r5, 2
/* 8053393C  4B FF D1 B9 */	bl aNPC_request_house
/* 80533940  2C 03 00 01 */	cmpwi r3, 1
/* 80533944  40 82 00 2C */	bne lbl_80533970
/* 80533948  7F A3 EB 78 */	mr r3, r29
/* 8053394C  38 80 00 01 */	li r4, 1
/* 80533950  4B FF FF 4D */	bl func_8053389C
/* 80533954  80 BD 01 7C */	lwz r5, 0x17c(r29)
/* 80533958  38 00 00 00 */	li r0, 0
/* 8053395C  7F A3 EB 78 */	mr r3, r29
/* 80533960  38 80 00 00 */	li r4, 0
/* 80533964  98 05 08 E8 */	stb r0, 0x8e8(r5)
/* 80533968  48 00 43 29 */	bl func_80537C90
/* 8053396C  93 BF 09 C8 */	stw r29, 0x9c8(r31)
lbl_80533970:
/* 80533970  39 61 00 20 */	addi r11, r1, 0x20
/* 80533974  4B B6 75 AD */	bl func_8009AF20
/* 80533978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053397C  7C 08 03 A6 */	mtlr r0
/* 80533980  38 21 00 20 */	addi r1, r1, 0x20
/* 80533984  4E 80 00 20 */	blr 
