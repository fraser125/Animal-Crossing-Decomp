lbl_803CF528:
/* 803CF528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CF52C  7C 08 02 A6 */	mflr r0
/* 803CF530  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CF534  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF538  4B CC B9 95 */	bl func_8009AECC
/* 803CF53C  7C 7D 1B 78 */	mr r29, r3
/* 803CF540  7C 9E 23 78 */	mr r30, r4
/* 803CF544  7C BF 2B 78 */	mr r31, r5
/* 803CF548  7C DB 33 78 */	mr r27, r6
/* 803CF54C  7C FC 3B 78 */	mr r28, r7
/* 803CF550  4B FD 57 5D */	bl mFI_GetBlockTopP
/* 803CF554  7F A5 EB 78 */	mr r5, r29
/* 803CF558  39 00 00 00 */	li r8, 0
/* 803CF55C  38 C0 00 00 */	li r6, 0
/* 803CF560  38 80 00 FF */	li r4, 0xff
/* 803CF564  48 00 00 1C */	b lbl_803CF580
lbl_803CF568:
/* 803CF568  98 9D 00 01 */	stb r4, 1(r29)
/* 803CF56C  38 C6 00 01 */	addi r6, r6, 1
/* 803CF570  98 9D 00 02 */	stb r4, 2(r29)
/* 803CF574  98 9D 00 03 */	stb r4, 3(r29)
/* 803CF578  98 9D 00 04 */	stb r4, 4(r29)
/* 803CF57C  3B BD 00 05 */	addi r29, r29, 5
lbl_803CF580:
/* 803CF580  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 803CF584  7C 00 F0 00 */	cmpw r0, r30
/* 803CF588  41 80 FF E0 */	blt lbl_803CF568
/* 803CF58C  7C BD 2B 78 */	mr r29, r5
/* 803CF590  57 65 06 3E */	clrlwi r5, r27, 0x18
/* 803CF594  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 803CF598  38 C0 00 00 */	li r6, 0
/* 803CF59C  48 00 00 9C */	b lbl_803CF638
lbl_803CF5A0:
/* 803CF5A0  39 20 00 00 */	li r9, 0
/* 803CF5A4  48 00 00 84 */	b lbl_803CF628
lbl_803CF5A8:
/* 803CF5A8  80 E3 05 84 */	lwz r7, 0x584(r3)
/* 803CF5AC  39 40 00 00 */	li r10, 0
/* 803CF5B0  48 00 00 64 */	b lbl_803CF614
lbl_803CF5B4:
/* 803CF5B4  39 60 00 00 */	li r11, 0
/* 803CF5B8  48 00 00 4C */	b lbl_803CF604
lbl_803CF5BC:
/* 803CF5BC  A0 87 00 00 */	lhz r4, 0(r7)
/* 803CF5C0  28 04 58 10 */	cmplwi r4, 0x5810
/* 803CF5C4  41 80 00 38 */	blt lbl_803CF5FC
/* 803CF5C8  28 04 58 24 */	cmplwi r4, 0x5824
/* 803CF5CC  41 81 00 30 */	bgt lbl_803CF5FC
/* 803CF5D0  99 3D 00 01 */	stb r9, 1(r29)
/* 803CF5D4  39 08 00 01 */	addi r8, r8, 1
/* 803CF5D8  55 04 06 3E */	clrlwi r4, r8, 0x18
/* 803CF5DC  98 DD 00 02 */	stb r6, 2(r29)
/* 803CF5E0  7C 04 F0 00 */	cmpw r4, r30
/* 803CF5E4  99 7D 00 03 */	stb r11, 3(r29)
/* 803CF5E8  99 5D 00 04 */	stb r10, 4(r29)
/* 803CF5EC  3B BD 00 05 */	addi r29, r29, 5
/* 803CF5F0  41 80 00 0C */	blt lbl_803CF5FC
/* 803CF5F4  99 1F 00 00 */	stb r8, 0(r31)
/* 803CF5F8  48 00 00 50 */	b lbl_803CF648
lbl_803CF5FC:
/* 803CF5FC  38 E7 00 02 */	addi r7, r7, 2
/* 803CF600  39 6B 00 01 */	addi r11, r11, 1
lbl_803CF604:
/* 803CF604  55 64 06 3E */	clrlwi r4, r11, 0x18
/* 803CF608  28 04 00 10 */	cmplwi r4, 0x10
/* 803CF60C  41 80 FF B0 */	blt lbl_803CF5BC
/* 803CF610  39 4A 00 01 */	addi r10, r10, 1
lbl_803CF614:
/* 803CF614  55 44 06 3E */	clrlwi r4, r10, 0x18
/* 803CF618  28 04 00 10 */	cmplwi r4, 0x10
/* 803CF61C  41 80 FF 98 */	blt lbl_803CF5B4
/* 803CF620  38 63 06 14 */	addi r3, r3, 0x614
/* 803CF624  39 29 00 01 */	addi r9, r9, 1
lbl_803CF628:
/* 803CF628  55 24 06 3E */	clrlwi r4, r9, 0x18
/* 803CF62C  7C 04 28 40 */	cmplw r4, r5
/* 803CF630  41 80 FF 78 */	blt lbl_803CF5A8
/* 803CF634  38 C6 00 01 */	addi r6, r6, 1
lbl_803CF638:
/* 803CF638  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 803CF63C  7C 04 00 40 */	cmplw r4, r0
/* 803CF640  41 80 FF 60 */	blt lbl_803CF5A0
/* 803CF644  99 1F 00 00 */	stb r8, 0(r31)
lbl_803CF648:
/* 803CF648  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF64C  4B CC B8 CD */	bl func_8009AF18
/* 803CF650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CF654  7C 08 03 A6 */	mtlr r0
/* 803CF658  38 21 00 20 */	addi r1, r1, 0x20
/* 803CF65C  4E 80 00 20 */	blr 
