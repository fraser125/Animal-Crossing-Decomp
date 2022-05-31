lbl_803D1B44:
/* 803D1B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D1B48  7C 08 02 A6 */	mflr r0
/* 803D1B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D1B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D1B54  7C 7F 1B 78 */	mr r31, r3
/* 803D1B58  4B FF FC 61 */	bl mNpc_GetNpcWorldNamePTableNo
/* 803D1B5C  28 03 00 00 */	cmplwi r3, 0
/* 803D1B60  40 82 00 1C */	bne lbl_803D1B7C
/* 803D1B64  7F E3 FB 78 */	mr r3, r31
/* 803D1B68  4B FF FE 8D */	bl mNpc_GetActorWorldNameP
/* 803D1B6C  28 03 00 00 */	cmplwi r3, 0
/* 803D1B70  40 82 00 0C */	bne lbl_803D1B7C
/* 803D1B74  3C 60 80 66 */	lis r3, l_no_name_npc_name@ha /* 0x8065B1D8@ha */
/* 803D1B78  38 63 B1 D8 */	addi r3, r3, l_no_name_npc_name@l /* 0x8065B1D8@l */
lbl_803D1B7C:
/* 803D1B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D1B84  7C 08 03 A6 */	mtlr r0
/* 803D1B88  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1B8C  4E 80 00 20 */	blr 
