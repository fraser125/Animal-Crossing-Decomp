lbl_80527C14:
/* 80527C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527C18  7C 08 02 A6 */	mflr r0
/* 80527C1C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80527C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527C28  7C 7F 1B 78 */	mr r31, r3
/* 80527C2C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80527C30  3C 63 00 02 */	addis r3, r3, 2
/* 80527C34  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 80527C38  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80527C3C  28 00 00 00 */	cmplwi r0, 0
/* 80527C40  40 82 00 18 */	bne lbl_80527C58
/* 80527C44  4B E9 7A 65 */	bl func_803BF6A8
/* 80527C48  4B E9 91 05 */	bl mMsg_Unset_LockContinue
/* 80527C4C  7F E3 FB 78 */	mr r3, r31
/* 80527C50  38 80 00 0D */	li r4, 0xd
/* 80527C54  48 00 00 A1 */	bl aHWN_change_talk_proc
lbl_80527C58:
/* 80527C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527C60  7C 08 03 A6 */	mtlr r0
/* 80527C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80527C68  4E 80 00 20 */	blr 
