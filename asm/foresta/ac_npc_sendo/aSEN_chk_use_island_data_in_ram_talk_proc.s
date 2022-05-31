lbl_805758D8:
/* 805758D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805758DC  7C 08 02 A6 */	mflr r0
/* 805758E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805758E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805758E8  4B B2 55 ED */	bl func_8009AED4
/* 805758EC  7C 7D 1B 78 */	mr r29, r3
/* 805758F0  4B E4 9D B9 */	bl func_803BF6A8
/* 805758F4  7C 60 1B 78 */	mr r0, r3
/* 805758F8  38 60 00 04 */	li r3, 4
/* 805758FC  7C 1F 03 78 */	mr r31, r0
/* 80575900  38 80 00 09 */	li r4, 9
/* 80575904  4B E2 2B 79 */	bl mDemo_Get_OrderValue
/* 80575908  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057590C  41 82 00 80 */	beq lbl_8057598C
/* 80575910  7F E3 FB 78 */	mr r3, r31
/* 80575914  4B E4 B3 85 */	bl mMsg_Check_MainNormalContinue
/* 80575918  2C 03 00 01 */	cmpwi r3, 1
/* 8057591C  40 82 00 70 */	bne lbl_8057598C
/* 80575920  3B C0 FF FF */	li r30, -1
/* 80575924  4B E0 DC 1D */	bl func_80383540
/* 80575928  4B E0 E2 45 */	bl mChoice_Get_ChoseNum
/* 8057592C  2C 03 00 01 */	cmpwi r3, 1
/* 80575930  41 82 00 2C */	beq lbl_8057595C
/* 80575934  40 80 00 3C */	bge lbl_80575970
/* 80575938  2C 03 00 00 */	cmpwi r3, 0
/* 8057593C  40 80 00 08 */	bge lbl_80575944
/* 80575940  48 00 00 30 */	b lbl_80575970
lbl_80575944:
/* 80575944  7F E3 FB 78 */	mr r3, r31
/* 80575948  3B C0 00 00 */	li r30, 0
/* 8057594C  4B E4 B3 F5 */	bl mMsg_Set_LockContinue
/* 80575950  38 00 00 01 */	li r0, 1
/* 80575954  98 1D 09 96 */	stb r0, 0x996(r29)
/* 80575958  48 00 00 18 */	b lbl_80575970
lbl_8057595C:
/* 8057595C  38 60 00 04 */	li r3, 4
/* 80575960  38 80 00 09 */	li r4, 9
/* 80575964  38 A0 00 00 */	li r5, 0
/* 80575968  4B E2 2A D1 */	bl mDemo_Set_OrderValue
/* 8057596C  3B C0 00 01 */	li r30, 1
lbl_80575970:
/* 80575970  2C 1E FF FF */	cmpwi r30, -1
/* 80575974  41 82 00 18 */	beq lbl_8057598C
/* 80575978  3C 80 80 6C */	lis r4, next_talk_idx_874@ha /* 0x806BF87C@ha */
/* 8057597C  7F A3 EB 78 */	mr r3, r29
/* 80575980  38 84 F8 7C */	addi r4, r4, next_talk_idx_874@l /* 0x806BF87C@l */
/* 80575984  7C 84 F0 AE */	lbzx r4, r4, r30
/* 80575988  48 00 05 E5 */	bl aSEN_change_talk_proc
lbl_8057598C:
/* 8057598C  39 61 00 20 */	addi r11, r1, 0x20
/* 80575990  4B B2 55 91 */	bl func_8009AF20
/* 80575994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80575998  7C 08 03 A6 */	mtlr r0
/* 8057599C  38 21 00 20 */	addi r1, r1, 0x20
/* 805759A0  4E 80 00 20 */	blr 
