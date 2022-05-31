lbl_80573C2C:
/* 80573C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573C30  7C 08 02 A6 */	mflr r0
/* 80573C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573C3C  7C 7F 1B 78 */	mr r31, r3
/* 80573C40  4B E4 BA 69 */	bl func_803BF6A8
/* 80573C44  4B E4 D0 55 */	bl mMsg_Check_MainNormalContinue
/* 80573C48  2C 03 00 01 */	cmpwi r3, 1
/* 80573C4C  40 82 00 48 */	bne lbl_80573C94
/* 80573C50  7F E3 FB 78 */	mr r3, r31
/* 80573C54  38 80 00 0A */	li r4, 0xa
/* 80573C58  48 00 00 F1 */	bl aNRTC_change_talk_proc
/* 80573C5C  4B E0 F8 E5 */	bl func_80383540
/* 80573C60  4B E0 FF 0D */	bl mChoice_Get_ChoseNum
/* 80573C64  2C 03 00 01 */	cmpwi r3, 1
/* 80573C68  41 82 00 20 */	beq lbl_80573C88
/* 80573C6C  40 80 00 28 */	bge lbl_80573C94
/* 80573C70  2C 03 00 00 */	cmpwi r3, 0
/* 80573C74  40 80 00 08 */	bge lbl_80573C7C
/* 80573C78  48 00 00 1C */	b lbl_80573C94
lbl_80573C7C:
/* 80573C7C  38 00 00 03 */	li r0, 3
/* 80573C80  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573C84  48 00 00 10 */	b lbl_80573C94
lbl_80573C88:
/* 80573C88  7F E3 FB 78 */	mr r3, r31
/* 80573C8C  38 80 00 06 */	li r4, 6
/* 80573C90  48 00 00 B9 */	bl aNRTC_change_talk_proc
lbl_80573C94:
/* 80573C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573C9C  7C 08 03 A6 */	mtlr r0
/* 80573CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80573CA4  4E 80 00 20 */	blr 
