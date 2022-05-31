lbl_80566C30:
/* 80566C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566C34  7C 08 02 A6 */	mflr r0
/* 80566C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566C40  7C 7F 1B 78 */	mr r31, r3
/* 80566C44  4B E5 8A 65 */	bl func_803BF6A8
/* 80566C48  4B E5 A0 51 */	bl mMsg_Check_MainNormalContinue
/* 80566C4C  2C 03 00 01 */	cmpwi r3, 1
/* 80566C50  40 82 00 34 */	bne lbl_80566C84
/* 80566C54  4B E1 C8 ED */	bl func_80383540
/* 80566C58  4B E1 CF 15 */	bl mChoice_Get_ChoseNum
/* 80566C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80566C60  41 82 00 08 */	beq lbl_80566C68
/* 80566C64  48 00 00 14 */	b lbl_80566C78
lbl_80566C68:
/* 80566C68  7F E3 FB 78 */	mr r3, r31
/* 80566C6C  38 80 00 04 */	li r4, 4
/* 80566C70  48 00 00 91 */	bl aNPS_change_talk_proc
/* 80566C74  48 00 00 10 */	b lbl_80566C84
lbl_80566C78:
/* 80566C78  7F E3 FB 78 */	mr r3, r31
/* 80566C7C  38 80 00 02 */	li r4, 2
/* 80566C80  48 00 00 81 */	bl aNPS_change_talk_proc
lbl_80566C84:
/* 80566C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566C8C  7C 08 03 A6 */	mtlr r0
/* 80566C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80566C94  4E 80 00 20 */	blr 
