lbl_803CBEFC:
/* 803CBEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CBF00  7C 08 02 A6 */	mflr r0
/* 803CBF04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CBF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CBF0C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CBF10  3C 84 00 02 */	addis r4, r4, 2
/* 803CBF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CBF18  93 C1 00 08 */	stw r30, 8(r1)
/* 803CBF1C  83 E4 61 3C */	lwz r31, 0x613c(r4)
/* 803CBF20  28 1F 00 00 */	cmplwi r31, 0
/* 803CBF24  41 82 00 70 */	beq lbl_803CBF94
/* 803CBF28  48 00 08 61 */	bl mNpc_SearchAnimalPersonalID
/* 803CBF2C  2C 03 FF FF */	cmpwi r3, -1
/* 803CBF30  41 82 00 64 */	beq lbl_803CBF94
/* 803CBF34  1C A3 09 88 */	mulli r5, r3, 0x988
/* 803CBF38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CBF3C  7F E3 FB 78 */	mr r3, r31
/* 803CBF40  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CBF44  7C 80 2A 14 */	add r4, r0, r5
/* 803CBF48  38 A0 00 07 */	li r5, 7
/* 803CBF4C  3F C4 00 01 */	addis r30, r4, 1
/* 803CBF50  38 9E 74 48 */	addi r4, r30, 0x7448
/* 803CBF54  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803CBF58  4B FF FE 21 */	bl mNpc_GetAnimalMemoryIdx
/* 803CBF5C  2C 03 FF FF */	cmpwi r3, -1
/* 803CBF60  40 82 00 34 */	bne lbl_803CBF94
/* 803CBF64  7F C3 F3 78 */	mr r3, r30
/* 803CBF68  38 9E 00 10 */	addi r4, r30, 0x10
/* 803CBF6C  38 A0 00 07 */	li r5, 7
/* 803CBF70  4B FF FB 59 */	bl mNpc_ForceGetFreeAnimalMemoryIdx
/* 803CBF74  2C 03 FF FF */	cmpwi r3, -1
/* 803CBF78  41 82 00 1C */	beq lbl_803CBF94
/* 803CBF7C  1C A3 01 38 */	mulli r5, r3, 0x138
/* 803CBF80  7F E3 FB 78 */	mr r3, r31
/* 803CBF84  7F C4 F3 78 */	mr r4, r30
/* 803CBF88  38 A5 00 10 */	addi r5, r5, 0x10
/* 803CBF8C  7C BE 2A 14 */	add r5, r30, r5
/* 803CBF90  4B FF FD 1D */	bl mNpc_SetAnimalMemory_NotSetDay
lbl_803CBF94:
/* 803CBF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CBF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CBF9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CBFA0  7C 08 03 A6 */	mtlr r0
/* 803CBFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CBFA8  4E 80 00 20 */	blr 
