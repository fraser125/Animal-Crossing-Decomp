lbl_803D1AF8:
/* 803D1AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D1AFC  7C 08 02 A6 */	mflr r0
/* 803D1B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D1B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D1B08  7C 7F 1B 78 */	mr r31, r3
/* 803D1B0C  7C 83 23 78 */	mr r3, r4
/* 803D1B10  4B FF FE E5 */	bl mNpc_GetActorWorldNameP
/* 803D1B14  7C 64 1B 79 */	or. r4, r3, r3
/* 803D1B18  40 82 00 10 */	bne lbl_803D1B28
/* 803D1B1C  3C 60 80 66 */	lis r3, l_no_name_npc_name@ha /* 0x8065B1D8@ha */
/* 803D1B20  38 03 B1 D8 */	addi r0, r3, l_no_name_npc_name@l /* 0x8065B1D8@l */
/* 803D1B24  7C 04 03 78 */	mr r4, r0
lbl_803D1B28:
/* 803D1B28  7F E3 FB 78 */	mr r3, r31
/* 803D1B2C  48 00 E3 91 */	bl mPr_CopyPlayerName
/* 803D1B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D1B38  7C 08 03 A6 */	mtlr r0
/* 803D1B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1B40  4E 80 00 20 */	blr 
