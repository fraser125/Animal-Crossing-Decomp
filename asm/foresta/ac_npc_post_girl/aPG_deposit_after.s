lbl_8056D354:
/* 8056D354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056D358  7C 08 02 A6 */	mflr r0
/* 8056D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056D364  7C 9F 23 78 */	mr r31, r4
/* 8056D368  93 C1 00 08 */	stw r30, 8(r1)
/* 8056D36C  7C 7E 1B 78 */	mr r30, r3
/* 8056D370  4B E5 23 39 */	bl func_803BF6A8
/* 8056D374  4B E5 39 25 */	bl mMsg_Check_MainNormalContinue
/* 8056D378  2C 03 00 01 */	cmpwi r3, 1
/* 8056D37C  40 82 00 1C */	bne lbl_8056D398
/* 8056D380  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056D384  7F C3 F3 78 */	mr r3, r30
/* 8056D388  7F E4 FB 78 */	mr r4, r31
/* 8056D38C  38 A0 00 00 */	li r5, 0
/* 8056D390  7D 89 03 A6 */	mtctr r12
/* 8056D394  4E 80 04 21 */	bctrl 
lbl_8056D398:
/* 8056D398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056D39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056D3A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056D3A4  7C 08 03 A6 */	mtlr r0
/* 8056D3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056D3AC  4E 80 00 20 */	blr 
