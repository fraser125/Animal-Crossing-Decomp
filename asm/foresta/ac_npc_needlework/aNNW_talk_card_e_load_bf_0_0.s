lbl_80563BA0:
/* 80563BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563BA4  7C 08 02 A6 */	mflr r0
/* 80563BA8  38 80 00 09 */	li r4, 9
/* 80563BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563BB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80563BB8  7C 7E 1B 78 */	mr r30, r3
/* 80563BBC  38 60 00 04 */	li r3, 4
/* 80563BC0  4B E3 48 BD */	bl mDemo_Get_OrderValue
/* 80563BC4  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80563BC8  4B E5 BA E1 */	bl func_803BF6A8
/* 80563BCC  2C 1F 00 00 */	cmpwi r31, 0
/* 80563BD0  41 82 00 4C */	beq lbl_80563C1C
/* 80563BD4  4B E5 D0 C5 */	bl mMsg_Check_MainNormalContinue
/* 80563BD8  2C 03 00 01 */	cmpwi r3, 1
/* 80563BDC  40 82 00 40 */	bne lbl_80563C1C
/* 80563BE0  4B E1 F9 61 */	bl func_80383540
/* 80563BE4  4B E1 FF 89 */	bl mChoice_Get_ChoseNum
/* 80563BE8  2C 03 00 01 */	cmpwi r3, 1
/* 80563BEC  41 82 00 24 */	beq lbl_80563C10
/* 80563BF0  40 80 00 2C */	bge lbl_80563C1C
/* 80563BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80563BF8  40 80 00 08 */	bge lbl_80563C00
/* 80563BFC  48 00 00 20 */	b lbl_80563C1C
lbl_80563C00:
/* 80563C00  7F C3 F3 78 */	mr r3, r30
/* 80563C04  38 80 00 43 */	li r4, 0x43
/* 80563C08  48 00 08 81 */	bl aNNW_change_talk_proc
/* 80563C0C  48 00 00 10 */	b lbl_80563C1C
lbl_80563C10:
/* 80563C10  7F C3 F3 78 */	mr r3, r30
/* 80563C14  38 80 00 49 */	li r4, 0x49
/* 80563C18  48 00 08 71 */	bl aNNW_change_talk_proc
lbl_80563C1C:
/* 80563C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563C24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563C28  7C 08 03 A6 */	mtlr r0
/* 80563C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80563C30  4E 80 00 20 */	blr 
