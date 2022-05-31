lbl_80429ADC:
/* 80429ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429AE0  7C 08 02 A6 */	mflr r0
/* 80429AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429AEC  7C 7F 1B 78 */	mr r31, r3
/* 80429AF0  4B FA 84 11 */	bl mNpc_GetNpcLooks
/* 80429AF4  2C 03 00 03 */	cmpwi r3, 3
/* 80429AF8  41 82 00 30 */	beq lbl_80429B28
/* 80429AFC  40 80 00 1C */	bge lbl_80429B18
/* 80429B00  2C 03 00 01 */	cmpwi r3, 1
/* 80429B04  41 82 00 24 */	beq lbl_80429B28
/* 80429B08  40 80 00 4C */	bge lbl_80429B54
/* 80429B0C  2C 03 00 00 */	cmpwi r3, 0
/* 80429B10  40 80 00 44 */	bge lbl_80429B54
/* 80429B14  48 00 00 C0 */	b lbl_80429BD4
lbl_80429B18:
/* 80429B18  2C 03 00 05 */	cmpwi r3, 5
/* 80429B1C  41 82 00 90 */	beq lbl_80429BAC
/* 80429B20  40 80 00 B4 */	bge lbl_80429BD4
/* 80429B24  48 00 00 5C */	b lbl_80429B80
lbl_80429B28:
/* 80429B28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80429B2C  7F E3 FB 78 */	mr r3, r31
/* 80429B30  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80429B34  38 80 00 0A */	li r4, 0xa
/* 80429B38  3C C5 00 02 */	addis r6, r5, 2
/* 80429B3C  38 A0 00 00 */	li r5, 0
/* 80429B40  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80429B44  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80429B48  7D 89 03 A6 */	mtctr r12
/* 80429B4C  4E 80 04 21 */	bctrl 
/* 80429B50  48 00 00 84 */	b lbl_80429BD4
lbl_80429B54:
/* 80429B54  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80429B58  7F E3 FB 78 */	mr r3, r31
/* 80429B5C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80429B60  38 80 00 0B */	li r4, 0xb
/* 80429B64  3C C5 00 02 */	addis r6, r5, 2
/* 80429B68  38 A0 00 00 */	li r5, 0
/* 80429B6C  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80429B70  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80429B74  7D 89 03 A6 */	mtctr r12
/* 80429B78  4E 80 04 21 */	bctrl 
/* 80429B7C  48 00 00 58 */	b lbl_80429BD4
lbl_80429B80:
/* 80429B80  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80429B84  7F E3 FB 78 */	mr r3, r31
/* 80429B88  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80429B8C  38 80 00 0C */	li r4, 0xc
/* 80429B90  3C C5 00 02 */	addis r6, r5, 2
/* 80429B94  38 A0 00 00 */	li r5, 0
/* 80429B98  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80429B9C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80429BA0  7D 89 03 A6 */	mtctr r12
/* 80429BA4  4E 80 04 21 */	bctrl 
/* 80429BA8  48 00 00 2C */	b lbl_80429BD4
lbl_80429BAC:
/* 80429BAC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80429BB0  7F E3 FB 78 */	mr r3, r31
/* 80429BB4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80429BB8  38 80 00 0D */	li r4, 0xd
/* 80429BBC  3C C5 00 02 */	addis r6, r5, 2
/* 80429BC0  38 A0 00 00 */	li r5, 0
/* 80429BC4  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80429BC8  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80429BCC  7D 89 03 A6 */	mtctr r12
/* 80429BD0  4E 80 04 21 */	bctrl 
lbl_80429BD4:
/* 80429BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429BDC  7C 08 03 A6 */	mtlr r0
/* 80429BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80429BE4  4E 80 00 20 */	blr 
