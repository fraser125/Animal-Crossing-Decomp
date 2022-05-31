lbl_803FF8B8:
/* 803FF8B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FF8BC  7C 08 02 A6 */	mflr r0
/* 803FF8C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FF8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF8C8  4B C9 B6 01 */	bl func_8009AEC8
/* 803FF8CC  7C 7C 1B 78 */	mr r28, r3
/* 803FF8D0  7C 9D 23 78 */	mr r29, r4
/* 803FF8D4  80 83 00 00 */	lwz r4, 0(r3)
/* 803FF8D8  2C 04 FF FF */	cmpwi r4, -1
/* 803FF8DC  41 82 01 A0 */	beq lbl_803FFA7C
/* 803FF8E0  1C A4 00 94 */	mulli r5, r4, 0x94
/* 803FF8E4  3C 60 81 1A */	lis r3, l_mcd_card_private@ha /* 0x81198BF0@ha */
/* 803FF8E8  38 63 8B F0 */	addi r3, r3, l_mcd_card_private@l /* 0x81198BF0@l */
/* 803FF8EC  3B 65 00 54 */	addi r27, r5, 0x54
/* 803FF8F0  7F 7C DA 14 */	add r27, r28, r27
/* 803FF8F4  38 63 00 14 */	addi r3, r3, 0x14
/* 803FF8F8  38 BB 00 74 */	addi r5, r27, 0x74
/* 803FF8FC  4B FF A2 F9 */	bl mCD_erase_file_bg
/* 803FF900  7C 7E 1B 78 */	mr r30, r3
/* 803FF904  2C 1E 00 01 */	cmpwi r30, 1
/* 803FF908  40 82 00 6C */	bne lbl_803FF974
/* 803FF90C  38 00 00 02 */	li r0, 2
/* 803FF910  90 1C 00 04 */	stw r0, 4(r28)
/* 803FF914  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FF918  4B FF AB 41 */	bl mCD_get_size
/* 803FF91C  90 7C 00 08 */	stw r3, 8(r28)
/* 803FF920  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FF924  80 9C 00 08 */	lwz r4, 8(r28)
/* 803FF928  4B C5 D7 41 */	bl bzero
/* 803FF92C  3C 60 81 17 */	lis r3, l_keepSave@ha /* 0x81171638@ha */
/* 803FF930  3C A0 00 02 */	lis r5, 0x0002 /* 0x00026000@ha */
/* 803FF934  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 803FF938  38 63 16 38 */	addi r3, r3, l_keepSave@l /* 0x81171638@l */
/* 803FF93C  38 A5 60 00 */	addi r5, r5, 0x6000 /* 0x00026000@l */
/* 803FF940  4B C5 D6 DD */	bl func_8005D01C
/* 803FF944  80 7B 00 74 */	lwz r3, 0x74(r27)
/* 803FF948  4B FF A9 6D */	bl mCD_TransErrorCode
/* 803FF94C  90 7B 00 78 */	stw r3, 0x78(r27)
/* 803FF950  38 60 00 09 */	li r3, 9
/* 803FF954  38 00 00 01 */	li r0, 1
/* 803FF958  80 9C 00 00 */	lwz r4, 0(r28)
/* 803FF95C  7C 84 20 F8 */	nor r4, r4, r4
/* 803FF960  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 803FF964  90 9C 00 00 */	stw r4, 0(r28)
/* 803FF968  90 7D 00 00 */	stw r3, 0(r29)
/* 803FF96C  90 1C 01 A0 */	stw r0, 0x1a0(r28)
/* 803FF970  48 00 01 10 */	b lbl_803FFA80
lbl_803FF974:
/* 803FF974  2C 1E 00 00 */	cmpwi r30, 0
/* 803FF978  41 82 01 08 */	beq lbl_803FFA80
/* 803FF97C  83 FB 00 74 */	lwz r31, 0x74(r27)
/* 803FF980  7F E3 FB 78 */	mr r3, r31
/* 803FF984  4B FF A9 31 */	bl mCD_TransErrorCode
/* 803FF988  90 7B 00 78 */	stw r3, 0x78(r27)
/* 803FF98C  38 00 00 02 */	li r0, 2
/* 803FF990  90 1C 00 04 */	stw r0, 4(r28)
/* 803FF994  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FF998  4B FF AA C1 */	bl mCD_get_size
/* 803FF99C  90 7C 00 08 */	stw r3, 8(r28)
/* 803FF9A0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FF9A4  80 9C 00 08 */	lwz r4, 8(r28)
/* 803FF9A8  4B C5 D6 C1 */	bl bzero
/* 803FF9AC  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FF9B0  7C 00 00 F8 */	nor r0, r0, r0
/* 803FF9B4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FF9B8  90 1C 00 00 */	stw r0, 0(r28)
/* 803FF9BC  80 BC 00 00 */	lwz r5, 0(r28)
/* 803FF9C0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FF9C4  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FF9C8  80 9C 00 04 */	lwz r4, 4(r28)
/* 803FF9CC  3B 66 00 54 */	addi r27, r6, 0x54
/* 803FF9D0  7F 7C DA 14 */	add r27, r28, r27
/* 803FF9D4  38 DB 00 74 */	addi r6, r27, 0x74
/* 803FF9D8  4B FF AF E9 */	bl mCD_load_file
/* 803FF9DC  2C 03 00 01 */	cmpwi r3, 1
/* 803FF9E0  40 82 00 74 */	bne lbl_803FFA54
/* 803FF9E4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FF9E8  80 9C 00 08 */	lwz r4, 8(r28)
/* 803FF9EC  4B FA CB 11 */	bl mFRm_ReturnCheckSum
/* 803FF9F0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803FF9F4  83 5C 00 0C */	lwz r26, 0xc(r28)
/* 803FF9F8  40 82 00 48 */	bne lbl_803FFA40
/* 803FF9FC  3C 7A 00 01 */	addis r3, r26, 1
/* 803FFA00  A0 63 91 2A */	lhz r3, -0x6ed6(r3)
/* 803FFA04  4B FB 3D F1 */	bl mLd_CheckId
/* 803FFA08  2C 03 00 01 */	cmpwi r3, 1
/* 803FFA0C  40 82 00 34 */	bne lbl_803FFA40
/* 803FFA10  3C 7A 00 01 */	addis r3, r26, 1
/* 803FFA14  A0 83 91 2A */	lhz r4, -0x6ed6(r3)
/* 803FFA18  38 63 91 20 */	addi r3, r3, -28384
/* 803FFA1C  4B FB 41 1D */	bl mLd_CheckThisLand
/* 803FFA20  2C 03 00 01 */	cmpwi r3, 1
/* 803FFA24  40 82 00 1C */	bne lbl_803FFA40
/* 803FFA28  38 60 00 01 */	li r3, 1
/* 803FFA2C  38 00 00 09 */	li r0, 9
/* 803FFA30  90 7C 00 04 */	stw r3, 4(r28)
/* 803FFA34  3B C0 00 01 */	li r30, 1
/* 803FFA38  90 1D 00 00 */	stw r0, 0(r29)
/* 803FFA3C  48 00 00 28 */	b lbl_803FFA64
lbl_803FFA40:
/* 803FFA40  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FFA44  7C 00 00 F8 */	nor r0, r0, r0
/* 803FFA48  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FFA4C  90 1C 00 00 */	stw r0, 0(r28)
/* 803FFA50  48 00 00 14 */	b lbl_803FFA64
lbl_803FFA54:
/* 803FFA54  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FFA58  7C 00 00 F8 */	nor r0, r0, r0
/* 803FFA5C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FFA60  90 1C 00 00 */	stw r0, 0(r28)
lbl_803FFA64:
/* 803FFA64  7F E3 FB 78 */	mr r3, r31
/* 803FFA68  4B FF A8 4D */	bl mCD_TransErrorCode
/* 803FFA6C  90 7B 00 78 */	stw r3, 0x78(r27)
/* 803FFA70  80 1B 00 78 */	lwz r0, 0x78(r27)
/* 803FFA74  90 1D 00 18 */	stw r0, 0x18(r29)
/* 803FFA78  48 00 00 08 */	b lbl_803FFA80
lbl_803FFA7C:
/* 803FFA7C  3B C0 FF FF */	li r30, -1
lbl_803FFA80:
/* 803FFA80  7F C3 F3 78 */	mr r3, r30
/* 803FFA84  39 61 00 20 */	addi r11, r1, 0x20
/* 803FFA88  4B C9 B4 8D */	bl func_8009AF14
/* 803FFA8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FFA90  7C 08 03 A6 */	mtlr r0
/* 803FFA94  38 21 00 20 */	addi r1, r1, 0x20
/* 803FFA98  4E 80 00 20 */	blr 
