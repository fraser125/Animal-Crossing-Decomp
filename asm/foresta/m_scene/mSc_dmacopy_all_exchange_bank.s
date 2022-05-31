lbl_803F08F8:
/* 803F08F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F08FC  7C 08 02 A6 */	mflr r0
/* 803F0900  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F0904  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0908  4B CA A5 CD */	bl func_8009AED4
/* 803F090C  7C 7D 1B 78 */	mr r29, r3
/* 803F0910  80 03 19 50 */	lwz r0, 0x1950(r3)
/* 803F0914  80 83 19 2C */	lwz r4, 0x192c(r3)
/* 803F0918  54 00 10 3A */	slwi r0, r0, 2
/* 803F091C  7C 7D 02 14 */	add r3, r29, r0
/* 803F0920  80 03 19 3C */	lwz r0, 0x193c(r3)
/* 803F0924  1C 64 00 5C */	mulli r3, r4, 0x5c
/* 803F0928  90 1D 19 34 */	stw r0, 0x1934(r29)
/* 803F092C  7F FD 1A 14 */	add r31, r29, r3
/* 803F0930  83 DD 19 2C */	lwz r30, 0x192c(r29)
/* 803F0934  48 00 00 80 */	b lbl_803F09B4
lbl_803F0938:
/* 803F0938  A8 7F 00 00 */	lha r3, 0(r31)
/* 803F093C  7C 60 07 35 */	extsh. r0, r3
/* 803F0940  41 82 00 6C */	beq lbl_803F09AC
/* 803F0944  88 1F 00 5B */	lbz r0, 0x5b(r31)
/* 803F0948  28 00 00 03 */	cmplwi r0, 3
/* 803F094C  41 82 00 60 */	beq lbl_803F09AC
/* 803F0950  7C 60 07 35 */	extsh. r0, r3
/* 803F0954  40 80 00 18 */	bge lbl_803F096C
/* 803F0958  7F E3 FB 78 */	mr r3, r31
/* 803F095C  7F A4 EB 78 */	mr r4, r29
/* 803F0960  7F C5 F3 78 */	mr r5, r30
/* 803F0964  4B FF FE B1 */	bl mSc_dmacopy_all_exchange_bank_sub
/* 803F0968  48 00 00 44 */	b lbl_803F09AC
lbl_803F096C:
/* 803F096C  A8 1F 00 58 */	lha r0, 0x58(r31)
/* 803F0970  2C 00 00 00 */	cmpwi r0, 0
/* 803F0974  41 82 00 18 */	beq lbl_803F098C
/* 803F0978  7F E3 FB 78 */	mr r3, r31
/* 803F097C  7F A4 EB 78 */	mr r4, r29
/* 803F0980  7F C5 F3 78 */	mr r5, r30
/* 803F0984  4B FF FE 91 */	bl mSc_dmacopy_all_exchange_bank_sub
/* 803F0988  48 00 00 24 */	b lbl_803F09AC
lbl_803F098C:
/* 803F098C  80 1D 19 30 */	lwz r0, 0x1930(r29)
/* 803F0990  7C 1E 00 00 */	cmpw r30, r0
/* 803F0994  41 80 00 10 */	blt lbl_803F09A4
/* 803F0998  7F E3 FB 78 */	mr r3, r31
/* 803F099C  4B FF FB B9 */	bl mSc_clear_bank_status
/* 803F09A0  48 00 00 0C */	b lbl_803F09AC
lbl_803F09A4:
/* 803F09A4  38 00 00 00 */	li r0, 0
/* 803F09A8  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803F09AC:
/* 803F09AC  3B FF 00 5C */	addi r31, r31, 0x5c
/* 803F09B0  3B DE 00 01 */	addi r30, r30, 1
lbl_803F09B4:
/* 803F09B4  2C 1E 00 46 */	cmpwi r30, 0x46
/* 803F09B8  41 80 FF 80 */	blt lbl_803F0938
/* 803F09BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F09C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F09C4  3C 63 00 02 */	addis r3, r3, 2
/* 803F09C8  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 803F09CC  28 03 00 00 */	cmplwi r3, 0
/* 803F09D0  41 82 00 10 */	beq lbl_803F09E0
/* 803F09D4  81 83 00 F8 */	lwz r12, 0xf8(r3)
/* 803F09D8  7D 89 03 A6 */	mtctr r12
/* 803F09DC  4E 80 04 21 */	bctrl 
lbl_803F09E0:
/* 803F09E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F09E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F09E8  3C 63 00 02 */	addis r3, r3, 2
/* 803F09EC  81 83 60 74 */	lwz r12, 0x6074(r3)
/* 803F09F0  28 0C 00 00 */	cmplwi r12, 0
/* 803F09F4  41 82 00 0C */	beq lbl_803F0A00
/* 803F09F8  7D 89 03 A6 */	mtctr r12
/* 803F09FC  4E 80 04 21 */	bctrl 
lbl_803F0A00:
/* 803F0A00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0A04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0A08  3C 63 00 02 */	addis r3, r3, 2
/* 803F0A0C  80 63 60 6C */	lwz r3, 0x606c(r3)
/* 803F0A10  28 03 00 00 */	cmplwi r3, 0
/* 803F0A14  41 82 00 10 */	beq lbl_803F0A24
/* 803F0A18  81 83 00 04 */	lwz r12, 4(r3)
/* 803F0A1C  7D 89 03 A6 */	mtctr r12
/* 803F0A20  4E 80 04 21 */	bctrl 
lbl_803F0A24:
/* 803F0A24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0A28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0A2C  3C 63 00 02 */	addis r3, r3, 2
/* 803F0A30  80 63 60 7C */	lwz r3, 0x607c(r3)
/* 803F0A34  28 03 00 00 */	cmplwi r3, 0
/* 803F0A38  41 82 00 10 */	beq lbl_803F0A48
/* 803F0A3C  81 83 00 0C */	lwz r12, 0xc(r3)
/* 803F0A40  7D 89 03 A6 */	mtctr r12
/* 803F0A44  4E 80 04 21 */	bctrl 
lbl_803F0A48:
/* 803F0A48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0A4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0A50  3C 63 00 02 */	addis r3, r3, 2
/* 803F0A54  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 803F0A58  28 03 00 00 */	cmplwi r3, 0
/* 803F0A5C  41 82 00 10 */	beq lbl_803F0A6C
/* 803F0A60  81 83 00 24 */	lwz r12, 0x24(r3)
/* 803F0A64  7D 89 03 A6 */	mtctr r12
/* 803F0A68  4E 80 04 21 */	bctrl 
lbl_803F0A6C:
/* 803F0A6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0A70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0A74  3C 63 00 02 */	addis r3, r3, 2
/* 803F0A78  80 63 60 A8 */	lwz r3, 0x60a8(r3)
/* 803F0A7C  28 03 00 00 */	cmplwi r3, 0
/* 803F0A80  41 82 00 10 */	beq lbl_803F0A90
/* 803F0A84  81 83 00 0C */	lwz r12, 0xc(r3)
/* 803F0A88  7D 89 03 A6 */	mtctr r12
/* 803F0A8C  4E 80 04 21 */	bctrl 
lbl_803F0A90:
/* 803F0A90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0A94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0A98  3C 63 00 02 */	addis r3, r3, 2
/* 803F0A9C  80 63 60 C8 */	lwz r3, 0x60c8(r3)
/* 803F0AA0  28 03 00 00 */	cmplwi r3, 0
/* 803F0AA4  41 82 00 10 */	beq lbl_803F0AB4
/* 803F0AA8  81 83 00 04 */	lwz r12, 4(r3)
/* 803F0AAC  7D 89 03 A6 */	mtctr r12
/* 803F0AB0  4E 80 04 21 */	bctrl 
lbl_803F0AB4:
/* 803F0AB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0AB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0ABC  3C 63 00 02 */	addis r3, r3, 2
/* 803F0AC0  80 63 60 C4 */	lwz r3, 0x60c4(r3)
/* 803F0AC4  28 03 00 00 */	cmplwi r3, 0
/* 803F0AC8  41 82 00 10 */	beq lbl_803F0AD8
/* 803F0ACC  81 83 00 04 */	lwz r12, 4(r3)
/* 803F0AD0  7D 89 03 A6 */	mtctr r12
/* 803F0AD4  4E 80 04 21 */	bctrl 
lbl_803F0AD8:
/* 803F0AD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0ADC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0AE0  3C 63 00 02 */	addis r3, r3, 2
/* 803F0AE4  81 83 60 E0 */	lwz r12, 0x60e0(r3)
/* 803F0AE8  28 0C 00 00 */	cmplwi r12, 0
/* 803F0AEC  41 82 00 0C */	beq lbl_803F0AF8
/* 803F0AF0  7D 89 03 A6 */	mtctr r12
/* 803F0AF4  4E 80 04 21 */	bctrl 
lbl_803F0AF8:
/* 803F0AF8  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0AFC  4B CA A4 25 */	bl func_8009AF20
/* 803F0B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F0B04  7C 08 03 A6 */	mtlr r0
/* 803F0B08  38 21 00 20 */	addi r1, r1, 0x20
/* 803F0B0C  4E 80 00 20 */	blr 
