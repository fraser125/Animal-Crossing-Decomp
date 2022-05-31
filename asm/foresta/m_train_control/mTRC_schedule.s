lbl_803F2A90:
/* 803F2A90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F2A94  7C 08 02 A6 */	mflr r0
/* 803F2A98  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F2A9C  39 61 00 30 */	addi r11, r1, 0x30
/* 803F2AA0  4B CA 84 35 */	bl func_8009AED4
/* 803F2AA4  7C 7D 1B 78 */	mr r29, r3
/* 803F2AA8  3B E0 FF FF */	li r31, -1
/* 803F2AAC  4B FA 84 0D */	bl mEv_CheckTitleDemo
/* 803F2AB0  2C 03 00 01 */	cmpwi r3, 1
/* 803F2AB4  40 82 00 28 */	bne lbl_803F2ADC
/* 803F2AB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2ABC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F2AC0  3C 63 00 03 */	addis r3, r3, 3
/* 803F2AC4  88 03 88 44 */	lbz r0, -0x77bc(r3)
/* 803F2AC8  28 00 00 00 */	cmplwi r0, 0
/* 803F2ACC  40 82 00 08 */	bne lbl_803F2AD4
/* 803F2AD0  4B FF FD A9 */	bl mTRC_mati_init
lbl_803F2AD4:
/* 803F2AD4  38 60 FF FF */	li r3, -1
/* 803F2AD8  48 00 01 24 */	b lbl_803F2BFC
lbl_803F2ADC:
/* 803F2ADC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2AE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F2AE4  3F C3 00 03 */	addis r30, r3, 3
/* 803F2AE8  88 1E 88 3E */	lbz r0, -0x77c2(r30)
/* 803F2AEC  2C 00 00 03 */	cmpwi r0, 3
/* 803F2AF0  41 82 00 20 */	beq lbl_803F2B10
/* 803F2AF4  40 80 00 10 */	bge lbl_803F2B04
/* 803F2AF8  2C 00 00 02 */	cmpwi r0, 2
/* 803F2AFC  40 80 00 28 */	bge lbl_803F2B24
/* 803F2B00  48 00 00 C0 */	b lbl_803F2BC0
lbl_803F2B04:
/* 803F2B04  2C 00 00 05 */	cmpwi r0, 5
/* 803F2B08  40 80 00 B8 */	bge lbl_803F2BC0
/* 803F2B0C  48 00 00 EC */	b lbl_803F2BF8
lbl_803F2B10:
/* 803F2B10  38 00 00 00 */	li r0, 0
/* 803F2B14  98 1E 88 3E */	stb r0, -0x77c2(r30)
/* 803F2B18  4B FF FD D5 */	bl mTRC_demo_init
/* 803F2B1C  3B E0 00 00 */	li r31, 0
/* 803F2B20  48 00 00 D8 */	b lbl_803F2BF8
lbl_803F2B24:
/* 803F2B24  80 BE 88 50 */	lwz r5, -0x77b0(r30)
/* 803F2B28  7F A3 EB 78 */	mr r3, r29
/* 803F2B2C  80 1E 88 54 */	lwz r0, -0x77ac(r30)
/* 803F2B30  38 81 00 08 */	addi r4, r1, 8
/* 803F2B34  90 A1 00 08 */	stw r5, 8(r1)
/* 803F2B38  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F2B3C  80 1E 88 58 */	lwz r0, -0x77a8(r30)
/* 803F2B40  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F2B44  4B FF FB 8D */	bl aTRC_area_check
/* 803F2B48  2C 03 00 00 */	cmpwi r3, 0
/* 803F2B4C  40 82 00 28 */	bne lbl_803F2B74
/* 803F2B50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2B54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F2B58  3C 63 00 03 */	addis r3, r3, 3
/* 803F2B5C  88 03 88 44 */	lbz r0, -0x77bc(r3)
/* 803F2B60  28 00 00 06 */	cmplwi r0, 6
/* 803F2B64  41 80 00 10 */	blt lbl_803F2B74
/* 803F2B68  4B FF FE 31 */	bl mTRC_call_init
/* 803F2B6C  3B E0 00 01 */	li r31, 1
/* 803F2B70  48 00 00 88 */	b lbl_803F2BF8
lbl_803F2B74:
/* 803F2B74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2B78  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F2B7C  3C 83 00 03 */	addis r4, r3, 3
/* 803F2B80  88 04 88 44 */	lbz r0, -0x77bc(r4)
/* 803F2B84  28 00 00 06 */	cmplwi r0, 6
/* 803F2B88  40 80 00 24 */	bge lbl_803F2BAC
/* 803F2B8C  28 00 00 00 */	cmplwi r0, 0
/* 803F2B90  41 82 00 1C */	beq lbl_803F2BAC
/* 803F2B94  38 60 00 00 */	li r3, 0
/* 803F2B98  38 00 00 01 */	li r0, 1
/* 803F2B9C  98 7E 88 3E */	stb r3, -0x77c2(r30)
/* 803F2BA0  98 04 88 40 */	stb r0, -0x77c0(r4)
/* 803F2BA4  98 04 88 41 */	stb r0, -0x77bf(r4)
/* 803F2BA8  48 00 00 50 */	b lbl_803F2BF8
lbl_803F2BAC:
/* 803F2BAC  28 00 00 00 */	cmplwi r0, 0
/* 803F2BB0  40 82 00 48 */	bne lbl_803F2BF8
/* 803F2BB4  4B FF FD E5 */	bl mTRC_call_init
/* 803F2BB8  3B E0 00 01 */	li r31, 1
/* 803F2BBC  48 00 00 3C */	b lbl_803F2BF8
lbl_803F2BC0:
/* 803F2BC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2BC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F2BC8  3C 63 00 03 */	addis r3, r3, 3
/* 803F2BCC  88 03 88 44 */	lbz r0, -0x77bc(r3)
/* 803F2BD0  28 00 00 00 */	cmplwi r0, 0
/* 803F2BD4  40 82 00 24 */	bne lbl_803F2BF8
/* 803F2BD8  4B FA 7F D1 */	bl mEv_CheckArbeit
/* 803F2BDC  2C 03 00 00 */	cmpwi r3, 0
/* 803F2BE0  40 82 00 18 */	bne lbl_803F2BF8
/* 803F2BE4  4B FF FC 55 */	bl mTRC_time_check
/* 803F2BE8  2C 03 00 00 */	cmpwi r3, 0
/* 803F2BEC  41 82 00 0C */	beq lbl_803F2BF8
/* 803F2BF0  4B FF FE 25 */	bl mTRC_norm_init
/* 803F2BF4  3B E0 00 01 */	li r31, 1
lbl_803F2BF8:
/* 803F2BF8  7F E3 FB 78 */	mr r3, r31
lbl_803F2BFC:
/* 803F2BFC  39 61 00 30 */	addi r11, r1, 0x30
/* 803F2C00  4B CA 83 21 */	bl func_8009AF20
/* 803F2C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F2C08  7C 08 03 A6 */	mtlr r0
/* 803F2C0C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F2C10  4E 80 00 20 */	blr 
