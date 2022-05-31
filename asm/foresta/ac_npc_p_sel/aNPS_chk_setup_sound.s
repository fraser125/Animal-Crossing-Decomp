lbl_80566AE4:
/* 80566AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566AE8  7C 08 02 A6 */	mflr r0
/* 80566AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566AF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80566AF8  7C 7E 1B 78 */	mr r30, r3
/* 80566AFC  4B E5 8B AD */	bl func_803BF6A8
/* 80566B00  4B E5 A1 99 */	bl mMsg_Check_MainNormalContinue
/* 80566B04  2C 03 00 01 */	cmpwi r3, 1
/* 80566B08  40 82 00 50 */	bne lbl_80566B58
/* 80566B0C  3B E0 FF FF */	li r31, -1
/* 80566B10  4B E1 CA 31 */	bl func_80383540
/* 80566B14  4B E1 D0 59 */	bl mChoice_Get_ChoseNum
/* 80566B18  2C 03 00 01 */	cmpwi r3, 1
/* 80566B1C  41 82 00 1C */	beq lbl_80566B38
/* 80566B20  40 80 00 24 */	bge lbl_80566B44
/* 80566B24  2C 03 00 00 */	cmpwi r3, 0
/* 80566B28  40 80 00 08 */	bge lbl_80566B30
/* 80566B2C  48 00 00 18 */	b lbl_80566B44
lbl_80566B30:
/* 80566B30  3B E0 00 06 */	li r31, 6
/* 80566B34  48 00 00 10 */	b lbl_80566B44
lbl_80566B38:
/* 80566B38  38 00 00 03 */	li r0, 3
/* 80566B3C  3B E0 00 05 */	li r31, 5
/* 80566B40  90 1E 09 98 */	stw r0, 0x998(r30)
lbl_80566B44:
/* 80566B44  2C 1F FF FF */	cmpwi r31, -1
/* 80566B48  41 82 00 10 */	beq lbl_80566B58
/* 80566B4C  7F C3 F3 78 */	mr r3, r30
/* 80566B50  7F E4 FB 78 */	mr r4, r31
/* 80566B54  48 00 01 AD */	bl aNPS_change_talk_proc
lbl_80566B58:
/* 80566B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566B60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80566B64  7C 08 03 A6 */	mtlr r0
/* 80566B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80566B6C  4E 80 00 20 */	blr 
