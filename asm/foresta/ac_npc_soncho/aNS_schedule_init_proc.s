lbl_8057EF38:
/* 8057EF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EF3C  7C 08 02 A6 */	mflr r0
/* 8057EF40  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8057EF44  3C A0 80 58 */	lis r5, aNS_think_proc@ha /* 0x8057EEF8@ha */
/* 8057EF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EF4C  38 05 EE F8 */	addi r0, r5, aNS_think_proc@l /* 0x8057EEF8@l */
/* 8057EF50  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8057EF54  38 A0 00 09 */	li r5, 9
/* 8057EF58  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8057EF5C  3C E6 00 02 */	addis r7, r6, 2
/* 8057EF60  38 C0 00 00 */	li r6, 0
/* 8057EF64  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8057EF68  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8057EF6C  7D 89 03 A6 */	mtctr r12
/* 8057EF70  4E 80 04 21 */	bctrl 
/* 8057EF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EF78  7C 08 03 A6 */	mtlr r0
/* 8057EF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EF80  4E 80 00 20 */	blr 
