lbl_8049C9F4:
/* 8049C9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C9F8  7C 08 02 A6 */	mflr r0
/* 8049C9FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049CA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CA04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049CA08  3C 63 00 02 */	addis r3, r3, 2
/* 8049CA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049CA10  3F E0 00 01 */	lis r31, 1
/* 8049CA14  93 C1 00 08 */	stw r30, 8(r1)
/* 8049CA18  8B C3 04 64 */	lbz r30, 0x464(r3)
/* 8049CA1C  7F DE 07 74 */	extsb r30, r30
/* 8049CA20  48 00 00 08 */	b lbl_8049CA28
lbl_8049CA24:
/* 8049CA24  3B DE FF FF */	addi r30, r30, -1
lbl_8049CA28:
/* 8049CA28  2C 1E 00 00 */	cmpwi r30, 0
/* 8049CA2C  40 81 00 18 */	ble lbl_8049CA44
/* 8049CA30  38 9F FE 08 */	addi r4, r31, -504
/* 8049CA34  38 60 28 06 */	li r3, 0x2806
/* 8049CA38  4B F4 E3 AD */	bl mSP_SetGoods2ReservedPoint
/* 8049CA3C  2C 03 00 00 */	cmpwi r3, 0
/* 8049CA40  40 82 FF E4 */	bne lbl_8049CA24
lbl_8049CA44:
/* 8049CA44  3F E0 00 01 */	lis r31, 0x0001 /* 0x0000FE13@ha */
lbl_8049CA48:
/* 8049CA48  38 7F FE 13 */	addi r3, r31, 0xFE13 /* 0x0000FE13@l */
/* 8049CA4C  38 9F FE 08 */	addi r4, r31, -504
/* 8049CA50  4B F4 E3 95 */	bl mSP_SetGoods2ReservedPoint
/* 8049CA54  2C 03 00 00 */	cmpwi r3, 0
/* 8049CA58  40 82 FF F0 */	bne lbl_8049CA48
/* 8049CA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049CA64  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049CA68  7C 08 03 A6 */	mtlr r0
/* 8049CA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CA70  4E 80 00 20 */	blr 
