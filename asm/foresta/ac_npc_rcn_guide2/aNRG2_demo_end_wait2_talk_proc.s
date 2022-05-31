lbl_80570C28:
/* 80570C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570C2C  7C 08 02 A6 */	mflr r0
/* 80570C30  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570C3C  7C 7F 1B 78 */	mr r31, r3
/* 80570C40  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80570C44  3C 63 00 02 */	addis r3, r3, 2
/* 80570C48  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80570C4C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80570C50  28 00 00 00 */	cmplwi r0, 0
/* 80570C54  40 82 00 18 */	bne lbl_80570C6C
/* 80570C58  4B E4 EA 51 */	bl func_803BF6A8
/* 80570C5C  4B E5 00 F1 */	bl mMsg_Unset_LockContinue
/* 80570C60  7F E3 FB 78 */	mr r3, r31
/* 80570C64  38 80 00 04 */	li r4, 4
/* 80570C68  48 00 06 4D */	bl aNRG2_change_talk_proc
lbl_80570C6C:
/* 80570C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570C74  7C 08 03 A6 */	mtlr r0
/* 80570C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80570C7C  4E 80 00 20 */	blr 
