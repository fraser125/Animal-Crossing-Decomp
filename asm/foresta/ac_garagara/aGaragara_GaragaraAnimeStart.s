lbl_80424B48:
/* 80424B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424B4C  7C 08 02 A6 */	mflr r0
/* 80424B50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80424B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424B5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80424B60  7C 7E 1B 78 */	mr r30, r3
/* 80424B64  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80424B68  3C 63 00 02 */	addis r3, r3, 2
/* 80424B6C  80 63 60 CC */	lwz r3, 0x60cc(r3)
/* 80424B70  28 03 00 00 */	cmplwi r3, 0
/* 80424B74  41 82 00 2C */	beq lbl_80424BA0
/* 80424B78  83 E3 00 00 */	lwz r31, 0(r3)
/* 80424B7C  28 1F 00 00 */	cmplwi r31, 0
/* 80424B80  41 82 00 20 */	beq lbl_80424BA0
/* 80424B84  7F E3 FB 78 */	mr r3, r31
/* 80424B88  38 80 00 01 */	li r4, 1
/* 80424B8C  4B FF FF 85 */	bl aGaragara_RequestStatus
/* 80424B90  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 80424B94  38 60 00 01 */	li r3, 1
/* 80424B98  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 80424B9C  48 00 00 08 */	b lbl_80424BA4
lbl_80424BA0:
/* 80424BA0  38 60 00 00 */	li r3, 0
lbl_80424BA4:
/* 80424BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80424BAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80424BB0  7C 08 03 A6 */	mtlr r0
/* 80424BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80424BB8  4E 80 00 20 */	blr 
