lbl_803CF870:
/* 803CF870  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CF874  7C 08 02 A6 */	mflr r0
/* 803CF878  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CF87C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CF880  4B CC B6 45 */	bl func_8009AEC4
/* 803CF884  7C BC 2B 78 */	mr r28, r5
/* 803CF888  3C A0 81 17 */	lis r5, fakeTable_2058@ha /* 0x8116B914@ha */
/* 803CF88C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 803CF890  7C 7A 1B 78 */	mr r26, r3
/* 803CF894  28 00 00 3C */	cmplwi r0, 0x3c
/* 803CF898  38 05 B9 14 */	addi r0, r5, fakeTable_2058@l /* 0x8116B914@l */
/* 803CF89C  7C 9B 23 78 */	mr r27, r4
/* 803CF8A0  3B A0 00 00 */	li r29, 0
/* 803CF8A4  7C 1E 03 78 */	mr r30, r0
/* 803CF8A8  3B 20 00 00 */	li r25, 0
/* 803CF8AC  40 81 00 08 */	ble lbl_803CF8B4
/* 803CF8B0  3B 80 00 3C */	li r28, 0x3c
lbl_803CF8B4:
/* 803CF8B4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 803CF8B8  41 82 01 00 */	beq lbl_803CF9B8
/* 803CF8BC  7F C3 F3 78 */	mr r3, r30
/* 803CF8C0  38 80 00 F0 */	li r4, 0xf0
/* 803CF8C4  4B C8 D7 A5 */	bl bzero
/* 803CF8C8  57 9F 06 3E */	clrlwi r31, r28, 0x18
/* 803CF8CC  7F C3 F3 78 */	mr r3, r30
/* 803CF8D0  7F E4 FB 78 */	mr r4, r31
/* 803CF8D4  38 A0 00 1E */	li r5, 0x1e
/* 803CF8D8  4B FF B9 81 */	bl func_803CB258
/* 803CF8DC  3B 80 00 00 */	li r28, 0
lbl_803CF8E0:
/* 803CF8E0  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803CF8E4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 803CF8E8  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CF8EC  40 82 00 B4 */	bne lbl_803CF9A0
/* 803CF8F0  88 1A 08 99 */	lbz r0, 0x899(r26)
/* 803CF8F4  28 00 00 FF */	cmplwi r0, 0xff
/* 803CF8F8  40 82 00 A8 */	bne lbl_803CF9A0
/* 803CF8FC  88 1A 08 9A */	lbz r0, 0x89a(r26)
/* 803CF900  28 00 00 FF */	cmplwi r0, 0xff
/* 803CF904  40 82 00 9C */	bne lbl_803CF9A0
/* 803CF908  7C 1E C8 2E */	lwzx r0, r30, r25
/* 803CF90C  7C 00 F8 00 */	cmpw r0, r31
/* 803CF910  41 80 00 34 */	blt lbl_803CF944
/* 803CF914  57 A3 10 3A */	slwi r3, r29, 2
/* 803CF918  48 00 00 10 */	b lbl_803CF928
lbl_803CF91C:
/* 803CF91C  3B BD 00 01 */	addi r29, r29, 1
/* 803CF920  3B 39 00 04 */	addi r25, r25, 4
/* 803CF924  38 63 00 04 */	addi r3, r3, 4
lbl_803CF928:
/* 803CF928  7C 1E 18 2E */	lwzx r0, r30, r3
/* 803CF92C  7C 00 F8 00 */	cmpw r0, r31
/* 803CF930  41 80 00 0C */	blt lbl_803CF93C
/* 803CF934  7C 1D F8 00 */	cmpw r29, r31
/* 803CF938  41 80 FF E4 */	blt lbl_803CF91C
lbl_803CF93C:
/* 803CF93C  7C 1D F8 00 */	cmpw r29, r31
/* 803CF940  40 80 00 78 */	bge lbl_803CF9B8
lbl_803CF944:
/* 803CF944  7C 00 F8 00 */	cmpw r0, r31
/* 803CF948  40 80 00 50 */	bge lbl_803CF998
/* 803CF94C  1C 00 00 05 */	mulli r0, r0, 5
/* 803CF950  7C FB 02 14 */	add r7, r27, r0
/* 803CF954  88 07 00 01 */	lbz r0, 1(r7)
/* 803CF958  98 1A 08 99 */	stb r0, 0x899(r26)
/* 803CF95C  88 07 00 02 */	lbz r0, 2(r7)
/* 803CF960  98 1A 08 9A */	stb r0, 0x89a(r26)
/* 803CF964  88 07 00 03 */	lbz r0, 3(r7)
/* 803CF968  98 1A 08 9B */	stb r0, 0x89b(r26)
/* 803CF96C  88 67 00 04 */	lbz r3, 4(r7)
/* 803CF970  38 03 00 01 */	addi r0, r3, 1
/* 803CF974  98 1A 08 9C */	stb r0, 0x89c(r26)
/* 803CF978  88 9A 08 99 */	lbz r4, 0x899(r26)
/* 803CF97C  88 BA 08 9A */	lbz r5, 0x89a(r26)
/* 803CF980  A0 7A 00 00 */	lhz r3, 0(r26)
/* 803CF984  38 84 FF FF */	addi r4, r4, -1
/* 803CF988  88 DA 08 9B */	lbz r6, 0x89b(r26)
/* 803CF98C  38 A5 FF FF */	addi r5, r5, -1
/* 803CF990  88 E7 00 04 */	lbz r7, 4(r7)
/* 803CF994  4B FF FC CD */	bl mNpc_BuildHouseBeforeFieldct
lbl_803CF998:
/* 803CF998  3B BD 00 01 */	addi r29, r29, 1
/* 803CF99C  3B 39 00 04 */	addi r25, r25, 4
lbl_803CF9A0:
/* 803CF9A0  7C 1D F8 00 */	cmpw r29, r31
/* 803CF9A4  40 80 00 14 */	bge lbl_803CF9B8
/* 803CF9A8  3B 9C 00 01 */	addi r28, r28, 1
/* 803CF9AC  3B 5A 09 88 */	addi r26, r26, 0x988
/* 803CF9B0  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803CF9B4  41 80 FF 2C */	blt lbl_803CF8E0
lbl_803CF9B8:
/* 803CF9B8  39 61 00 30 */	addi r11, r1, 0x30
/* 803CF9BC  4B CC B5 55 */	bl func_8009AF10
/* 803CF9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CF9C4  7C 08 03 A6 */	mtlr r0
/* 803CF9C8  38 21 00 30 */	addi r1, r1, 0x30
/* 803CF9CC  4E 80 00 20 */	blr 
