lbl_8041C9B0:
/* 8041C9B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C9B4  7C 08 02 A6 */	mflr r0
/* 8041C9B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C9BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C9C0  4B C7 E5 11 */	bl func_8009AED0
/* 8041C9C4  7C 7D 1B 78 */	mr r29, r3
/* 8041C9C8  7C 9E 23 78 */	mr r30, r4
/* 8041C9CC  7C BC 2B 78 */	mr r28, r5
/* 8041C9D0  4B F8 82 FD */	bl mFI_GetFieldId
/* 8041C9D4  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C9D8  40 82 01 BC */	bne lbl_8041CB94
/* 8041C9DC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041C9E0  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 8041C9E4  4B F8 18 C9 */	bl mEv_get_common_place
/* 8041C9E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041C9EC  41 82 01 A8 */	beq lbl_8041CB94
/* 8041C9F0  80 7D 02 10 */	lwz r3, 0x210(r29)
/* 8041C9F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8041C9F8  7C 03 00 00 */	cmpw r3, r0
/* 8041C9FC  40 82 00 1C */	bne lbl_8041CA18
/* 8041CA00  80 7D 02 0C */	lwz r3, 0x20c(r29)
/* 8041CA04  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041CA08  7C 03 00 00 */	cmpw r3, r0
/* 8041CA0C  40 82 00 0C */	bne lbl_8041CA18
/* 8041CA10  38 60 FF FF */	li r3, -1
/* 8041CA14  48 00 01 84 */	b lbl_8041CB98
lbl_8041CA18:
/* 8041CA18  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8041CA1C  38 9E 00 18 */	addi r4, r30, 0x18
/* 8041CA20  4B FF CA 99 */	bl func_804194B8
/* 8041CA24  2C 03 00 00 */	cmpwi r3, 0
/* 8041CA28  40 82 00 0C */	bne lbl_8041CA34
/* 8041CA2C  38 60 FF FF */	li r3, -1
/* 8041CA30  48 00 01 68 */	b lbl_8041CB98
lbl_8041CA34:
/* 8041CA34  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8041CA38  80 7F 00 04 */	lwz r3, 4(r31)
/* 8041CA3C  7C 00 18 00 */	cmpw r0, r3
/* 8041CA40  40 82 00 14 */	bne lbl_8041CA54
/* 8041CA44  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8041CA48  80 9F 00 00 */	lwz r4, 0(r31)
/* 8041CA4C  7C 00 20 00 */	cmpw r0, r4
/* 8041CA50  41 82 00 0C */	beq lbl_8041CA5C
lbl_8041CA54:
/* 8041CA54  38 60 FF FF */	li r3, -1
/* 8041CA58  48 00 01 40 */	b lbl_8041CB98
lbl_8041CA5C:
/* 8041CA5C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8041CA60  80 DF 00 08 */	lwz r6, 8(r31)
/* 8041CA64  4B FB 63 41 */	bl mNpc_CheckNpcSet
/* 8041CA68  2C 03 00 00 */	cmpwi r3, 0
/* 8041CA6C  41 82 00 20 */	beq lbl_8041CA8C
/* 8041CA70  80 7F 00 04 */	lwz r3, 4(r31)
/* 8041CA74  80 9F 00 00 */	lwz r4, 0(r31)
/* 8041CA78  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8041CA7C  80 DF 00 08 */	lwz r6, 8(r31)
/* 8041CA80  4B F8 D5 A5 */	bl mFI_CheckLapPolice
/* 8041CA84  2C 03 00 00 */	cmpwi r3, 0
/* 8041CA88  41 82 00 A0 */	beq lbl_8041CB28
lbl_8041CA8C:
/* 8041CA8C  7F E4 FB 78 */	mr r4, r31
/* 8041CA90  38 61 00 10 */	addi r3, r1, 0x10
/* 8041CA94  38 A0 00 14 */	li r5, 0x14
/* 8041CA98  4B BE 69 F9 */	bl memcpy
/* 8041CA9C  80 BF 00 04 */	lwz r5, 4(r31)
/* 8041CAA0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8041CAA4  80 DF 00 00 */	lwz r6, 0(r31)
/* 8041CAA8  38 81 00 18 */	addi r4, r1, 0x18
/* 8041CAAC  4B FB 66 E9 */	bl mNpc_GetMakeUtNuminBlock
/* 8041CAB0  2C 03 00 00 */	cmpwi r3, 0
/* 8041CAB4  40 82 00 64 */	bne lbl_8041CB18
/* 8041CAB8  3C 60 81 1D */	lis r3, fluc@ha /* 0x811CB96C@ha */
/* 8041CABC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8041CAC0  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 8041CAC4  80 E3 B9 6C */	lwz r7, fluc@l(r3)  /* 0x811CB96C@l */
/* 8041CAC8  7D 00 22 14 */	add r8, r0, r4
/* 8041CACC  7F A3 EB 78 */	mr r3, r29
/* 8041CAD0  7D 07 42 14 */	add r8, r7, r8
/* 8041CAD4  7F C4 F3 78 */	mr r4, r30
/* 8041CAD8  7F E5 FB 78 */	mr r5, r31
/* 8041CADC  38 DF 00 08 */	addi r6, r31, 8
/* 8041CAE0  38 E0 00 01 */	li r7, 1
/* 8041CAE4  4B FF E2 49 */	bl search_free_unit
/* 8041CAE8  2C 03 00 00 */	cmpwi r3, 0
/* 8041CAEC  41 82 00 18 */	beq lbl_8041CB04
/* 8041CAF0  7F E3 FB 78 */	mr r3, r31
/* 8041CAF4  38 81 00 10 */	addi r4, r1, 0x10
/* 8041CAF8  38 A0 00 14 */	li r5, 0x14
/* 8041CAFC  4B BE 69 95 */	bl memcpy
/* 8041CB00  48 00 00 18 */	b lbl_8041CB18
lbl_8041CB04:
/* 8041CB04  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041CB08  38 80 00 20 */	li r4, 0x20
/* 8041CB0C  4B F8 0E C5 */	bl mEv_set_status
/* 8041CB10  38 60 00 00 */	li r3, 0
/* 8041CB14  48 00 00 84 */	b lbl_8041CB98
lbl_8041CB18:
/* 8041CB18  7F E3 FB 78 */	mr r3, r31
/* 8041CB1C  38 81 00 10 */	addi r4, r1, 0x10
/* 8041CB20  38 A0 00 14 */	li r5, 0x14
/* 8041CB24  4B BE 69 6D */	bl memcpy
lbl_8041CB28:
/* 8041CB28  7F E3 FB 78 */	mr r3, r31
/* 8041CB2C  4B FF E6 75 */	bl be_flat_unit
/* 8041CB30  80 1F 00 08 */	lwz r0, 8(r31)
/* 8041CB34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041CB38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041CB3C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8041CB40  90 01 00 08 */	stw r0, 8(r1)
/* 8041CB44  3C 63 00 02 */	addis r3, r3, 2
/* 8041CB48  38 E4 52 F0 */	addi r7, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 8041CB4C  38 A0 FF FF */	li r5, -1
/* 8041CB50  80 83 60 4C */	lwz r4, 0x604c(r3)
/* 8041CB54  38 C0 FF FF */	li r6, -1
/* 8041CB58  80 67 00 00 */	lwz r3, 0(r7)
/* 8041CB5C  38 E0 FF FF */	li r7, -1
/* 8041CB60  81 84 00 00 */	lwz r12, 0(r4)
/* 8041CB64  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 8041CB68  81 1F 00 04 */	lwz r8, 4(r31)
/* 8041CB6C  81 3F 00 00 */	lwz r9, 0(r31)
/* 8041CB70  81 5F 00 0C */	lwz r10, 0xc(r31)
/* 8041CB74  7D 89 03 A6 */	mtctr r12
/* 8041CB78  4E 80 04 21 */	bctrl 
/* 8041CB7C  2C 03 00 00 */	cmpwi r3, 0
/* 8041CB80  40 82 00 0C */	bne lbl_8041CB8C
/* 8041CB84  38 60 00 00 */	li r3, 0
/* 8041CB88  48 00 00 10 */	b lbl_8041CB98
lbl_8041CB8C:
/* 8041CB8C  7F E3 FB 78 */	mr r3, r31
/* 8041CB90  48 00 00 08 */	b lbl_8041CB98
lbl_8041CB94:
/* 8041CB94  38 60 FF FF */	li r3, -1
lbl_8041CB98:
/* 8041CB98  39 61 00 40 */	addi r11, r1, 0x40
/* 8041CB9C  4B C7 E3 81 */	bl func_8009AF1C
/* 8041CBA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041CBA4  7C 08 03 A6 */	mtlr r0
/* 8041CBA8  38 21 00 40 */	addi r1, r1, 0x40
/* 8041CBAC  4E 80 00 20 */	blr 
