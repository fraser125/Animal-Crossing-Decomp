lbl_805707C4:
/* 805707C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805707C8  7C 08 02 A6 */	mflr r0
/* 805707CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805707D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805707D4  93 C1 00 08 */	stw r30, 8(r1)
/* 805707D8  7C 7E 1B 78 */	mr r30, r3
/* 805707DC  4B E7 33 8D */	bl mQst_GetFirstJobData
/* 805707E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805707E4  7C 7F 1B 78 */	mr r31, r3
/* 805707E8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805707EC  3C A5 00 02 */	addis r5, r5, 2
/* 805707F0  38 80 00 00 */	li r4, 0
/* 805707F4  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805707F8  4B E6 FF 31 */	bl mPr_GetPossessionItemIdx
/* 805707FC  28 1E 00 05 */	cmplwi r30, 5
/* 80570800  7C 66 1B 78 */	mr r6, r3
/* 80570804  40 82 00 18 */	bne lbl_8057081C
/* 80570808  7F E3 FB 78 */	mr r3, r31
/* 8057080C  38 9F 00 3A */	addi r4, r31, 0x3a
/* 80570810  38 A0 22 01 */	li r5, 0x2201
/* 80570814  4B E7 3A E5 */	bl mQst_SetFirstJobAxe
/* 80570818  48 00 00 14 */	b lbl_8057082C
lbl_8057081C:
/* 8057081C  7F E3 FB 78 */	mr r3, r31
/* 80570820  38 9F 00 3A */	addi r4, r31, 0x3a
/* 80570824  38 A0 22 01 */	li r5, 0x2201
/* 80570828  4B E7 3A F5 */	bl mQst_SetFirstJobAxe2
lbl_8057082C:
/* 8057082C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570834  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570838  7C 08 03 A6 */	mtlr r0
/* 8057083C  38 21 00 10 */	addi r1, r1, 0x10
/* 80570840  4E 80 00 20 */	blr 
