lbl_803CBD24:
/* 803CBD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CBD28  7C 08 02 A6 */	mflr r0
/* 803CBD2C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803CBD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CBD34  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803CBD38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CBD3C  3F E6 00 02 */	addis r31, r6, 2
/* 803CBD40  3B FF 61 20 */	addi r31, r31, 0x6120
/* 803CBD44  93 C1 00 08 */	stw r30, 8(r1)
/* 803CBD48  7C BE 2B 79 */	or. r30, r5, r5
/* 803CBD4C  41 82 00 14 */	beq lbl_803CBD60
/* 803CBD50  4B FF FF 5D */	bl mNpc_SetAnimalMemory_NotSetDay
/* 803CBD54  7F E4 FB 78 */	mr r4, r31
/* 803CBD58  38 7E 00 14 */	addi r3, r30, 0x14
/* 803CBD5C  48 03 B4 D9 */	bl lbRTC_TimeCopy
lbl_803CBD60:
/* 803CBD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CBD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CBD68  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CBD6C  7C 08 03 A6 */	mtlr r0
/* 803CBD70  38 21 00 10 */	addi r1, r1, 0x10
/* 803CBD74  4E 80 00 20 */	blr 
