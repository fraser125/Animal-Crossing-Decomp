lbl_8062C6DC:
/* 8062C6DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062C6E0  7C 08 02 A6 */	mflr r0
/* 8062C6E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062C6E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8062C6EC  4B A6 E7 DD */	bl func_8009AEC8
/* 8062C6F0  7C 7E 1B 78 */	mr r30, r3
/* 8062C6F4  3C 60 80 63 */	lis r3, player_select_main@ha /* 0x8062C680@ha */
/* 8062C6F8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8062C6FC  38 03 C6 80 */	addi r0, r3, player_select_main@l /* 0x8062C680@l */
/* 8062C700  3C A0 80 6D */	lis r5, data_806D4A18@ha /* 0x806D4A18@ha */
/* 8062C704  3C 60 80 63 */	lis r3, player_select_cleanup@ha /* 0x8062C6D8@ha */
/* 8062C708  90 1E 00 04 */	stw r0, 4(r30)
/* 8062C70C  38 03 C6 D8 */	addi r0, r3, player_select_cleanup@l /* 0x8062C6D8@l */
/* 8062C710  3B 9E 00 E0 */	addi r28, r30, 0xe0
/* 8062C714  3B E5 4A 18 */	addi r31, r5, data_806D4A18@l /* 0x806D4A18@l */
/* 8062C718  90 1E 00 08 */	stw r0, 8(r30)
/* 8062C71C  7F 83 E3 78 */	mr r3, r28
/* 8062C720  4B DC 76 B5 */	bl initView
/* 8062C724  38 00 00 08 */	li r0, 8
/* 8062C728  7F C3 F3 78 */	mr r3, r30
/* 8062C72C  90 1C 01 18 */	stw r0, 0x118(r28)
/* 8062C730  4B DD FA 6D */	bl func_8040C19C
/* 8062C734  38 60 00 01 */	li r3, 1
/* 8062C738  4B DD 86 FD */	bl SetGameFrame
/* 8062C73C  38 00 00 00 */	li r0, 0
/* 8062C740  38 DF 00 00 */	addi r6, r31, 0
/* 8062C744  90 1E 02 14 */	stw r0, 0x214(r30)
/* 8062C748  39 00 00 00 */	li r8, 0
/* 8062C74C  38 60 00 00 */	li r3, 0
/* 8062C750  90 1E 02 18 */	stw r0, 0x218(r30)
/* 8062C754  90 1E 02 1C */	stw r0, 0x21c(r30)
lbl_8062C758:
/* 8062C758  38 00 00 06 */	li r0, 6
/* 8062C75C  7C C4 33 78 */	mr r4, r6
/* 8062C760  7C FE 1A 14 */	add r7, r30, r3
/* 8062C764  39 20 00 00 */	li r9, 0
/* 8062C768  7C 09 03 A6 */	mtctr r0
lbl_8062C76C:
/* 8062C76C  88 A4 00 00 */	lbz r5, 0(r4)
/* 8062C770  38 09 02 20 */	addi r0, r9, 0x220
/* 8062C774  39 29 00 01 */	addi r9, r9, 1
/* 8062C778  38 84 00 01 */	addi r4, r4, 1
/* 8062C77C  7C A7 01 AE */	stbx r5, r7, r0
/* 8062C780  42 00 FF EC */	bdnz lbl_8062C76C
/* 8062C784  38 00 00 0C */	li r0, 0xc
/* 8062C788  38 A0 00 06 */	li r5, 6
/* 8062C78C  38 80 00 20 */	li r4, 0x20
/* 8062C790  7C 09 03 A6 */	mtctr r0
lbl_8062C794:
/* 8062C794  38 05 02 20 */	addi r0, r5, 0x220
/* 8062C798  38 A5 00 01 */	addi r5, r5, 1
/* 8062C79C  7C 87 01 AE */	stbx r4, r7, r0
/* 8062C7A0  42 00 FF F4 */	bdnz lbl_8062C794
/* 8062C7A4  38 08 02 7A */	addi r0, r8, 0x27a
/* 8062C7A8  39 08 00 01 */	addi r8, r8, 1
/* 8062C7AC  38 80 00 00 */	li r4, 0
/* 8062C7B0  38 63 00 12 */	addi r3, r3, 0x12
/* 8062C7B4  2C 08 00 05 */	cmpwi r8, 5
/* 8062C7B8  7C 9E 01 AE */	stbx r4, r30, r0
/* 8062C7BC  41 80 FF 9C */	blt lbl_8062C758
/* 8062C7C0  38 00 00 08 */	li r0, 8
/* 8062C7C4  38 60 00 20 */	li r3, 0x20
/* 8062C7C8  7C 09 03 A6 */	mtctr r0
lbl_8062C7CC:
/* 8062C7CC  38 04 02 7F */	addi r0, r4, 0x27f
/* 8062C7D0  38 84 00 01 */	addi r4, r4, 1
/* 8062C7D4  7C 7E 01 AE */	stbx r3, r30, r0
/* 8062C7D8  42 00 FF F4 */	bdnz lbl_8062C7CC
/* 8062C7DC  38 00 00 00 */	li r0, 0
/* 8062C7E0  98 1E 02 87 */	stb r0, 0x287(r30)
/* 8062C7E4  4B D7 FE 11 */	bl mFRm_CheckSaveData
/* 8062C7E8  2C 03 00 01 */	cmpwi r3, 1
/* 8062C7EC  40 82 00 C8 */	bne lbl_8062C8B4
/* 8062C7F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062C7F4  3B 80 00 00 */	li r28, 0
/* 8062C7F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062C7FC  3B A0 00 00 */	li r29, 0
/* 8062C800  3B 63 00 20 */	addi r27, r3, 0x20
lbl_8062C804:
/* 8062C804  3B 5D 02 20 */	addi r26, r29, 0x220
/* 8062C808  7F 63 DB 78 */	mr r3, r27
/* 8062C80C  7F 5E D2 14 */	add r26, r30, r26
/* 8062C810  4B DB 3E 41 */	bl mPr_CheckPrivate
/* 8062C814  2C 03 00 01 */	cmpwi r3, 1
/* 8062C818  40 82 00 5C */	bne lbl_8062C874
/* 8062C81C  7F 43 D3 78 */	mr r3, r26
/* 8062C820  7F 64 DB 78 */	mr r4, r27
/* 8062C824  4B DB 36 99 */	bl mPr_CopyPlayerName
/* 8062C828  88 1B 10 86 */	lbz r0, 0x1086(r27)
/* 8062C82C  28 00 00 00 */	cmplwi r0, 0
/* 8062C830  40 82 00 24 */	bne lbl_8062C854
/* 8062C834  38 7A 00 08 */	addi r3, r26, 8
/* 8062C838  38 9F 00 08 */	addi r4, r31, 8
/* 8062C83C  38 A0 00 0A */	li r5, 0xa
/* 8062C840  4B D8 E1 E5 */	bl func_803BAA24
/* 8062C844  38 1C 02 7A */	addi r0, r28, 0x27a
/* 8062C848  38 60 00 03 */	li r3, 3
/* 8062C84C  7C 7E 01 AE */	stbx r3, r30, r0
/* 8062C850  48 00 00 30 */	b lbl_8062C880
lbl_8062C854:
/* 8062C854  38 7A 00 08 */	addi r3, r26, 8
/* 8062C858  38 9F 00 14 */	addi r4, r31, 0x14
/* 8062C85C  38 A0 00 09 */	li r5, 9
/* 8062C860  4B D8 E1 C5 */	bl func_803BAA24
/* 8062C864  38 1C 02 7A */	addi r0, r28, 0x27a
/* 8062C868  38 60 00 02 */	li r3, 2
/* 8062C86C  7C 7E 01 AE */	stbx r3, r30, r0
/* 8062C870  48 00 00 10 */	b lbl_8062C880
lbl_8062C874:
/* 8062C874  38 1C 02 7A */	addi r0, r28, 0x27a
/* 8062C878  38 60 00 01 */	li r3, 1
/* 8062C87C  7C 7E 01 AE */	stbx r3, r30, r0
lbl_8062C880:
/* 8062C880  3B 9C 00 01 */	addi r28, r28, 1
/* 8062C884  3B BD 00 12 */	addi r29, r29, 0x12
/* 8062C888  2C 1C 00 04 */	cmpwi r28, 4
/* 8062C88C  3B 7B 24 40 */	addi r27, r27, 0x2440
/* 8062C890  41 80 FF 74 */	blt lbl_8062C804
/* 8062C894  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062C898  38 7E 02 7F */	addi r3, r30, 0x27f
/* 8062C89C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062C8A0  3C 84 00 01 */	addis r4, r4, 1
/* 8062C8A4  38 84 91 20 */	addi r4, r4, -28384
/* 8062C8A8  4B D8 70 49 */	bl mLd_CopyLandName
/* 8062C8AC  38 00 00 01 */	li r0, 1
/* 8062C8B0  98 1E 02 87 */	stb r0, 0x287(r30)
lbl_8062C8B4:
/* 8062C8B4  38 00 00 0A */	li r0, 0xa
/* 8062C8B8  38 7F 00 20 */	addi r3, r31, 0x20
/* 8062C8BC  38 A0 00 00 */	li r5, 0
/* 8062C8C0  7C 09 03 A6 */	mtctr r0
lbl_8062C8C4:
/* 8062C8C4  88 83 00 00 */	lbz r4, 0(r3)
/* 8062C8C8  38 05 02 68 */	addi r0, r5, 0x268
/* 8062C8CC  38 A5 00 01 */	addi r5, r5, 1
/* 8062C8D0  38 63 00 01 */	addi r3, r3, 1
/* 8062C8D4  7C 9E 01 AE */	stbx r4, r30, r0
/* 8062C8D8  42 00 FF EC */	bdnz lbl_8062C8C4
/* 8062C8DC  38 00 00 08 */	li r0, 8
/* 8062C8E0  38 80 00 0A */	li r4, 0xa
/* 8062C8E4  38 60 00 20 */	li r3, 0x20
/* 8062C8E8  7C 09 03 A6 */	mtctr r0
lbl_8062C8EC:
/* 8062C8EC  38 04 02 68 */	addi r0, r4, 0x268
/* 8062C8F0  38 84 00 01 */	addi r4, r4, 1
/* 8062C8F4  7C 7E 01 AE */	stbx r3, r30, r0
/* 8062C8F8  42 00 FF F4 */	bdnz lbl_8062C8EC
/* 8062C8FC  38 60 00 03 */	li r3, 3
/* 8062C900  38 00 00 05 */	li r0, 5
/* 8062C904  98 7E 02 7E */	stb r3, 0x27e(r30)
/* 8062C908  38 BF 00 2C */	addi r5, r31, 0x2c
/* 8062C90C  38 C0 00 00 */	li r6, 0
/* 8062C910  38 60 00 00 */	li r3, 0
/* 8062C914  7C 09 03 A6 */	mtctr r0
lbl_8062C918:
/* 8062C918  38 86 02 7A */	addi r4, r6, 0x27a
/* 8062C91C  38 03 02 00 */	addi r0, r3, 0x200
/* 8062C920  7C 9E 20 AE */	lbzx r4, r30, r4
/* 8062C924  38 C6 00 01 */	addi r6, r6, 1
/* 8062C928  38 63 00 04 */	addi r3, r3, 4
/* 8062C92C  54 84 10 3A */	slwi r4, r4, 2
/* 8062C930  7C 85 20 2E */	lwzx r4, r5, r4
/* 8062C934  7C 9E 01 2E */	stwx r4, r30, r0
/* 8062C938  42 00 FF E0 */	bdnz lbl_8062C918
/* 8062C93C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062C940  38 80 00 00 */	li r4, 0
/* 8062C944  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062C948  38 00 FF FF */	li r0, -1
/* 8062C94C  3C 63 00 02 */	addis r3, r3, 2
/* 8062C950  98 83 60 03 */	stb r4, 0x6003(r3)
/* 8062C954  90 83 60 08 */	stw r4, 0x6008(r3)
/* 8062C958  90 03 66 A4 */	stw r0, 0x66a4(r3)
/* 8062C95C  39 61 00 20 */	addi r11, r1, 0x20
/* 8062C960  4B A6 E5 B5 */	bl func_8009AF14
/* 8062C964  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062C968  7C 08 03 A6 */	mtlr r0
/* 8062C96C  38 21 00 20 */	addi r1, r1, 0x20
/* 8062C970  4E 80 00 20 */	blr 
