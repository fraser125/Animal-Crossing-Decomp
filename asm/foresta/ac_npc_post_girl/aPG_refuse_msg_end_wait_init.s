lbl_8056D4FC:
/* 8056D4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D500  7C 08 02 A6 */	mflr r0
/* 8056D504  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D50C  93 C1 00 08 */	stw r30, 8(r1)
/* 8056D510  7C 7E 1B 78 */	mr r30, r3
/* 8056D514  4B E5 21 95 */	bl func_803BF6A8
/* 8056D518  88 1E 09 A5 */	lbz r0, 0x9a5(r30)
/* 8056D51C  7C 65 1B 78 */	mr r5, r3
/* 8056D520  3C 80 80 6C */	lis r4, msg_no_779@ha /* 0x806BE9CC@ha */
/* 8056D524  7F C3 F3 78 */	mr r3, r30
/* 8056D528  38 84 E9 CC */	addi r4, r4, msg_no_779@l /* 0x806BE9CC@l */
/* 8056D52C  54 00 10 3A */	slwi r0, r0, 2
/* 8056D530  7C 84 02 14 */	add r4, r4, r0
/* 8056D534  7C BF 2B 78 */	mr r31, r5
/* 8056D538  80 84 FF FC */	lwz r4, -4(r4)
/* 8056D53C  4B FF EF 6D */	bl aPG_ChangeMsgData
/* 8056D540  7F E3 FB 78 */	mr r3, r31
/* 8056D544  4B E5 37 E5 */	bl mMsg_Set_ForceNext
/* 8056D548  7F E3 FB 78 */	mr r3, r31
/* 8056D54C  4B E5 38 01 */	bl mMsg_Unset_LockContinue
/* 8056D550  38 00 FF FF */	li r0, -1
/* 8056D554  B0 1E 09 74 */	sth r0, 0x974(r30)
/* 8056D558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D55C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D560  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056D564  7C 08 03 A6 */	mtlr r0
/* 8056D568  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D56C  4E 80 00 20 */	blr 
