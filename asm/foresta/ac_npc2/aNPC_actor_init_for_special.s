lbl_80543874:
/* 80543874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80543878  7C 08 02 A6 */	mflr r0
/* 8054387C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80543880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80543884  7C 7F 1B 78 */	mr r31, r3
/* 80543888  93 C1 00 08 */	stw r30, 8(r1)
/* 8054388C  7C 9E 23 78 */	mr r30, r4
/* 80543890  A0 63 00 06 */	lhz r3, 6(r3)
/* 80543894  4B E8 B3 55 */	bl mNpc_GetSameEventNpc
/* 80543898  28 03 00 00 */	cmplwi r3, 0
/* 8054389C  41 82 00 7C */	beq lbl_80543918
/* 805438A0  A0 A3 00 06 */	lhz r5, 6(r3)
/* 805438A4  28 05 00 00 */	cmplwi r5, 0
/* 805438A8  40 82 00 44 */	bne lbl_805438EC
/* 805438AC  A0 83 00 02 */	lhz r4, 2(r3)
/* 805438B0  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 805438B4  2C 00 00 0E */	cmpwi r0, 0xe
/* 805438B8  40 82 00 34 */	bne lbl_805438EC
/* 805438BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805438C0  38 A0 00 0F */	li r5, 0xf
/* 805438C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805438C8  3C 63 00 01 */	addis r3, r3, 1
/* 805438CC  38 63 74 38 */	addi r3, r3, 0x7438
/* 805438D0  4B E8 8E 0D */	bl mNpc_SearchAnimalinfo
/* 805438D4  1C 83 09 88 */	mulli r4, r3, 0x988
/* 805438D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805438DC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805438E0  7C 60 22 14 */	add r3, r0, r4
/* 805438E4  3C 63 00 01 */	addis r3, r3, 1
/* 805438E8  A0 A3 7D 1C */	lhz r5, 0x7d1c(r3)
lbl_805438EC:
/* 805438EC  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 805438F0  41 82 00 78 */	beq lbl_80543968
/* 805438F4  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 805438F8  7C A4 2B 78 */	mr r4, r5
/* 805438FC  38 63 BD 30 */	addi r3, r3, data_811EBD30@l /* 0x811EBD30@l */
/* 80543900  7F E5 FB 78 */	mr r5, r31
/* 80543904  80 63 00 00 */	lwz r3, 0(r3)
/* 80543908  38 63 01 74 */	addi r3, r3, 0x174
/* 8054390C  4B FF 76 91 */	bl aNPC_dma_cloth_data_check
/* 80543910  98 7F 07 4C */	stb r3, 0x74c(r31)
/* 80543914  48 00 00 54 */	b lbl_80543968
lbl_80543918:
/* 80543918  A0 7F 00 06 */	lhz r3, 6(r31)
/* 8054391C  4B E8 B5 09 */	bl mNpc_GetSameMaskNpc
/* 80543920  28 03 00 00 */	cmplwi r3, 0
/* 80543924  41 82 00 44 */	beq lbl_80543968
/* 80543928  A0 83 00 04 */	lhz r4, 4(r3)
/* 8054392C  28 04 00 00 */	cmplwi r4, 0
/* 80543930  41 82 00 38 */	beq lbl_80543968
/* 80543934  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 80543938  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 8054393C  38 63 BD 30 */	addi r3, r3, data_811EBD30@l /* 0x811EBD30@l */
/* 80543940  80 63 00 00 */	lwz r3, 0(r3)
/* 80543944  40 82 00 14 */	bne lbl_80543958
/* 80543948  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 8054394C  28 00 00 00 */	cmplwi r0, 0
/* 80543950  40 82 00 08 */	bne lbl_80543958
/* 80543954  38 80 24 00 */	li r4, 0x2400
lbl_80543958:
/* 80543958  7F E5 FB 78 */	mr r5, r31
/* 8054395C  38 63 01 74 */	addi r3, r3, 0x174
/* 80543960  4B FF 76 3D */	bl aNPC_dma_cloth_data_check
/* 80543964  98 7F 07 4C */	stb r3, 0x74c(r31)
lbl_80543968:
/* 80543968  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8054396C  7F E3 FB 78 */	mr r3, r31
/* 80543970  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80543974  38 A0 00 00 */	li r5, 0
/* 80543978  38 80 00 01 */	li r4, 1
/* 8054397C  38 C0 00 00 */	li r6, 0
/* 80543980  4B FF BA 21 */	bl aNPC_set_request_act
/* 80543984  7F E3 FB 78 */	mr r3, r31
/* 80543988  7F C4 F3 78 */	mr r4, r30
/* 8054398C  4B FF FE 11 */	bl func_8054379C
/* 80543990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80543994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80543998  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054399C  7C 08 03 A6 */	mtlr r0
/* 805439A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805439A4  4E 80 00 20 */	blr 