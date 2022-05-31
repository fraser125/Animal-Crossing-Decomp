lbl_80579A28:
/* 80579A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579A2C  7C 08 02 A6 */	mflr r0
/* 80579A30  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80579A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579A3C  7C 9F 23 78 */	mr r31, r4
/* 80579A40  93 C1 00 08 */	stw r30, 8(r1)
/* 80579A44  7C 7E 1B 78 */	mr r30, r3
/* 80579A48  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80579A4C  3C 63 00 02 */	addis r3, r3, 2
/* 80579A50  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80579A54  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80579A58  28 00 00 00 */	cmplwi r0, 0
/* 80579A5C  40 82 00 1C */	bne lbl_80579A78
/* 80579A60  4B E4 5C 49 */	bl func_803BF6A8
/* 80579A64  4B E4 72 E9 */	bl mMsg_Unset_LockContinue
/* 80579A68  7F C3 F3 78 */	mr r3, r30
/* 80579A6C  7F E4 FB 78 */	mr r4, r31
/* 80579A70  38 A0 00 02 */	li r5, 2
/* 80579A74  48 00 2A 41 */	bl aNSC_setupAction
lbl_80579A78:
/* 80579A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579A7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579A80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80579A84  7C 08 03 A6 */	mtlr r0
/* 80579A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80579A8C  4E 80 00 20 */	blr 
