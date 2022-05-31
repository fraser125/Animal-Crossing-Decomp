lbl_8055DE08:
/* 8055DE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055DE0C  7C 08 02 A6 */	mflr r0
/* 8055DE10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055DE18  7C 9F 23 78 */	mr r31, r4
/* 8055DE1C  38 80 00 09 */	li r4, 9
/* 8055DE20  93 C1 00 08 */	stw r30, 8(r1)
/* 8055DE24  7C 7E 1B 78 */	mr r30, r3
/* 8055DE28  38 60 00 04 */	li r3, 4
/* 8055DE2C  4B E3 A6 51 */	bl mDemo_Get_OrderValue
/* 8055DE30  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8055DE34  41 82 00 34 */	beq lbl_8055DE68
/* 8055DE38  4B E6 18 71 */	bl func_803BF6A8
/* 8055DE3C  4B E6 2E 5D */	bl mMsg_Check_MainNormalContinue
/* 8055DE40  2C 03 00 01 */	cmpwi r3, 1
/* 8055DE44  40 82 00 24 */	bne lbl_8055DE68
/* 8055DE48  38 60 00 04 */	li r3, 4
/* 8055DE4C  38 80 00 09 */	li r4, 9
/* 8055DE50  38 A0 00 00 */	li r5, 0
/* 8055DE54  4B E3 A5 E5 */	bl mDemo_Set_OrderValue
/* 8055DE58  7F C3 F3 78 */	mr r3, r30
/* 8055DE5C  7F E4 FB 78 */	mr r4, r31
/* 8055DE60  38 A0 00 35 */	li r5, 0x35
/* 8055DE64  48 00 0F 6D */	bl aNSC_setupAction
lbl_8055DE68:
/* 8055DE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055DE70  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055DE74  7C 08 03 A6 */	mtlr r0
/* 8055DE78  38 21 00 10 */	addi r1, r1, 0x10
/* 8055DE7C  4E 80 00 20 */	blr 
