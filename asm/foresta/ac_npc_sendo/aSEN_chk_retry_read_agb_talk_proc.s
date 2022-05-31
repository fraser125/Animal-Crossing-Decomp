lbl_8057580C:
/* 8057580C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80575810  7C 08 02 A6 */	mflr r0
/* 80575814  90 01 00 24 */	stw r0, 0x24(r1)
/* 80575818  39 61 00 20 */	addi r11, r1, 0x20
/* 8057581C  4B B2 56 B9 */	bl func_8009AED4
/* 80575820  7C 7D 1B 78 */	mr r29, r3
/* 80575824  4B E4 9E 85 */	bl func_803BF6A8
/* 80575828  7C 60 1B 78 */	mr r0, r3
/* 8057582C  38 60 00 04 */	li r3, 4
/* 80575830  7C 1F 03 78 */	mr r31, r0
/* 80575834  38 80 00 09 */	li r4, 9
/* 80575838  4B E2 2C 45 */	bl mDemo_Get_OrderValue
/* 8057583C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80575840  41 82 00 80 */	beq lbl_805758C0
/* 80575844  7F E3 FB 78 */	mr r3, r31
/* 80575848  4B E4 B4 51 */	bl mMsg_Check_MainNormalContinue
/* 8057584C  2C 03 00 01 */	cmpwi r3, 1
/* 80575850  40 82 00 70 */	bne lbl_805758C0
/* 80575854  3B C0 FF FF */	li r30, -1
/* 80575858  4B E0 DC E9 */	bl func_80383540
/* 8057585C  4B E0 E3 11 */	bl mChoice_Get_ChoseNum
/* 80575860  2C 03 00 01 */	cmpwi r3, 1
/* 80575864  41 82 00 2C */	beq lbl_80575890
/* 80575868  40 80 00 3C */	bge lbl_805758A4
/* 8057586C  2C 03 00 00 */	cmpwi r3, 0
/* 80575870  40 80 00 08 */	bge lbl_80575878
/* 80575874  48 00 00 30 */	b lbl_805758A4
lbl_80575878:
/* 80575878  38 60 00 04 */	li r3, 4
/* 8057587C  38 80 00 09 */	li r4, 9
/* 80575880  38 A0 00 00 */	li r5, 0
/* 80575884  4B E2 2B B5 */	bl mDemo_Set_OrderValue
/* 80575888  3B C0 00 00 */	li r30, 0
/* 8057588C  48 00 00 18 */	b lbl_805758A4
lbl_80575890:
/* 80575890  7F E3 FB 78 */	mr r3, r31
/* 80575894  3B C0 00 01 */	li r30, 1
/* 80575898  4B E4 B4 A9 */	bl mMsg_Set_LockContinue
/* 8057589C  38 00 00 01 */	li r0, 1
/* 805758A0  98 1D 09 96 */	stb r0, 0x996(r29)
lbl_805758A4:
/* 805758A4  2C 1E FF FF */	cmpwi r30, -1
/* 805758A8  41 82 00 18 */	beq lbl_805758C0
/* 805758AC  3C 80 80 6C */	lis r4, next_talk_idx_861@ha /* 0x806BF878@ha */
/* 805758B0  7F A3 EB 78 */	mr r3, r29
/* 805758B4  38 84 F8 78 */	addi r4, r4, next_talk_idx_861@l /* 0x806BF878@l */
/* 805758B8  7C 84 F0 AE */	lbzx r4, r4, r30
/* 805758BC  48 00 06 B1 */	bl aSEN_change_talk_proc
lbl_805758C0:
/* 805758C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805758C4  4B B2 56 5D */	bl func_8009AF20
/* 805758C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805758CC  7C 08 03 A6 */	mtlr r0
/* 805758D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805758D4  4E 80 00 20 */	blr 
