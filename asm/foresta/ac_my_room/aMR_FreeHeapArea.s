lbl_80473188:
/* 80473188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047318C  7C 08 02 A6 */	mflr r0
/* 80473190  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80473194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047319C  7C 7F 1B 78 */	mr r31, r3
/* 804731A0  38 64 DF E8 */	addi r3, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804731A4  80 63 00 00 */	lwz r3, 0(r3)
/* 804731A8  28 03 00 00 */	cmplwi r3, 0
/* 804731AC  41 82 00 08 */	beq lbl_804731B4
/* 804731B0  4B F4 93 05 */	bl zelda_free
lbl_804731B4:
/* 804731B4  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804731B8  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804731BC  80 63 00 04 */	lwz r3, 4(r3)
/* 804731C0  28 03 00 00 */	cmplwi r3, 0
/* 804731C4  41 82 00 08 */	beq lbl_804731CC
/* 804731C8  4B F4 92 ED */	bl zelda_free
lbl_804731CC:
/* 804731CC  7F E3 FB 78 */	mr r3, r31
/* 804731D0  4B FF FF 49 */	bl aMR_FreeMallocBank
/* 804731D4  80 7F 04 A0 */	lwz r3, 0x4a0(r31)
/* 804731D8  28 03 00 00 */	cmplwi r3, 0
/* 804731DC  41 82 00 08 */	beq lbl_804731E4
/* 804731E0  4B F4 92 D5 */	bl zelda_free
lbl_804731E4:
/* 804731E4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804731E8  28 03 00 00 */	cmplwi r3, 0
/* 804731EC  41 82 00 08 */	beq lbl_804731F4
/* 804731F0  4B F4 92 C5 */	bl zelda_free
lbl_804731F4:
/* 804731F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804731F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804731FC  7C 08 03 A6 */	mtlr r0
/* 80473200  38 21 00 10 */	addi r1, r1, 0x10
/* 80473204  4E 80 00 20 */	blr 
